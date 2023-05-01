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

//--------------------------------------------------------------
// main
//--------------------------------------------------------------
int main(int argc, char* argv[])
	{
	/*--- init application interface, query resources on local server and login to get valid
	handles */
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
						else
							if (g_ulPort2Handle == 0)
							{
								if (FdxLogin("local",&x_ClientInfo,pRLE->ul_ResourceID, PRIVILEGES_ADMIN, &g_ulPort2Handle) != FDX_OK)
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
	if (g_ulBoardHandle > 0)
	{
		//--- init input structure
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
	TY_FDX_TX_QUEUE_SETUP x_TxQueueCreate;
	TY_FDX_TX_QUEUE_INFO x_TxQueueInfo;
	AiUInt8 Dt[100];

	struct my_Frame_tag
	{
		TY_FDX_TX_FRAME_HEADER x_Frame;
		AiUInt8 uc_Data[1000];
	} My_Frame;

	int i;

	//--- mode control -> Set TX port to Generic mode
	x_TxModeCtrl.ul_TransmitMode = FDX_TX_GENERIC;

	if (FDX_OK != (FdxCmdTxModeControl(g_ulPort1Handle, &x_TxModeCtrl)))
	{
		printf("Port 1 Mode Control Failure!!!\n");
	}
	else
	{
		printf("Port 1 set to Generic Transmit mode\n");
	}

	//--- Create Generic Tx Message Queue
	// 0 Creates a queue of default size.
	x_TxQueueCreate.ul_QueueSize = 0;
	if (FDX_OK != (FdxCmdTxQueueCreate(g_ulPort1Handle, &x_TxQueueCreate, &x_TxQueueInfo)))
	{
		printf("Message Queue Creation failure!!!\n");
	}
	else
	{
		printf("Message Queue Created\n");
	}

	//--- Create 2 Frames for the Tx Queue
	My_Frame.x_Frame.uc_FrameType = FDX_TX_FRAME_STD;
	My_Frame.x_Frame.x_FrameAttrib.uw_FrameSize = 64; //bytes (includes CRC)
	My_Frame.x_Frame.x_FrameAttrib.ul_InterFrameGap = 25; // 25=1usec; 1000=40usec;
	My_Frame.x_Frame.x_FrameAttrib.ul_PacketGroupWaitTime = 1000; // 1000=1msec; 0=0usec;
	My_Frame.x_Frame.x_FrameAttrib.uc_PayloadBufferMode = FDX_TX_FRAME_PBM_STD;
	My_Frame.x_Frame.x_FrameAttrib.uc_PayloadGenerationMode = FDX_TX_FRAME_PGM_USER;
	//no payload generation - all frame data defined by the user in this frame entry

	My_Frame.x_Frame.x_FrameAttrib.ul_BufferQueueHandle = 0; //used when payload buffer mode is not standard
	My_Frame.x_Frame.x_FrameAttrib.uc_ExternalStrobe = FDX_DIS;
	My_Frame.x_Frame.x_FrameAttrib.uc_PreambleCount = FDX_TX_FRAME_PRE_DEF;
	My_Frame.x_Frame.x_FrameAttrib.ul_Skew = 0; // usec, used only for redundant mode

	My_Frame.x_Frame.x_FrameAttrib.uc_NetSelect = FDX_TX_FRAME_BOTH; // used only for redundant mode
	My_Frame.x_Frame.x_FrameAttrib.uc_FrameStartMode = FDX_TX_FRAME_START_PGWT;
	My_Frame.x_Frame.x_FrameAttrib.ul_PhysErrorInjection = FDX_TX_FRAME_ERR_OFF;
	My_Frame.x_Frame.x_FrameAttrib.uw_SequenceNumberInit = FDX_TX_FRAME_SEQ_INIT_AUTO;
	My_Frame.x_Frame.x_FrameAttrib.uw_SequenceNumberOffset = FDX_TX_FRAME_SEQ_OFFS_AUTO;

	//--- Frame 1 --- VL 60
	for ( i = 0 ; i<1000; i++)
		My_Frame.uc_Data[i] = (unsigned char) i;

	//---MAC Dst= 0x03000000003c (VL 60)
	Dt[ 0]=0x03;Dt[ 1]=0x00;Dt[ 2]=0x00;Dt[ 3]=0x00;Dt[ 4]=0x00;Dt[ 5]=0x3c;

	//---MAC Src= 0x020000012120
	Dt[ 6]=0x02;Dt[ 7]=0x00;Dt[ 8]=0x00;Dt[ 9]=0x01;Dt[10]=0x21;Dt[11]=0x20;

	//---MAC Type/Length
	Dt[12]=0x08;Dt[13]=0x00;

	//---IP Header (Version/IHL, Type of service, Total length, Fragment ID, Time to live,
	// Protocol, Header Checksum)
	Dt[14]=0x45;Dt[15]=0x00;Dt[16]=0x00;Dt[17]=0x2d;Dt[18]=0x00;Dt[19]=0x00;Dt[20]=0x40;
	Dt[21]=0x00;Dt[22]=0x01;Dt[23]=0x11;Dt[24]=0x6d;Dt[25]=0xa2;

	//---IP Source Address 10.001.33.1
	Dt[26]=0x0a;Dt[27]=0x01;Dt[28]=0x21;Dt[29]=0x01;

	//---IP Destination Address 224.224.0.60 (VL 60)
	Dt[30]=0xe0;Dt[31]=0xe0;Dt[32]=0x00;Dt[33]=0x3C;

	//---UDP Source Port = 24
	Dt[34]=0x00;Dt[35]=0x18;

	//---UDP Dest Port = 23
	Dt[36]=0x00;Dt[37]=0x17;

	//---UDP Length = 25
	Dt[38]=0x00;Dt[39]=0x19;

	//---UDP Checksum
	Dt[40]=0x00;Dt[41]=0x00;

	//---AFDX Payload
	Dt[42]=0x41;Dt[43]=0x42;Dt[44]=0x43;Dt[45]=0x44;Dt[46]=0x45;
	Dt[47]=0x46;Dt[48]=0x47;Dt[49]=0x48;Dt[50]=0x49;Dt[51]=0x4a;
	Dt[52]=0x4b;Dt[53]=0x4c;Dt[54]=0x4d;Dt[55]=0x4e;Dt[56]=0x4f;
	Dt[57]=0x50;Dt[58]=0x51;

	for ( i = 0 ; i<59; i++)
		My_Frame.uc_Data[i] = (unsigned char) Dt[i];

	if (FDX_OK != (FdxCmdTxQueueWrite(g_ulPort1Handle, FDX_TX_FRAME_HEADER_GENERIC,1,sizeof(My_Frame),&My_Frame)))
	{
		printf("Write to Queue Failed!!!\n");
	}
	else
	{
		printf("Frame successfully written to Queue\n");
	}

	//--- Frame 2 --- VL 60
	for ( i = 0 ; i<1000; i++)
		My_Frame.uc_Data[i] = (unsigned char) i;

	//---MAC Dst= 0x03000000003c (VL 60)
	Dt[ 0]=0x03;Dt[ 1]=0x00;Dt[ 2]=0x00;Dt[ 3]=0x00;Dt[ 4]=0x00;Dt[ 5]=0x3c;

	//---MAC Src= 0x020000012120
	Dt[ 6]=0x02;Dt[ 7]=0x00;Dt[ 8]=0x00;Dt[ 9]=0x01;Dt[10]=0x21;Dt[11]=0x20;

	//---MAC Type/Length
	Dt[12]=0x08;Dt[13]=0x00;

	//---IP Header (Version, IHL, Type of service, Total length, Fragment ID, Time to live,
	// Protocol, Header Checksum)
	Dt[14]=0x45;Dt[15]=0x00;Dt[16]=0x00;Dt[17]=0x2d;Dt[18]=0x00;Dt[19]=0x00;Dt[20]=0x40;
	Dt[21]=0x00;Dt[22]=0x01;Dt[23]=0x11; Dt[24]=0x6d;Dt[25]=0xa2;

	//---IP Source Address 10.001.33.1
	Dt[26]=0x0a;Dt[27]=0x01;Dt[28]=0x21;Dt[29]=0x01;

	//---IP Destination Address 224.224.0.60 (VL 60)
	Dt[30]=0xe0;Dt[31]=0xe0;Dt[32]=0x00;Dt[33]=0x3c;

	//---UDP Source Port = 34
	Dt[34]=0x00;Dt[35]=0x22;

	//---UDP Dest Port = 33
	Dt[36]=0x00;Dt[37]=0x21;

	//---UDP Length = 25
	Dt[38]=0x00;Dt[39]=0x19;

	//---UDP Checksum
	Dt[40]=0x00;Dt[41]=0x00;

	//---Payload
	Dt[42]=0x41;Dt[43]=0x42;Dt[44]=0x43;Dt[45]=0x44;Dt[46]=0x45;
	Dt[47]=0x46;Dt[48]=0x47;Dt[49]=0x48;Dt[50]=0x49;Dt[51]=0x4a;
	Dt[52]=0x4b;Dt[53]=0x4c;Dt[54]=0x4d;Dt[55]=0x4e;Dt[56]=0x4f;
	Dt[57]=0x50;Dt[58]=0x51;

	for ( i = 0 ; i<58; i++)
		My_Frame.uc_Data[i] = (unsigned char) Dt[i];

	if (FDX_OK != (FdxCmdTxQueueWrite(g_ulPort1Handle, FDX_TX_FRAME_HEADER_GENERIC,1,sizeof(My_Frame),&My_Frame))) {
		printf("Write to Queue Failed!!!\n");
	}
	else {
		printf("Frame successfully written to Queue\n");
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
		printf("\r\n '1' Get Transmitter Status\n");
		printf(" '2' Get Receiver Status\n");
		printf(" '3' Read Frame from Monitor Queue\n");
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
				printf("Port 1 Frame Count: %d\n", x_TxStatus.ul_Frames);
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
//--------------------------------------------------------------
// MyFdxFreeResources
//--------------------------------------------------------------
void MyFdxFreeResources()
{
	TY_FDX_MON_QUEUE_CTRL_IN x_QueueCtrlIn;
	TY_FDX_MON_QUEUE_CTRL_OUT x_QueueCtrlOut;
	if (g_ulBoardHandle != 0)
		if (FDX_ERR == FdxLogout(g_ulBoardHandle))
		{
			printf("FdxLogout Board Error");
		}
	if (g_ulPort1Handle != 0)
	{
		if (FDX_ERR == FdxLogout(g_ulPort1Handle))
		{
			printf("FdxLogout Error 1");
		}
	}
	if (g_ulPort2Handle != 0)
	{
		if (g_ulQueueId != 0)
		{
			x_QueueCtrlIn.ul_QueueControl = FDX_MON_QUEUE_DELETE;
			x_QueueCtrlIn.ul_QueueId = g_ulQueueId;
			if (FDX_ERR == FdxCmdMonQueueControl(g_ulPort2Handle, &x_QueueCtrlIn, &x_QueueCtrlOut))
			{
				printf("FdxCmdMonQueueControl Error");
			}
		}
		if (FDX_ERR == FdxLogout(g_ulPort2Handle))
		{
			printf("FdxLogout Error 2");
		}
	}
}


