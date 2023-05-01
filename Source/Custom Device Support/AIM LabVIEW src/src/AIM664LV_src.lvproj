<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="_devUtilities" Type="Folder">
			<Item Name="_test_ArrangeVI (VI).vi" Type="VI" URL="../utilities/_test_ArrangeVI (VI).vi"/>
			<Item Name="arrange VI.vi" Type="VI" URL="../utilities/arrange VI.vi"/>
			<Item Name="mass Cleanup (Folder).vi" Type="VI" URL="../utilities/mass Cleanup (Folder).vi"/>
			<Item Name="mass Cleanup (Library).vi" Type="VI" URL="../utilities/mass Cleanup (Library).vi"/>
			<Item Name="retrieveAPI details.vi" Type="VI" URL="../utilities/retrieveAPI details.vi"/>
		</Item>
		<Item Name="_sandbox" Type="Folder">
			<Item Name="controls" Type="Folder">
				<Item Name="basic_rx_states.ctl" Type="VI" URL="../_sandbox/controls/basic_rx_states.ctl"/>
				<Item Name="basic_tx_states.ctl" Type="VI" URL="../_sandbox/controls/basic_tx_states.ctl"/>
			</Item>
			<Item Name="ErrHandling" Type="Folder">
				<Item Name="errDetails.vi" Type="VI" URL="../_sandbox/errDetails.vi"/>
				<Item Name="test_Reinitialize.vi" Type="VI" URL="../../_test/test_Reinitialize.vi"/>
			</Item>
			<Item Name="Templates" Type="Folder">
				<Item Name="API_RX.vit" Type="VI" URL="../_sandbox/templates/API_RX.vit"/>
				<Item Name="Basic.vit" Type="VI" URL="../_sandbox/templates/Basic.vit"/>
				<Item Name="Basic_RX.vit" Type="VI" URL="../_sandbox/templates/Basic_RX.vit"/>
				<Item Name="Basic_TX.vit" Type="VI" URL="../_sandbox/templates/Basic_TX.vit"/>
			</Item>
		</Item>
		<Item Name="_Tests" Type="Folder">
			<Item Name="Library Administration" Type="Folder">
				<Item Name="ManualTests" Type="Folder">
					<Item Name="testHWdiscover.vi" Type="VI" URL="../../_test/testHWdiscover.vi"/>
					<Item Name="testLibInitExit_cvi.vi" Type="VI" URL="../../_test/testLibInitExit_cvi.vi"/>
					<Item Name="testLibLoadUnload.vi" Type="VI" URL="../../_test/testLibLoadUnload.vi"/>
				</Item>
				<Item Name="unitTests" Type="Folder">
					<Item Name="_test_Login_Logout.vi" Type="VI" URL="../../_test/unitTests/LibraryAdministration/_test_Login_Logout.vi"/>
					<Item Name="_test_QueryServerConfig.vi" Type="VI" URL="../../_test/unitTests/LibraryAdministration/_test_QueryServerConfig.vi"/>
					<Item Name="_testLibInitExit_cvi.vi" Type="VI" URL="../../_test/unitTests/LibraryAdministration/_testLibInitExit_cvi.vi"/>
				</Item>
			</Item>
			<Item Name="misc" Type="Folder">
				<Item Name="hex2bin.vi" Type="VI" URL="../_sandbox/conversionTest/hex2bin.vi"/>
				<Item Name="manual_test_irigTime.vi" Type="VI" URL="../../_test/manual_test_irigTime.vi"/>
				<Item Name="ParseMonitorRecord.vi" Type="VI" URL="../_sandbox/ParseMonitorRecord.vi"/>
				<Item Name="test_bitmap.vi" Type="VI" URL="../../_test/test_bitmap.vi"/>
				<Item Name="test_ReadInfovi.vi" Type="VI" URL="../../_test/test_ReadInfovi.vi"/>
				<Item Name="testerMain.vi" Type="VI" URL="../../_test/testerMain.vi"/>
				<Item Name="testLoopback.vi" Type="VI" URL="../../_test/testLoopback.vi"/>
				<Item Name="testTypeCast.vi" Type="VI" URL="../../_test/testTypeCast.vi"/>
			</Item>
			<Item Name="Receive" Type="Folder">
				<Item Name="_test_RxMonitorOpenClose.vi" Type="VI" URL="../../_test/unitTests/Receive/_test_RxMonitorOpenClose.vi"/>
				<Item Name="_test_RxVLOpenClose.vi" Type="VI" URL="../../_test/unitTests/Receive/_test_RxVLOpenClose.vi"/>
			</Item>
			<Item Name="Utilities" Type="Folder">
				<Item Name="unitTests" Type="Folder">
					<Item Name="_test_IPheader.vi" Type="VI" URL="../../_test/_test_IPheader.vi"/>
					<Item Name="_test_MACheader.vi" Type="VI" URL="../../_test/_test_MACheader.vi"/>
					<Item Name="_test_UDPheader.vi" Type="VI" URL="../../_test/_test_UDPheader.vi"/>
				</Item>
			</Item>
		</Item>
		<Item Name="Instrument Driver" Type="Folder">
			<Item Name="AIM664LV.lvlib" Type="Library" URL="../AIM664LV.lvlib"/>
		</Item>
		<Item Name="Examples" Type="Folder">
			<Item Name="api" Type="Folder">
				<Item Name="bsp" Type="Folder">
					<Item Name="AIM664 BITE Transfer.vi" Type="VI" URL="../examples/AIM664 BITE Transfer.vi"/>
					<Item Name="AIM664 Board Control.vi" Type="VI" URL="../../examples/bsp/AIM664 Board Control.vi"/>
					<Item Name="AIM664 Command TX Port Init.vi" Type="VI" URL="../examples/AIM664 Command TX Port Init.vi"/>
					<Item Name="AIM664 Loopback.vi" Type="VI" URL="../examples/AIM664 Loopback.vi"/>
					<Item Name="AIM664 Read BSP Version.vi" Type="VI" URL="../examples/AIM664 Read BSP Version.vi"/>
					<Item Name="AIM664 Receive Continuous Capture.vi" Type="VI" URL="../examples/AIM664 Receive Continuous Capture.vi"/>
					<Item Name="AIM664 Receive Data.vi" Type="VI" URL="../examples/AIM664 Receive Data.vi"/>
					<Item Name="AIM664 Server Calls Test.vi" Type="VI" URL="../examples/AIM664 Server Calls Test.vi"/>
					<Item Name="AIM664 Timing Control.vi" Type="VI" URL="../examples/AIM664 Timing Control.vi"/>
					<Item Name="AIM664 Transmit 2.vi" Type="VI" URL="../examples/AIM664 Transmit 2.vi"/>
					<Item Name="AIM664 Transmit Queue Write.vi" Type="VI" URL="../examples/AIM664 Transmit Queue Write.vi"/>
					<Item Name="AIM664 Transmit Sampling Write 2.vi" Type="VI" URL="../../examples/bsp/AIM664 Transmit Sampling Write 2.vi"/>
					<Item Name="AIM664 Transmit Sampling Write.vi" Type="VI" URL="../examples/AIM664 Transmit Sampling Write.vi"/>
					<Item Name="AIM664 Transmit.vi" Type="VI" URL="../examples/AIM664 Transmit.vi"/>
					<Item Name="AIM664 UDP Block Read.vi" Type="VI" URL="../examples/AIM664 UDP Block Read.vi"/>
					<Item Name="AIM664 UDP Block Write.vi" Type="VI" URL="../examples/AIM664 UDP Block Write.vi"/>
					<Item Name="AIM664 VL Receive.vi" Type="VI" URL="../examples/AIM664 VL Receive.vi"/>
				</Item>
				<Item Name="basic" Type="Folder">
					<Item Name="basic - Bite Transfer.vi" Type="VI" URL="../examples/basic - Bite Transfer.vi"/>
					<Item Name="basic - Board Configuration.vi" Type="VI" URL="../examples/basic - Board Configuration.vi"/>
					<Item Name="basic - IRIG Time Control.vi" Type="VI" URL="../examples/basic - IRIG Time Control.vi"/>
					<Item Name="basic - Loopback.vi" Type="VI" URL="../examples/basic - Loopback.vi"/>
					<Item Name="basic - Read BSP Version.vi" Type="VI" URL="../examples/basic - Read BSP Version.vi"/>
					<Item Name="basic - Receive Continuous Capture.vi" Type="VI" URL="../examples/basic - Receive Continuous Capture.vi"/>
					<Item Name="basic - Receive Single Capture.vi" Type="VI" URL="../examples/basic - Receive Single Capture.vi"/>
					<Item Name="basic - Transmit UDP Queuing.vi" Type="VI" URL="../examples/basic - Transmit UDP Queuing.vi"/>
					<Item Name="basic - Transmit UDP Sampling.vi" Type="VI" URL="../examples/basic - Transmit UDP Sampling.vi"/>
					<Item Name="basic - Transmit.vi" Type="VI" URL="../examples/basic - Transmit.vi"/>
					<Item Name="basic - VL Receive 2 VL.vi" Type="VI" URL="../examples/basic - VL Receive 2 VL.vi"/>
					<Item Name="basic - VL Receive.vi" Type="VI" URL="../examples/basic - VL Receive.vi"/>
					<Item Name="basic - VL Transmit.vi" Type="VI" URL="../examples/basic - VL Transmit.vi"/>
				</Item>
				<Item Name="applications" Type="Folder">
					<Item Name="Board Control - Configure.vi" Type="VI" URL="../examples/Board Control - Configure.vi"/>
					<Item Name="Receive - Monitor.vi" Type="VI" URL="../examples/Receive - Monitor.vi"/>
					<Item Name="Receive - UDP (CommPort).vi" Type="VI" URL="../examples/Receive - UDP (CommPort).vi"/>
					<Item Name="Receive - UDP (SAP).vi" Type="VI" URL="../examples/Receive - UDP (SAP).vi"/>
					<Item Name="Transmit - Generic.vi" Type="VI" URL="../examples/Transmit - Generic.vi"/>
					<Item Name="Transmit - UDP (CommPort).vi" Type="VI" URL="../examples/Transmit - UDP (CommPort).vi"/>
					<Item Name="Transmit - UDP (SAP).vi" Type="VI" URL="../examples/Transmit - UDP (SAP).vi"/>
				</Item>
				<Item Name="advanced" Type="Folder">
					<Item Name="advanced - RX (Chrono-Monitor) - SingleStandard-ReadFixedNumber.vi" Type="VI" URL="../../examples/api/advanced - RX (Chrono-Monitor) - SingleStandard-ReadFixedNumber.vi"/>
					<Item Name="oopAPI_RX (SAP)_1.vi" Type="VI" URL="../../examples/api/oopAPI_RX (SAP)_1.vi"/>
					<Item Name="oopAPI_RX (SAP)_2.vi" Type="VI" URL="../../examples/api/oopAPI_RX (SAP)_2.vi"/>
					<Item Name="oopAPI_TX (Generic)_2.vi" Type="VI" URL="../../examples/api/oopAPI_TX (Generic)_2.vi"/>
					<Item Name="oopAPI_TX (SAP)_1.vi" Type="VI" URL="../../examples/api/oopAPI_TX (SAP)_1.vi"/>
					<Item Name="oopAPI_TX (SAP)_2.vi" Type="VI" URL="../../examples/api/oopAPI_TX (SAP)_2.vi"/>
					<Item Name="oopAPI_TX (UDP Port-Oriented)_2.vi" Type="VI" URL="../../examples/api/oopAPI_TX (UDP Port-Oriented)_2.vi"/>
				</Item>
				<Item Name="VsMockups" Type="Folder">
					<Item Name="Tx_UDPoriented.vi" Type="VI" URL="../_sandbox/VsMockups/Tx_UDPoriented.vi"/>
				</Item>
			</Item>
		</Item>
		<Item Name="Libraries" Type="Folder">
			<Item Name="EthFrameManagement.lvlib" Type="Library" URL="../helpers/EthFrameManagement/EthFrameManagement.lvlib"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ex_BuildTextVarProps.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express output/BuildTextBlock.llb/ex_BuildTextVarProps.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Run Tests.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/Caraya/run-tests/Run Tests.vi"/>
				<Item Name="Run Test (Array Path).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/Caraya/run-tests/Run Test (Array Path).vi"/>
				<Item Name="Define Test.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/Caraya/classes/Test/Define Test.vi"/>
				<Item Name="Assert.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/Caraya/classes/Assert/Assert.vi"/>
				<Item Name="Assert True.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/Caraya/classes/Assert/Assert True.vi"/>
			</Item>
			<Item Name="AIM664 Wait For Good Link.vi" Type="VI" URL="../../examples/bsp/AIM664 Wait For Good Link.vi"/>
			<Item Name="BoardControlControl.ctl" Type="VI" URL="../../examples/bsp/typedefs/BoardControlControl.ctl"/>
			<Item Name="BoardControlGoodLink.ctl" Type="VI" URL="../../examples/bsp/typedefs/BoardControlGoodLink.ctl"/>
			<Item Name="BoardControlIn.ctl" Type="VI" URL="../../examples/bsp/typedefs/BoardControlIn.ctl"/>
			<Item Name="BoardControlPortConfig.ctl" Type="VI" URL="../../examples/bsp/typedefs/BoardControlPortConfig.ctl"/>
			<Item Name="Add Item to Tree with Properties.vi" Type="VI" URL="../helpers/UserInterface/Add Item to Tree with Properties.vi"/>
			<Item Name="Tag-bool.lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/Tag-bool.lvlib"/>
			<Item Name="_ChannelSupport.lvlib" Type="Library" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/_ChannelSupport.lvlib"/>
			<Item Name="ChannelProbePositionAndTitle.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ChannelProbePositionAndTitle.vi"/>
			<Item Name="ChannelProbeWindowStagger.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ChannelProbeWindowStagger.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="NI-PXIe-8861-031ACC5D" Type="RT PXI Chassis">
		<Property Name="alias.name" Type="Str">NI-PXIe-8861-031ACC5D</Property>
		<Property Name="alias.value" Type="Str">192.168.0.19</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,Linux;CPU,x64;</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">9</Property>
		<Property Name="host.TargetOSID" Type="UInt">19</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/home/lvuser/natinst/bin</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
