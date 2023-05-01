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
AiUInt32 g_ulQueueId = 0;
char g_stop;

int main(int argc, char **argv) {

	/*--- init application interface, query resources on local server and login to get valid handles */
	printf("\n");
	printf("Performing API initialization and local resource login..\n");
	if (MyFdxInit())
	{
		printf("API initialized, Login successful\n");

		//--- reset
		printf("\nPerforming board-reset and synchronizing IRIG to PC-Time...\n");
		MyFdxResetBoard();

		printf("\nPerforming port-resets...\n");
		MyFdxResetPort();

		printf("Press Any key to continue\n");
		getchar();

		//--- setup
		printf("\nPerforming Receiver setup on Port 2...\n");
		MyFdxSetupRxPort();

		//--- Start Receiver
		printf("\nPerforming Receiver startup...\n");
		MyFdxStartRx();

	}
	else
	{
	printf("API Open Failure!!!\n");
	}

	// Monitor status
	MyFdxGetStatus();

	printf("Press Any key to terminate the program\n");
	getchar();

	/* use as last function to free the resource list, the device list and the server list */
	if (FDX_OK != FdxExit())
		printf("\r\n FdxExit() FAIL");

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
					printf("disabled login on port 1\n");
					g_ulPort1Handle = 999;
//					if (FdxLogin("local", &x_ClientInfo, pRLE->ul_ResourceID, PRIVILEGES_ADMIN, &g_ulPort1Handle) != FDX_OK)
//					{
//						g_ulPort1Handle = 0;
//						printf("Port 1 Login Failure!!!\n");
//					}
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
	//bRetSuccess = (g_ulBoardHandle != 0) && (g_ulPort1Handle != 0) && (g_ulPort2Handle != 0);
	bRetSuccess = (g_ulBoardHandle != 0) && (g_ulPort2Handle != 0);

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
		memset(&x_IrigTime, 0, sizeof(x_IrigTime));

		if (ptm != NULL)
		{
			x_IrigTime.ul_Day = ptm->tm_yday + 1; // tm.YearOfDay is ZeroBased but we are OneBased
			x_IrigTime.ul_Hour = ptm->tm_hour;
			x_IrigTime.ul_Min = ptm->tm_min;
			x_IrigTime.ul_Second = ptm->tm_sec;
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
// Disabled tx code
/*	if (g_ulPort1Handle > 0)
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
	}*/
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
// MyFdxSetupRxPort
//--------------------------------------------------------------
void MyFdxSetupRxPort()
{
	TY_FDX_RX_MODE_CTRL_IN x_ModeCtrlIn;
	TY_FDX_RX_MODE_CTRL_OUT x_ModeCtrlOut;
	TY_FDX_MON_CAP_MODE x_MonCapMode;
	TY_FDX_MON_QUEUE_CTRL_IN x_QueueCtrlIn;
	TY_FDX_MON_QUEUE_CTRL_OUT x_QueueCtrlOut;

	//--- mode control -> select Chrono Mode
	x_ModeCtrlIn.ul_ReceiveMode = FDX_RX_CHRONO;

	// allows to store the entire frame
	x_ModeCtrlIn.ul_DefaultPayloadMode = FDX_PAYLOAD_FULL;

	// capture all VL data
	x_ModeCtrlIn.ul_DefaultCronoMode = FDX_RX_DEFAULT_MON_ENA_ALL;
	x_ModeCtrlIn.ul_GlbMonBufferSize = 0; // if zero, a default value will be used

	if (FDX_OK != (FdxCmdRxModeControl(g_ulPort2Handle, &x_ModeCtrlIn, &x_ModeCtrlOut)))
	{
		printf("Port 2 Mode Control Failure!!!\n");
	}
	else
	{
		printf("Port 2 Set to Chrono Monitor Receive Mode\n");
		printf("Port 2 Global Mon Buffer Size: %d bytes\n", x_ModeCtrlOut.ul_GlbMonBufferSize);
	}

	//--- Monitor Capture Control
	x_MonCapMode.ul_CaptureMode = FDX_MON_CONTINUOUS;
	x_MonCapMode.ul_Strobe = FDX_MON_STROBE_DIS; //no strobe will be ouput on capture start or stop

	if (FDX_OK != (FdxCmdMonCaptureControl(g_ulPort2Handle, &x_MonCapMode)))
	{
		printf("Chrono Monitor Capture control failure!!!\n");
	}
	else
	{
		printf("Chrono Monitor Capture Mode set to Continuous\n");
	}
	//--- Create Monitor Queue
	x_QueueCtrlIn.ul_QueueControl = FDX_MON_QUEUE_CREATE;
	if (FDX_OK != (FdxCmdMonQueueControl(g_ulPort2Handle, &x_QueueCtrlIn, &x_QueueCtrlOut)))
	{
		printf("Monitor Queue Creation Failure!!!\n");
	}
	else
	{
		printf("Monitor Queue Created\n");
		g_ulQueueId = x_QueueCtrlOut.ul_QueueId;
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
	TY_FDX_RX_STATUS x_RxStatus;
	TY_FDX_E_MON_STATUS e_MonStatus;
	TY_FDX_MON_REC_STATUS x_MonRecStatus;
	AiUInt32 ul_Control;
	TY_FDX_RX_GLOB_STAT x_GlobalStatisticA, x_GlobalStatisticB;
	TY_FDX_MON_QUEUE_READ_IN x_QueueReadIn;
	TY_FDX_MON_QUEUE_READ_OUT x_QueueReadOut;
	AiUInt8 ReadBuffer[2000];

	TY_FDX_FRAME_BUFFER_HEADER* px_FrameBufferHeader;

	while (l_continue == TRUE)
	{
		// list of options
		printf("\r\n '1' Get Transmitter Status (not implemented)\n");
		printf(" '2' Get Receiver Status\n");
		printf(" '3' Read Frame from Monitor Queue\n");
		printf(" 'x' Exit\n");
		printf("Select a Command: ");

		scanf("%s", l_command);

		switch (l_command[0])
		{
		case '1':
			{
				printf("not implemented. Select another option.\n");
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
				// Retrieve statistics
				ul_Control = FDX_RX_GS_RES_NO_CNT;
				if (FDX_OK != (FdxCmdRxGlobalStatistics(g_ulPort2Handle,ul_Control, &x_GlobalStatisticA, &x_GlobalStatisticB)))
				{
					printf("\nFdxCmdRxGlobalStatistics Error");
				}

				printf("Port 2 Global Statistics:\n");
				printf("Good Frame Count: %d\n", x_GlobalStatisticA.ul_FrameGoodCount);
				printf("Bad Frame Count: %d\n", x_GlobalStatisticA.ul_FrameErrorCount);
				printf("Total Byte Count on Port: %d\n", x_GlobalStatisticA.ul_TotalByteCount);

				//--- Get VL Activity
				MyFdxGetVLActivity(); //Retrieve Frame count for the number of active VLs

				//--- Monitor Status
				if (FDX_OK != (FdxCmdMonGetStatus(g_ulPort2Handle, &e_MonStatus, &x_MonRecStatus)))
				{
					printf("\nFdxCmdMonGetStatus Error");
				}
				printf("Monitor Status: ");
				switch (e_MonStatus)
					{
						case FDX_MON_OFF:
							printf("Not Running\n");
							break;
						case FDX_MON_WAIT_FOR_TRIGGER:
							printf("Waiting for Start Trigger\n");
							break;
						case FDX_MON_TRIGGERED:
							printf("Monitor Triggered, Capturing Frames\n");
							break;
						case FDX_MON_STOPPED:
							printf("Stopped\n");
							break;
						case FDX_MON_FULL:
							printf("Monitor Buffer Full\n");
					}
				break;
			}
		case '3':
			{
				x_QueueReadIn.ul_EntryCount = 1;
				x_QueueReadIn.ul_ReadQualifier = FDX_MON_READ_FULL;
				x_QueueReadIn.ul_MaxReadBytes = sizeof(ReadBuffer);
				x_QueueReadOut.vpv_ReadBuffer = ReadBuffer;

				if (FDX_OK != FdxCmdMonQueueRead(g_ulPort2Handle, g_ulQueueId, &x_QueueReadIn, &x_QueueReadOut))
				{
					printf("FdxCmdMonQueueRead Error\n");
				}

				printf("Bytes Read: %d Frames Read: %d\n",x_QueueReadOut.ul_BytesRead, x_QueueReadOut.ul_EntryRead);
				printf("VL from MAC Addr: %d\n", ReadBuffer[41]);
				printf("ReadBuffer[78]: %04lx\n", ReadBuffer[78]);
				printf("ReadBuffer[79]: %04lx\n", ReadBuffer[79]);


				px_FrameBufferHeader = (TY_FDX_FRAME_BUFFER_HEADER*) x_QueueReadOut.vpv_ReadBuffer;

				printf("VlId: %d\n",px_FrameBufferHeader->x_FrameHeaderInfo.uw_VlId);
				printf("Sequence Num: %d\n",px_FrameBufferHeader->x_FrameHeaderInfo.uc_SequenceNr);

				break;
			}
		case 'x':
			{
				//Exit Application
				//--- Stop Rx, logout, and free handles
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
	if (FDX_OK != (FdxCmdRxVLGetActivity(g_ulPort2Handle, &x_VLActivityIn, &x_VLActivityOut)))
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
	TY_FDX_MON_QUEUE_CTRL_IN x_QueueCtrlIn;
	TY_FDX_MON_QUEUE_CTRL_OUT x_QueueCtrlOut;

	if (g_ulBoardHandle != 0)
	{
		if (FDX_ERR == FdxLogout(g_ulBoardHandle))
		{
			printf("FdxLogout Board Error");
		}
		else printf("FdxLogout Board Successful\n");
		if (g_ulPort2Handle != 0)
		{
			if (FDX_ERR == FdxLogout(g_ulPort2Handle))
			{
				printf("FdxLogout Error 2");
			}
			else printf("FdxLogout Port 2 Successful\n");
		}
	}
}


