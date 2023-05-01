/*
 * main.c
 *
 *  Created on: Dec 17, 2018
 *      Author: Localization Tester
 */

#include <stdio.h>
#include <stdbool.h>

// System defines
#define _AIM_LINUX
#include "AiFdx_def.h"

//--------------------------------------------------------------
// Defines
//--------------------------------------------------------------

// communication parameters
#define DEF_VL (60)
#define DEF_SUB_VLCNT (2)
#define DEF_SUB_VLID1 (1)
#define DEF_SUB_VLID2 (2)
#define DEF_SRC_MAC_LSLW (0x00012120)
#define DEF_SRC_MAC_MSLW (0x00000200)
#define DEF_SRC_IP (0x0a012101)
#define DEF_DST_IP (0xe0e0003c)
#define DEF_SRC_UDP1 (24)
#define DEF_DST_UDP1 (23)
#define DEF_SRC_UDP2 (33)
#define DEF_DST_UDP2 (34)
#define DEF_BAG (50)
#define DEF_FRAME_MAXLENGTH (1518)
#define DEF_UDP_MAXMSG (500)
#define DEF_UDP_SAMPLING_RATE (100)


//--------------------------------------------------------------
// Function-Declarations
//--------------------------------------------------------------
bool MyFdxInit();
void MyFdxFreeResources();
void MyFdxResetBoard();
void MyFdxResetPort();
void MyFdxSetupTxPort();
void MyFdxSetupRxPort();
void MyFdxStartTx();
void MyFdxStartRx();
void MyFdxStopTx();
void MyFdxStopRx();
void MyFdxGetStatus();
void MyFdxGetVLActivity();

//--------------------------------------------------------------
// Globals
//--------------------------------------------------------------
AiUInt32 g_ulBoardHandle = 0;
AiUInt32 g_ulPort1Handle = 0; // acts as Tx
AiUInt32 g_ulPort2Handle = 0; // acts as Rx
AiUInt32 g_pUdp1Port1Handle = 0;
AiUInt32 g_pUdp2Port1Handle = 0;
AiUInt32 g_pUdp1Port2Handle = 0;
AiUInt32 g_pUdp2Port2Handle = 0;
char g_stop;

int main(int argc, char **argv) {

	/*--- init application interface, query resources on local server and login to get valid handles */
	printf("\n");
	printf("Performing API initialization and local resource login..\n");
	if (MyFdxInit())
	{
		printf("API initialized, Login successful\n");

	}
	else
	{
	printf("API Open Failure!!!\n");
	}
	MyFdxFreeResources();
	printf("Program terminated correcly.\n");

	return 0;
}

// function definition

bool MyFdxInit()
{
	unsigned int dwTmp;
	bool bRetSuccess = false;
	bool bFoundLocalServer = false;
	TY_SERVER_LIST * px_ServerNames = NULL;
	TY_SERVER_LIST * px_TmpServer;
	TY_RESOURCE_LIST_ELEMENT * pRLE = NULL;
	TY_RESOURCE_LIST_ELEMENT * pRLEHead = NULL;
	TY_FDX_CLIENT_INFO x_ClientInfo;

	//--- init client-info
	sprintf(x_ClientInfo.ac_ClApplication, "AFDX-Sample Application");
	sprintf(x_ClientInfo.ac_ClApplicationVersion, "1.0");
	dwTmp = MAX_FDX_CLIENT_HOST_NAME;
	sprintf(x_ClientInfo.ac_ClHostName, "Pippo");
	dwTmp = MAX_FDX_CLIENT_USER_NAME;
	sprintf(x_ClientInfo.ac_ClUser, "Pluto");

	//--- application interface initialize
	// and get a list of available servers
	if (FdxInit(&px_ServerNames) != FDX_OK)
	{
		printf("API Open Failed!!!\n");
		// free the server-list
		if (px_ServerNames != NULL)
		{
			FdxCmdFreeMemory(px_ServerNames, px_ServerNames->ul_StructId);
		}
		return(bRetSuccess);
	}

	// search the server-list for local server
	px_TmpServer = px_ServerNames;
	while ((px_TmpServer != NULL) && (!bFoundLocalServer))
	{
		if (strcmp(px_TmpServer->auc_ServerName, "local") == 0)
		{
			bFoundLocalServer = true;
		}
		else
		{
			px_TmpServer = px_TmpServer->px_Next;
		}
	}

	if (bFoundLocalServer)
	{ // ok, we found a local server
		// lets query the configuration of this server
		if (FdxQueryServerConfig("local", &pRLEHead) == FDX_OK)
		{
		pRLE = pRLEHead;
		while (pRLE != NULL)
		{ //--- login to resources
		switch(pRLE->ul_ResourceType)
		{
			case RESOURCETYPE_BOARD:
				if (g_ulBoardHandle == 0)
				{
					if (FdxLogin("local", &x_ClientInfo, pRLE->ul_ResourceID, PRIVILEGES_ADMIN, &g_ulBoardHandle) != FDX_OK)
					{
						g_ulBoardHandle = 0;
						printf("Board Login Failure!!!\n");
					}
				}
			break;
			case RESOURCETYPE_PORT:
				if (g_ulPort1Handle == 0)
				{
					if (FdxLogin("local", &x_ClientInfo, pRLE->ul_ResourceID, PRIVILEGES_ADMIN, &g_ulPort1Handle) != FDX_OK)
					{
						g_ulPort1Handle = 0;
						printf("Port 1 Login Failure!!!\n");
					}
				}
				else if (g_ulPort2Handle == 0)
				{
					if (FdxLogin("local", &x_ClientInfo, pRLE->ul_ResourceID, PRIVILEGES_ADMIN, &g_ulPort2Handle) != FDX_OK)
					{
						g_ulPort2Handle = 0;
						printf("Port 2 Login Failure!!!\n");
					}
				}
			break;
			}
			pRLE = pRLE->px_Next;
			}
		}
	}
	// free the resource-list
	if (pRLEHead != NULL)
	{
		FdxCmdFreeMemory(pRLEHead, pRLEHead->ul_StructId);
	}
	// free the server-list
	if (px_ServerNames != NULL)
	{
		FdxCmdFreeMemory(px_ServerNames, px_ServerNames->ul_StructId);
	}
	// we define it as success if we have valid handles for all global variables....
	bRetSuccess = (g_ulBoardHandle != 0) && (g_ulPort1Handle != 0) && (g_ulPort2Handle != 0);
	return bRetSuccess;
}

//--------------------------------------------------------------
// MyFdxFreeResources
//--------------------------------------------------------------
void MyFdxFreeResources()
{
	if (g_ulBoardHandle != 0)
	{
		if (FDX_ERR == FdxLogout(g_ulBoardHandle))
		{
			printf("FdxLogout Board Error");
		}
		else printf("FdxLogout Board Successful\n");
		if (g_ulPort1Handle != 0)
		{
			if (g_pUdp1Port1Handle != NULL)
			{
				if (FDX_ERR == FdxCmdTxUDPDestroyPort(g_ulPort1Handle, g_pUdp1Port1Handle))
				{
					printf("FdxCmdTxUDPDestroyPort Error 1");
				}
				else printf("FdxCmdTxUDPDestroyPort 1 Successful\n");
			}
		if (g_pUdp2Port1Handle != NULL)
		{
			if (FDX_ERR == FdxCmdTxUDPDestroyPort(g_ulPort1Handle, g_pUdp2Port1Handle))
			{
				printf("FdxCmdTxUDPDestroyPort Error 1");
			}
			else printf("FdxCmdTxUDPDestroyPort 1 Successful\n");
		}
		if (FDX_ERR == FdxLogout(g_ulPort1Handle))
		{
			printf("FdxLogout Error 1");
		}
		else printf("FdxLogout Port 1 Successful\n");
		}
		if (g_ulPort2Handle != 0)
		{
			if (g_pUdp1Port2Handle != NULL)
			{
				if (FDX_ERR == FdxCmdRxUDPDestroyPort(g_ulPort2Handle, g_pUdp1Port2Handle))
				{
					printf("FdxCmdRxUDPDestroyPort Error 2");
				}
				else printf("FdxLogout Port 2 Successful\n");
			}
		if (g_pUdp2Port2Handle != NULL)
			{
			if (FDX_ERR == FdxCmdRxUDPDestroyPort(g_ulPort2Handle, g_pUdp2Port2Handle))
				{
				printf("FdxCmdRxUDPDestroyPort Error 2");
				}
			else printf("FdxCmdTxUDPDestroyPort 2 Successful\n");
			}
		if (FDX_ERR == FdxLogout(g_ulPort2Handle))
		{
		printf("FdxLogout Error 2");
		}
		else printf("FdxLogout Port 2 Successful\n");
		}
	}
}


