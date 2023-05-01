/*
 * main.c
 *
 *  Created on: Dec 17, 2018
 *      Author: Localization Tester
 *
 */

#include <stdio.h>
#include <stdbool.h>
#include <time.h>
#include <string.h>

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

//--------------------------------------------------------------
// main
//--------------------------------------------------------------
int main(int argc, char* argv[])
{
	/*--- init application interface, query resources on local server and login to get valid handles */
	printf("\n");
	printf("Performing API initialization and local resource login..\n");
	if (MyFdxInit())
	{
		printf("API initialized, Login successful\n");
		//--- reset
		printf("\nPerforming board-reset and syncronizing IRIG to PC-Time...\n");
		MyFdxResetBoard();
		printf("\nPerforming port-resets...\n");
		MyFdxResetPort();
		printf("Press Any key to continue\n");
		getchar();
		//--- setup
		printf("\nPerforming Tranmitter setup on Port 1...\n");
		MyFdxSetupTxPort();
		printf("\nPerforming Receiver setup on Port 2...\n");
		MyFdxSetupRxPort();
		//--- Start Receiver
		printf("\nPerforming Receiver startup...\n");
		MyFdxStartRx();
		//--- Start Transmitter
		printf("\nPerforming Transmitter startup...\n");
		MyFdxStartTx();
	}
	else
	{
		printf("API Open Failure!!!\n");
	}
	MyFdxGetStatus();
return 0;
}

// function definition

//--------------------------------------------------------------
// MyFdxInit - returns true on success
//--------------------------------------------------------------
// Init the application interface and
// gets the global handles to local resources
//--------------------------------------------------------------
bool MyFdxInit()
{
	DWORD dwTmp;
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
// MyFdxResetBoard
//--------------------------------------------------------------
void MyFdxResetBoard()
{
	int i;
	AiUInt32 ul_Mode;
	time_t loc_time;
	struct tm * ptm;
	TY_FDX_BOARD_CTRL_IN x_BoardCtrlIn;
	TY_FDX_BOARD_CTRL_OUT x_BoardCtrlOut;
	TY_FDX_IRIG_TIME x_IrigTime;
	memset(&x_IrigTime, 0, sizeof(x_IrigTime));
	memset(&x_BoardCtrlIn, 0, sizeof(x_BoardCtrlIn));
	memset(&x_BoardCtrlOut, 0, sizeof(x_BoardCtrlOut));
	if (g_ulBoardHandle > 0)
	{
		//--- init input structure
		for (i=0; i<FDX_MAX_BOARD_PORTS; i++)
		{
			x_BoardCtrlIn.aul_PortConfig[i] = FDX_SINGLE;
			x_BoardCtrlIn.aul_ExpertMode[i] = FDX_EXPERT_MODE; }
			x_BoardCtrlIn.ul_RxVeriMode = FDX_BOARD_VERIFICATION_TYPE_DEFAULT;
			//--- reset board
			if (FDX_OK != (FdxCmdBoardControl(g_ulBoardHandle, FDX_WRITE, &x_BoardCtrlIn, &x_BoardCtrlOut)))
				for (i=0; i<FDX_MAX_BOARD_PORTS; i++)
				{
					x_BoardCtrlIn.aul_PortConfig[i] = FDX_SINGLE;
					x_BoardCtrlIn.aul_ExpertMode[i] = FDX_EXPERT_MODE;
				}
			x_BoardCtrlIn.ul_RxVeriMode = FDX_BOARD_VERIFICATION_TYPE_DEFAULT;
			//--- reset board
			if (FDX_OK != (FdxCmdBoardControl(g_ulBoardHandle, FDX_WRITE, &x_BoardCtrlIn, &x_BoardCtrlOut)))
			{
				printf("Board Reset Failure!!!\n");
			}
			else
			{
				printf("Board Initialized\n");
			}
			//--- sync board-internal irigtime-source with PC-time
			loc_time = time(NULL);
			ptm = localtime(&loc_time);
			if (ptm != NULL)
			{
				x_IrigTime.ul_Day = ptm->tm_yday + 1; /* tm.YearOfDay is ZeroBased but we are OneBased */
				x_IrigTime.ul_Hour = ptm->tm_hour;
				x_IrigTime.ul_Min = ptm->tm_min;
				x_IrigTime.ul_Second = ptm->tm_sec;
				x_IrigTime.ul_MilliSec = 0;
				x_IrigTime.ul_MicroSec = 0;
				if (FDX_OK != (FdxCmdIrigTimeControl(g_ulBoardHandle, FDX_IRIG_WRITE, &x_IrigTime, &ul_Mode)))
				{
					printf("IRIG sync failure!!!\n");
				}
			else
			{
				printf("IRIG sync successful\n");
			}
		}
	}
}

//--------------------------------------------------------------
// MyFdxResetPort
//--------------------------------------------------------------
void MyFdxResetPort()
{
	TY_FDX_PORT_INIT_IN x_PortInitIn;
	TY_FDX_PORT_INIT_OUT x_PortInitOut;
	if (g_ulPort1Handle > 0)
	{
		x_PortInitIn.ul_PortMap = 1;
		if (FDX_OK != (FdxCmdTxPortInit(g_ulPort1Handle, &x_PortInitIn, &x_PortInitOut)))
		{
			printf("Port 1 Reset failure!!!\n");
		}
		else
		{
			printf("Port 1 Transmitter Initialized\n");
		}
	}

	if (g_ulPort2Handle > 0)
	{
		x_PortInitIn.ul_PortMap = 2;
		if (FDX_ERR == FdxCmdRxPortInit(g_ulPort2Handle, &x_PortInitIn, &x_PortInitOut))
		{
			printf("Port 2 Reset failure!!!\n");
		}
		else
		{
			printf("Port 2 Receiver Initialized\n");
		}
	}
}

//--------------------------------------------------------------
// MyFdxSetupTxPort
//--------------------------------------------------------------
void MyFdxSetupTxPort()
{
	TY_FDX_TX_MODE_CTRL x_TxModeCtrl;
	TY_FDX_TRANSMIT_VL x_TxVL;
	TY_FDX_UDP_DESCRIPTION x_UdpDesc;
	AiUInt32 ul_BytesWritten;
	AiUInt32 uiBufLen;
	char Buf[512];

	//--- mode control -> individual/UDP-Port oriented
	x_TxModeCtrl.ul_TransmitMode = FDX_TX_INDIVIDUAL;

	if (FDX_OK != (FdxCmdTxModeControl(g_ulPort1Handle, &x_TxModeCtrl)))
	{
		printf("Port 1 Mode Control Failure!!!\n");
	}
	else
	{
		printf("Port 1 set to individual/UDP-oriented Transmit mode\n");
	}

	//--- create vl, define communication parameters for VL 60 or Port 1
	x_TxVL.ul_Bag = DEF_BAG; //Bag
	x_TxVL.ul_MACSourceLSLW = DEF_SRC_MAC_LSLW; //MAC Source
	x_TxVL.ul_MACSourceMSLW = DEF_SRC_MAC_MSLW; //MAC Source
	x_TxVL.ul_MaxFrameLength= DEF_FRAME_MAXLENGTH;//Maximum Frame Length
	x_TxVL.ul_SubVls = DEF_SUB_VLCNT; // # of Sub VLs
	x_TxVL.ul_VlId = DEF_VL; // VL
	x_TxVL.ul_FrameBufferSize = 0;
	if (FDX_OK != (FdxCmdTxCreateVL(g_ulPort1Handle, &x_TxVL)))
	{
		printf("VL Creation on Port 1 failed!!!\n");
	}
	else
	{
		printf("VL 60 Created on Port 1\n");
	}

	//--- create udp-port 1 for write on Port 1
	x_UdpDesc.ul_PortType = FDX_UDP_SAMPLING;
	x_UdpDesc.x_Quint.ul_IpDst = DEF_DST_IP;
	x_UdpDesc.x_Quint.ul_IpSrc = DEF_SRC_IP;
	x_UdpDesc.x_Quint.ul_UdpDst = DEF_DST_UDP1;
	x_UdpDesc.x_Quint.ul_UdpSrc = DEF_SRC_UDP1;
	x_UdpDesc.x_Quint.ul_VlId = DEF_VL;
	x_UdpDesc.ul_SubVlId = DEF_SUB_VLID1;
	x_UdpDesc.ul_UdpNumBufMessages= 1; // 0=default
	x_UdpDesc.ul_UdpMaxMessageSize= DEF_UDP_MAXMSG;
	x_UdpDesc.ul_UdpSamplingRate = DEF_UDP_SAMPLING_RATE;
	if (FDX_OK != (FdxCmdTxUDPCreatePort(g_ulPort1Handle, &x_UdpDesc, &g_pUdp1Port1Handle)))
	{
		printf("UDP Port Creation Failure on Port 1!!!\n");
	}
	else
	{
		printf("Tx UDP Port Created on Port 1 -- VL:%d UDP Port:%d\n", DEF_VL, DEF_SRC_UDP1);
	}

	//--- create udp-port 2 for write on Port 1
	x_UdpDesc.ul_PortType = FDX_UDP_SAMPLING;
	x_UdpDesc.x_Quint.ul_IpDst = DEF_DST_IP;
	x_UdpDesc.x_Quint.ul_IpSrc = DEF_SRC_IP;
	x_UdpDesc.x_Quint.ul_UdpDst = DEF_DST_UDP2;
	x_UdpDesc.x_Quint.ul_UdpSrc = DEF_SRC_UDP2;
	x_UdpDesc.x_Quint.ul_VlId = DEF_VL;
	x_UdpDesc.ul_SubVlId = DEF_SUB_VLID2;
	x_UdpDesc.ul_UdpNumBufMessages= 1; // 0=default
	x_UdpDesc.ul_UdpMaxMessageSize= DEF_UDP_MAXMSG;
	x_UdpDesc.ul_UdpSamplingRate = DEF_UDP_SAMPLING_RATE;

	if (FDX_OK != (FdxCmdTxUDPCreatePort(g_ulPort1Handle, &x_UdpDesc, &g_pUdp2Port1Handle)))
	{
		printf("UDP Port Creation Failure on Port 1!!!\n");
	}
	else
	{
		printf("Tx UDP Port Created on Port 1 -- VL:%d UDP Port:%d\n", DEF_VL, DEF_SRC_UDP2);
	}

	//Write message to UDP Tx Port
	if (g_pUdp1Port1Handle != NULL) {
		sprintf(Buf, "Testing UDP Port");
		uiBufLen = (AiUInt32)strlen(Buf);
		if (FDX_OK != (FdxCmdTxUDPWrite(g_ulPort1Handle, g_pUdp1Port1Handle, uiBufLen,(const void *) Buf, &ul_BytesWritten))) {
		printf("UDP Transmit Port Write failure!!!\n");
		}
		else
		{
			printf("%d bytes written to UDP Port -- VL:%d UPD Port:%d\n", ul_BytesWritten,DEF_VL, DEF_SRC_UDP1);
		}
		}
		//Write message to UDP Tx Port
		if (g_pUdp2Port1Handle != NULL) {
		sprintf(Buf, "Testing UDP Port");
		uiBufLen = (AiUInt32)strlen(Buf);
		if (FDX_OK != (FdxCmdTxUDPWrite(g_ulPort1Handle, g_pUdp2Port1Handle, uiBufLen, (const void *) Buf, &ul_BytesWritten))) {
		printf("UDP Transmit Port Write failure!!!\n");
		}
		else {
		printf("%d bytes written to UDP Port -- VL:%d UDP Port:%d\n", ul_BytesWritten, DEF_VL, DEF_SRC_UDP2);
		}
	}
}

//--------------------------------------------------------------
// MyFdxSetupRxPort
//--------------------------------------------------------------
void MyFdxSetupRxPort()
{
	TY_FDX_RX_MODE_CTRL_IN x_ModeCtrlIn;
	TY_FDX_RX_MODE_CTRL_OUT x_ModeCtrlOut;
	TY_FDX_RX_VL_CTRL x_VLControl;
	TY_FDX_RX_VL_DESCRIPTION x_VLDesc;
	TY_FDX_UDP_DESCRIPTION x_UdpDesc;
	// initialize structures
	memset(&x_VLControl,0,sizeof(TY_FDX_RX_VL_CTRL));
	memset(&x_VLDesc,0,sizeof(TY_FDX_RX_VL_DESCRIPTION));
	//--- mode control -> select VL-Oriented receive
	x_ModeCtrlIn.ul_ReceiveMode = FDX_RX_VL;
	if (FDX_OK != (FdxCmdRxModeControl(g_ulPort2Handle, &x_ModeCtrlIn, &x_ModeCtrlOut))) {
		printf("Port 2 Mode Control Failure!!!\n");
	}
	else
	{
		printf("Port 2 set to VL/UDP-oriented Receive mode\n");
	}

	//--- VL control (per VL which we want to watch)
	x_VLControl.ul_VLId = DEF_VL;
	x_VLControl.ul_VLRange = 1;
	x_VLControl.ul_EnableMode = FDX_RX_VL_ENA_EXT;
	x_VLControl.ul_PayloadMode = FDX_PAYLOAD_FULL;
	x_VLControl.ul_TCBIndex = 0;
	x_VLDesc.ul_VerificationMode = FDX_RX_VL_CHECK_DISA;
	x_VLDesc.ul_VLBufSize = 0x8000;
	if (FDX_OK != (FdxCmdRxVLControl(g_ulPort2Handle, &x_VLControl, &x_VLDesc)))
	{
		printf("Receive VL Control Failure!!!\n");
	}
	else
	{
		printf("VL:%d Enabled for Capturing on Port 2\n", DEF_VL);
	}
	//--- create udp-port for read
	x_UdpDesc.ul_PortType = FDX_UDP_SAMPLING;
	x_UdpDesc.x_Quint.ul_IpDst = DEF_DST_IP;
	x_UdpDesc.x_Quint.ul_IpSrc = DEF_SRC_IP;
	x_UdpDesc.x_Quint.ul_UdpDst = DEF_DST_UDP1;
	x_UdpDesc.x_Quint.ul_UdpSrc = DEF_SRC_UDP1;
	x_UdpDesc.x_Quint.ul_VlId = DEF_VL;
	x_UdpDesc.ul_UdpNumBufMessages= 1; // 0=default
	x_UdpDesc.ul_UdpMaxMessageSize= DEF_UDP_MAXMSG;
	if (FDX_OK != FdxCmdRxUDPCreatePort(g_ulPort2Handle, &x_UdpDesc, &g_pUdp1Port2Handle))
	{
		printf("Receive UDP Port Creation Failure!!!n");
	}
	else
	{
		printf("Rx UDP Port Created on Port 2 -- VL:%d UDP Port:%d\n", DEF_VL, DEF_DST_UDP1);
	}
}

//--------------------------------------------------------------
// MyFdxStartTx
//--------------------------------------------------------------
void MyFdxStartTx()
{
	TY_FDX_TX_CTRL x_TxControl;
	x_TxControl.ul_Count = 0;
	x_TxControl.e_StartMode = FDX_START;
	if (g_ulPort1Handle != NULL)
	{
		if (FDX_OK != (FdxCmdTxControl(g_ulPort1Handle, &x_TxControl)))
		{
			printf("Failure to start transmitter\n");
		}
		else
		{
			printf("Transmitter started\n");
		}
	}
}

//--------------------------------------------------------------
// MyFdxReceive
//--------------------------------------------------------------
void MyFdxStartRx()
{
	TY_FDX_RX_CTRL x_RxControl;
	if (g_ulPort2Handle != NULL)
	{
		x_RxControl.ul_StartMode = FDX_START;
		x_RxControl.ul_GlobalStatisticReset = FDX_RX_GS_RES_ALL_CNT;

		if (FDX_OK != (FdxCmdRxControl(g_ulPort2Handle, &x_RxControl)))
		{
			printf("Failure to start Receiver!!!\n");
		}
		else
		{
			printf("Receiver Started\n");
		}
	}
}

//---------------------------------------------------------------
// MyFdxStopTx
//---------------------------------------------------------------
void MyFdxStopTx()
{
	TY_FDX_TX_CTRL x_TxControl;

	x_TxControl.ul_Count = 0;
	x_TxControl.e_StartMode = FDX_STOP;

	if (FDX_ERR == FdxCmdTxControl(g_ulPort1Handle, &x_TxControl))
	{
		printf("FdxCmdTxControl Error");
	}
}

//---------------------------------------------------------------
// MyFdxStopRx
//---------------------------------------------------------------
void MyFdxStopRx()
{
	TY_FDX_RX_CTRL x_RxControl;

	x_RxControl.ul_StartMode = FDX_STOP;
	x_RxControl.ul_GlobalStatisticReset = FDX_RX_GS_RES_ALL_CNT;

	if (FDX_OK != (FdxCmdRxControl(g_ulPort2Handle, &x_RxControl)))
	{
		printf("FdxCmdRxControl Error");
	}
}

//---------------------------------------------------------------
// MyFdxGetStatus
//---------------------------------------------------------------
void MyFdxGetStatus()
{
	char l_command[10];
	bool l_continue = TRUE;
	TY_FDX_TX_STATUS x_TxStatus;
	TY_FDX_TX_UDP_STATUS x_UdpTxStatus;
	TY_FDX_RX_STATUS x_RxStatus;
	TY_FDX_RX_UDP_STATUS x_UdpRxStatus;
	AiUInt32 ul_Control;
	TY_FDX_RX_GLOB_STAT x_GlobalStatisticA, x_GlobalStatisticB;
	while (l_continue == TRUE)
	{
		printf("\r\n '1' Get Transmitter Status\n");
		printf(" '2' Get Receiver Status\n");
		printf(" 'x' Exit\n");
		printf("Select a Command: ");
		scanf("%s", l_command);
		switch (l_command[0])
		{
		case '1':
			{
				// Retrieve Transmitter Status
				printf("\nTransmitter Status:\n");
				if (FDX_OK != (FdxCmdTxStatus(g_ulPort1Handle, &x_TxStatus)))
				{
					printf("FdxCmdTxStatus Error\n");
				}
				printf("Port 1 Status: ");
				switch (x_TxStatus.e_Status)
				{
				case FDX_STAT_STOP:
					printf("Stopped\n");
					break;
				case FDX_STAT_RUN:
					printf("Running\n");
					break;
				case FDX_STAT_ERROR:
					printf("Error\n");
				}

				if (FDX_OK != (FdxCmdTxUDPGetStatus(g_ulPort1Handle,g_pUdp1Port1Handle, &x_UdpTxStatus)))
				{
					printf("FdxCmdTxUDPGetStatus Error\n");
				}
				printf("UDP Message count(VL:%d UDP Port:%d): %d\n", DEF_VL,DEF_SRC_UDP1, x_UdpTxStatus.ul_MsgCount);
				if (FDX_OK != (FdxCmdTxUDPGetStatus(g_ulPort1Handle,g_pUdp2Port1Handle, &x_UdpTxStatus)))
				{
					printf("FdxCmdTxUDPGetStatus Error\n");
				}
				printf("UDP Message count(VL:%d UDP Port:%d): %d\n", DEF_VL,DEF_SRC_UDP2, x_UdpTxStatus.ul_MsgCount);
				break;
			}
		case '2':
			{
				// Retrieve Receiver Status
				printf("\nReceiver Status:\n");
				if (FDX_OK != (FdxCmdRxStatus(g_ulPort2Handle, &x_RxStatus)))
				{
					printf("FdxCmdRxStatus Error\n");
				}
				printf("Port 2 Status: ");
				switch (x_RxStatus.ul_Status)
				{
				case FDX_STAT_STOP:
					printf("Stopped\n");
					break;
				case FDX_STAT_RUN:
					printf("Running\n");
					break;
				case FDX_STAT_ERROR:
					printf("Error\n");
					break;
				}

				ul_Control = FDX_RX_GS_RES_NO_CNT;
				if (FDX_OK != (FdxCmdRxGlobalStatistics(g_ulPort2Handle,ul_Control, &x_GlobalStatisticA, &x_GlobalStatisticB)))
				{
					printf("\nFdxCmdRxGlobalStatistics Error");
				}
				printf("Port 2 Global Statistics:\n");
				printf("Good Frame Count: %d\n",x_GlobalStatisticA.ul_FrameGoodCount);
				printf("Bad Frame Count: %d\n",x_GlobalStatisticA.ul_FrameErrorCount);

				//--- Get VL Activity
				MyFdxGetVLActivity();

				//--- Get UDP port Status
				if (FDX_OK != (FdxCmdRxUDPGetStatus(g_ulPort2Handle,g_pUdp1Port2Handle, &x_UdpRxStatus)))
				{
					printf("FdxCmdRxUDPGetStatus Error");
				}
				printf("UDP Port 1 Message Count: %d\n", x_UdpRxStatus.ul_MsgCount);
				printf("UDP Port 1 Error Count: %d\n", x_UdpRxStatus.ul_MsgErrorCount);

				//--- Get UDP port Status
				if (FDX_OK != (FdxCmdRxUDPGetStatus(g_ulPort2Handle,g_pUdp2Port2Handle, &x_UdpRxStatus)))
				{
					printf("FdxCmdRxUDPGetStatus Error");
				}
				printf("UDP Port 2 Message Count: %d\n", x_UdpRxStatus.ul_MsgCount);
				printf("UDP Port 2 Error Count: %d\n", x_UdpRxStatus.ul_MsgErrorCount);

				break;
			}
		case 'x':
			{
				//Exit Application
				//--- Stop Tx/Rx, logout, and free handles
				MyFdxStopTx();
				MyFdxStopRx();
				MyFdxFreeResources();
				l_continue = FALSE;
				break;
			}
		default:
			;
		}
	}
}

//---------------------------------------------------------------
// MyFdxGetVLActivity
//---------------------------------------------------------------
void MyFdxGetVLActivity()
{
	TY_FDX_RX_VL_ACTIVITY_IN x_VLActivityIn;
	TY_FDX_RX_VL_ACTIVITY_OUT x_VLActivityOut;
	TY_FDX_RX_VL_ACTIVITY * px_VLActivity;
	x_VLActivityIn.ul_Mode = FDX_RX_VL_ACT_ALL;
	x_VLActivityIn.ul_MaxReadBytes = 10*sizeof(TY_FDX_RX_VL_ACTIVITY);
	x_VLActivityOut.pax_VLActivity = (TY_FDX_RX_VL_ACTIVITY*)malloc(10*sizeof(TY_FDX_RX_VL_ACTIVITY));
	if (FDX_OK != (FdxCmdRxVLGetActivity(g_ulPort2Handle, &x_VLActivityIn,&x_VLActivityOut)))
	{
		printf("\nFdxCmdRxVLGetActivity Error");
	}

	printf("Number of Active VLs: %d\n", x_VLActivityOut.ul_NumOfActivVL);
	px_VLActivity = x_VLActivityOut.pax_VLActivity;

	AiUInt32 i;
	for (i=1; (i <= x_VLActivityOut.ul_NumOfActivVL); i++)
	{
		printf("VLid:%d Frame Count:%d\n",px_VLActivity->ul_VLIdent,px_VLActivity->ul_FrameCountA);
		px_VLActivity++;
	}
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
		if (g_ulPort1Handle != 0)
		{
			if (g_pUdp1Port1Handle != NULL)
			{
					if (FDX_ERR == FdxCmdTxUDPDestroyPort(g_ulPort1Handle, g_pUdp1Port1Handle))
					{
						printf("FdxCmdTxUDPDestroyPort Error 1");
					}
			}
			if (g_pUdp2Port1Handle != NULL)
			{
				if (FDX_ERR == FdxCmdTxUDPDestroyPort(g_ulPort1Handle, g_pUdp2Port1Handle))
				{
					printf("FdxCmdTxUDPDestroyPort Error 1");
				}
			}
			if (FDX_ERR == FdxLogout(g_ulPort1Handle))
			{
				printf("FdxLogout Error 1");
			}
		}
		if (g_ulPort2Handle != 0)
		{
			if (g_pUdp1Port2Handle != NULL)
			{
				if (FDX_ERR == FdxCmdRxUDPDestroyPort(g_ulPort2Handle, g_pUdp1Port2Handle))
				{
					printf("FdxCmdRxUDPDestroyPort Error 2");
				}
			}
			if (g_pUdp2Port2Handle != NULL)
			{
				if (FDX_ERR == FdxCmdRxUDPDestroyPort(g_ulPort2Handle, g_pUdp2Port2Handle))
				{
					printf("FdxCmdRxUDPDestroyPort Error 2");
				}
			}
			if (FDX_ERR == FdxLogout(g_ulPort2Handle))
			{
				printf("FdxLogout Error 2");
			}
		}
	}
}


