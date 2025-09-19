<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Property Name="CCSymbols" Type="Str">DEBUG,False;VS_DEBUG,FALSE;PCAP,True;</Property>
	<Property Name="NI.LV.All.SaveVersion" Type="Str">20.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Property Name="utf.calculate.project.code.coverage" Type="Bool">true</Property>
	<Property Name="utf.create.arraybrackets" Type="Str">[]</Property>
	<Property Name="utf.create.arraythreshold" Type="UInt">100</Property>
	<Property Name="utf.create.captureinputvalues" Type="Bool">true</Property>
	<Property Name="utf.create.captureoutputvalues" Type="Bool">true</Property>
	<Property Name="utf.create.codecoverage.flag" Type="Bool">false</Property>
	<Property Name="utf.create.codecoverage.value" Type="UInt">100</Property>
	<Property Name="utf.create.editor.flag" Type="Bool">false</Property>
	<Property Name="utf.create.editor.path" Type="Path"></Property>
	<Property Name="utf.create.nameseparator" Type="Str">/</Property>
	<Property Name="utf.create.precision" Type="UInt">6</Property>
	<Property Name="utf.create.repetitions" Type="UInt">1</Property>
	<Property Name="utf.create.testpath.flag" Type="Bool">false</Property>
	<Property Name="utf.create.testpath.path" Type="Path"></Property>
	<Property Name="utf.create.timeout.flag" Type="Bool">false</Property>
	<Property Name="utf.create.timeout.value" Type="UInt">0</Property>
	<Property Name="utf.create.type" Type="UInt">0</Property>
	<Property Name="utf.enable.RT.VI.server" Type="Bool">false</Property>
	<Property Name="utf.passwords" Type="Bin">)!#!!!!!!!)!%%!Q`````Q:4&gt;(*J&lt;G=!!":!1!!"`````Q!!#6"B=X.X&lt;X*E=Q!"!!%!!!!"!!!!#F652E&amp;-4&amp;.516)!!!!!</Property>
	<Property Name="utf.report.atml.create" Type="Bool">false</Property>
	<Property Name="utf.report.atml.path" Type="Path">ATML report.xml</Property>
	<Property Name="utf.report.atml.view" Type="Bool">false</Property>
	<Property Name="utf.report.details.errors" Type="Bool">false</Property>
	<Property Name="utf.report.details.failed" Type="Bool">false</Property>
	<Property Name="utf.report.details.passed" Type="Bool">false</Property>
	<Property Name="utf.report.errors" Type="Bool">true</Property>
	<Property Name="utf.report.failed" Type="Bool">true</Property>
	<Property Name="utf.report.html.create" Type="Bool">false</Property>
	<Property Name="utf.report.html.path" Type="Path">HTML report.html</Property>
	<Property Name="utf.report.html.view" Type="Bool">false</Property>
	<Property Name="utf.report.passed" Type="Bool">true</Property>
	<Property Name="utf.report.skipped" Type="Bool">true</Property>
	<Property Name="utf.report.sortby" Type="UInt">1</Property>
	<Property Name="utf.report.stylesheet.flag" Type="Bool">false</Property>
	<Property Name="utf.report.stylesheet.path" Type="Path"></Property>
	<Property Name="utf.report.summary" Type="Bool">true</Property>
	<Property Name="utf.report.txt.create" Type="Bool">false</Property>
	<Property Name="utf.report.txt.path" Type="Path">ASCII report.txt</Property>
	<Property Name="utf.report.txt.view" Type="Bool">false</Property>
	<Property Name="utf.run.changed.days" Type="UInt">1</Property>
	<Property Name="utf.run.changed.outdated" Type="Bool">false</Property>
	<Property Name="utf.run.changed.timestamp" Type="Bin">)!#!!!!!!!%!%%"5!!9*2'&amp;U:3^U;7VF!!%!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</Property>
	<Property Name="utf.run.days.flag" Type="Bool">false</Property>
	<Property Name="utf.run.includevicallers" Type="Bool">false</Property>
	<Property Name="utf.run.logfile.flag" Type="Bool">false</Property>
	<Property Name="utf.run.logfile.overwrite" Type="Bool">false</Property>
	<Property Name="utf.run.logfile.path" Type="Path">test execution log.txt</Property>
	<Property Name="utf.run.modified.last.run.flag" Type="Bool">true</Property>
	<Property Name="utf.run.priority.flag" Type="Bool">false</Property>
	<Property Name="utf.run.priority.value" Type="UInt">5</Property>
	<Property Name="utf.run.statusfile.flag" Type="Bool">false</Property>
	<Property Name="utf.run.statusfile.path" Type="Path">test status log.txt</Property>
	<Property Name="utf.run.timestamp.flag" Type="Bool">false</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="CCSymbols" Type="Str">UNITEST,False;VS_DEBUG,True;OFFLINE,False;AIM_API_V15,False;FRAME_REGEN,True;</Property>
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
		<Item Name="Tests" Type="Folder">
			<Item Name="Unit" Type="Folder">
				<Item Name="Scripting" Type="Folder">
					<Item Name="AIM ARINC 664 Scripting.lvclass" Type="LVClass" URL="../Tests/Unit/Scripting/AIM ARINC 664 Scripting.lvclass"/>
				</Item>
				<Item Name="XML parsing" Type="Folder">
					<Item Name="AIM ARINC 664 Port Setup.lvclass" Type="LVClass" URL="../Tests/Unit/XML Parsing/Port Setup/AIM ARINC 664 Port Setup.lvclass"/>
				</Item>
				<Item Name="Import" Type="Folder">
					<Item Name="Assets" Type="Folder">
						<Item Name="template.xml" Type="Document" URL="../Tests/Unit/Import/Assets/template.xml"/>
						<Item Name="templateDefault.xml" Type="Document" URL="../Tests/Unit/Import/Assets/templateDefault.xml"/>
						<Item Name="templateNonDefault.xml" Type="Document" URL="../Tests/Unit/Import/Assets/templateNonDefault.xml"/>
						<Item Name="testAIM_multisession.xml" Type="Document" URL="../Tests/Unit/Import/Assets/testAIM_multisession.xml"/>
						<Item Name="templateDefault_Parameters.xml" Type="Document" URL="../Tests/Unit/Import/Assets/templateDefault_Parameters.xml"/>
						<Item Name="templateDefaultTxGen.xml" Type="Document" URL="../Tests/Unit/Import/Assets/templateDefaultTxGen.xml"/>
						<Item Name="UDP_RX_TX_Loopback_Mon_TxUDP.xml" Type="Document" URL="../Tests/Unit/Import/Assets/UDP_RX_TX_Loopback_Mon_TxUDP.xml"/>
						<Item Name="UDP_RX_TX_Loopback_Mon_TxUDP_10Mbs.xml" Type="Document" URL="../Tests/Unit/Import/Assets/UDP_RX_TX_Loopback_Mon_TxUDP_10Mbs.xml"/>
						<Item Name="UDP_RX_TX_Loopback_Mon_TxUDP_100Mbs.xml" Type="Document" URL="../Tests/Unit/Import/Assets/UDP_RX_TX_Loopback_Mon_TxUDP_100Mbs.xml"/>
						<Item Name="UDP_RX_TX_Loopback_TxRxMon.xml" Type="Document" URL="../Tests/Unit/Import/Assets/UDP_RX_TX_Loopback_TxRxMon.xml"/>
						<Item Name="UDP_TX_RX_Loopback.xml" Type="Document" URL="../Tests/Unit/Import/Assets/UDP_TX_RX_Loopback.xml"/>
						<Item Name="UDP_TX_RX_Loopback_manyParameters.xml" Type="Document" URL="../Tests/Unit/Import/Assets/UDP_TX_RX_Loopback_manyParameters.xml"/>
						<Item Name="UDP_TX_RX_Loopback_manyParameters__2.xml" Type="Document" URL="../Tests/Unit/Import/Assets/UDP_TX_RX_Loopback_manyParameters__2.xml"/>
						<Item Name="UDP_TX_RX_Loopback_manyParameters__3.xml" Type="Document" URL="../Tests/Unit/Import/Assets/UDP_TX_RX_Loopback_manyParameters__3.xml"/>
						<Item Name="UDP_TX_RX_Loopback_manyParameters__4.xml" Type="Document" URL="../Tests/Unit/Import/Assets/UDP_TX_RX_Loopback_manyParameters__4.xml"/>
						<Item Name="UDP_TX_RX_Loopback_zeroParameters.xml" Type="Document" URL="../Tests/Unit/Import/Assets/UDP_TX_RX_Loopback_zeroParameters.xml"/>
					</Item>
					<Item Name="AIM ARINC 664 Import.lvclass" Type="LVClass" URL="../Tests/Unit/Import/AIM ARINC 664 Import.lvclass"/>
				</Item>
			</Item>
			<Item Name="Manual" Type="Folder">
				<Item Name="test_decodeMonEntry.vi" Type="VI" URL="../Tests/System/Manual/test_decodeMonEntry.vi"/>
				<Item Name="test_XMLlvParser.vi" Type="VI" URL="../Tests/System/Manual/test_XMLlvParser.vi"/>
				<Item Name="test_script_api_Tree.vi" Type="VI" URL="../Tests/System/Manual/test_script_api_Tree.vi"/>
				<Item Name="Get-Set Properties from Cluster.vi" Type="VI" URL="../Tests/Unit/XML Parsing/Get-Set Properties from Cluster.vi"/>
				<Item Name="test_FrameEditor.vi" Type="VI" URL="../Tests/System/Manual/test_FrameEditor.vi"/>
				<Item Name="test_decodeTxRxUDP config.vi" Type="VI" URL="../Tests/System/Manual/test_decodeTxRxUDP config.vi"/>
				<Item Name="Convert Raw Frame File.vi" Type="VI" URL="../Tests/System/Manual/Convert Raw Frame File.vi"/>
				<Item Name="Get-Set Properties from Cluster (logInfo).vi" Type="VI" URL="../Tests/Unit/XML Parsing/Get-Set Properties from Cluster (logInfo).vi"/>
				<Item Name="test_pcap.vi" Type="VI" URL="../Tests/System/Manual/test_pcap.vi"/>
				<Item Name="test_decodeTxGenConfig.vi" Type="VI" URL="../Tests/System/Manual/test_decodeTxGenConfig.vi"/>
				<Item Name="test_EncodeDecodeManual.vi" Type="VI" URL="../Tests/System/Manual/test_EncodeDecodeManual.vi"/>
			</Item>
			<Item Name="System" Type="Folder">
				<Item Name="Deployment" Type="Folder">
					<Item Name="Assets" Type="Folder">
						<Item Name="ARINC_664_disabled.nivssdf" Type="Document" URL="../Tests/System/AIM_Deployment/Assets/ARINC_664_disabled.nivssdf"/>
						<Item Name="ARINC_664_no_configuration.nivssdf" Type="Document" URL="../Tests/System/AIM_Deployment/Assets/ARINC_664_no_configuration.nivssdf"/>
					</Item>
					<Item Name="AIM ARINC 664 Deployment.lvclass" Type="LVClass" URL="../Tests/System/AIM_Deployment/AIM ARINC 664 Deployment.lvclass"/>
				</Item>
				<Item Name="Loopback" Type="Folder">
					<Item Name="Assets" Type="Folder">
						<Item Name="AFDX_loopback_TxGen-RxMon.nivssdf" Type="Document" URL="../Tests/System/AIM ARINC 664 Loopback/Assets/AFDX_loopback_TxGen-RxMon.nivssdf"/>
						<Item Name="AFDX_loopback_TxUDP-RxUDP.nivssdf" Type="Document" URL="../Tests/System/AIM ARINC 664 Loopback/Assets/AFDX_loopback_TxUDP-RxUDP.nivssdf"/>
						<Item Name="AFDX_loopback_TxGen-RxMon-Multiple Boards.nivssdf" Type="Document" URL="../Tests/System/AIM ARINC 664 Loopback/Assets/AFDX_loopback_TxGen-RxMon-Multiple Boards.nivssdf"/>
						<Item Name="AFDX_loopback_TxGen-RxMon_Redundant.nivssdf" Type="Document" URL="../Tests/System/AIM ARINC 664 Loopback/Assets/AFDX_loopback_TxGen-RxMon_Redundant.nivssdf"/>
						<Item Name="AFDX_loopback_TxUDP-RxUDP-Redundant.nivssdf" Type="Document" URL="../Tests/System/AIM ARINC 664 Loopback/Assets/AFDX_loopback_TxUDP-RxUDP-Redundant.nivssdf"/>
					</Item>
					<Item Name="AIM ARINC 664 Loopback.lvclass" Type="LVClass" URL="../Tests/System/AIM ARINC 664 Loopback/AIM ARINC 664 Loopback.lvclass"/>
					<Item Name="targets.ini" Type="Document" URL="../Tests/System/AIM ARINC 664 Loopback/targets.ini"/>
				</Item>
			</Item>
		</Item>
		<Item Name="Utility" Type="Folder">
			<Item Name="Copy PPLs to Includes.vi" Type="VI" URL="../Utility/Copy PPLs to Includes.vi"/>
			<Item Name="Copy PPLs to NI VeriStand dir.vi" Type="VI" URL="../Utility/Copy PPLs to NI VeriStand dir.vi"/>
			<Item Name="Post-Build Action.vi" Type="VI" URL="../Utility/Post-Build Action.vi"/>
			<Item Name="Generate AIM API Errors.vi" Type="VI" URL="../Utility/Generate AIM API Errors.vi"/>
			<Item Name="Post-Build Action Scripting.vi" Type="VI" URL="../Utility/Post-Build Action Scripting.vi"/>
		</Item>
		<Item Name="Shared" Type="Folder">
			<Item Name="controls" Type="Folder">
				<Item Name="Monitor Queue Status Enum.ctl" Type="VI" URL="../Shared/Monitor Queue Status Enum.ctl"/>
				<Item Name="Payload Record Type.ctl" Type="VI" URL="../Frame Configuration/controls/Payload Record Type.ctl"/>
				<Item Name="RxStatus Enum.ctl" Type="VI" URL="../Shared/RxStatus Enum.ctl"/>
				<Item Name="Payload Map.ctl" Type="VI" URL="../Frame Configuration/controls/Payload Map.ctl"/>
				<Item Name="Type of Payload.ctl" Type="VI" URL="../Frame Configuration/controls/Type of Payload.ctl"/>
				<Item Name="channel_settings_rx.ctl" Type="VI" URL="../Shared/channel_settings_rx.ctl"/>
				<Item Name="channel_settings_tx.ctl" Type="VI" URL="../Shared/channel_settings_tx.ctl"/>
				<Item Name="FileSegmentType.ctl" Type="VI" URL="../Shared/FileSegmentType.ctl"/>
				<Item Name="Frame.ctl" Type="VI" URL="../Shared/Frame.ctl"/>
				<Item Name="hardware_channels_rx.ctl" Type="VI" URL="../Shared/hardware_channels_rx.ctl"/>
				<Item Name="hardware_channels_tx.ctl" Type="VI" URL="../Shared/hardware_channels_tx.ctl"/>
				<Item Name="logFileInfo_types.ctl" Type="VI" URL="../Shared/logFileInfo_types.ctl"/>
				<Item Name="loggingThreshold_types.ctl" Type="VI" URL="../Shared/loggingThreshold_types.ctl"/>
				<Item Name="monitor_queue_settings.ctl" Type="VI" URL="../Shared/monitor_queue_settings.ctl"/>
				<Item Name="Tx Generic Queue Status Enum.ctl" Type="VI" URL="../Shared/Tx Generic Queue Status Enum.ctl"/>
				<Item Name="tx_generic_command.ctl" Type="VI" URL="../Shared/tx_generic_command.ctl"/>
				<Item Name="RawFrame_entry.ctl" Type="VI" URL="../Shared/RawFrame_entry.ctl"/>
			</Item>
			<Item Name="Evaluate Tx Generic Start - Stop.vi" Type="VI" URL="../Shared/Evaluate Tx Generic Start - Stop.vi"/>
			<Item Name="Parse Raw Payload Frame.vi" Type="VI" URL="../Frame Configuration/support/Parse Raw Payload Frame.vi"/>
			<Item Name="Get MD5 for File.vi" Type="VI" URL="../Shared/Get MD5 for File.vi"/>
			<Item Name="AIM Error Code to CD Error Code.vi" Type="VI" URL="../Shared/AIM Error Code to CD Error Code.vi"/>
			<Item Name="Build Linux Log Path.vi" Type="VI" URL="../Shared/Build Linux Log Path.vi"/>
			<Item Name="VsItemMap.vi" Type="VI" URL="../Shared/VsItemMap.vi"/>
			<Item Name="check log file info default values.vi" Type="VI" URL="../Shared/check log file info default values.vi"/>
			<Item Name="Convert U8 Array to Bool Array.vi" Type="VI" URL="../Shared/Convert U8 Array to Bool Array.vi"/>
		</Item>
		<Item Name="Palette" Type="Folder" URL="../Palette">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Errors" Type="Folder" URL="../Errors">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Custom Device AIM ARINC 664.xml" Type="Document" URL="../../Custom Device/Custom Device AIM ARINC 664.xml"/>
		<Item Name="AIM ARINC 664 Engine.lvlib" Type="Library" URL="../Engine/AIM ARINC 664 Engine.lvlib"/>
		<Item Name="AIM ARINC 664 Scripting.lvlib" Type="Library" URL="../Scripting/AIM ARINC 664 Scripting.lvlib"/>
		<Item Name="AIM ARINC 664 System Explorer.lvlib" Type="Library" URL="../System Explorer/Implementation/System Explorer/AIM ARINC 664 System Explorer.lvlib"/>
		<Item Name="AIM ARINC 664 Import.lvlib" Type="Library" URL="../Import/AIM ARINC 664 Import.lvlib"/>
		<Item Name="VsDebugLibrary.lvlib" Type="Library" URL="../VsDebugLibrary/VsDebugLibrary.lvlib"/>
		<Item Name="Custom Device Serialization.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/VeriStand Custom Device Serialization/Custom Device Serialization.lvlib"/>
		<Item Name="libpcaplv.lvlib" Type="Library" URL="../libpcaplv/libpcaplv.lvlib"/>
		<Item Name="FrameEditor.lvlib" Type="Library" URL="../Frame Configuration/FrameEditor.lvlib"/>
		<Item Name="UdpBlockMessage.lvlib" Type="Library" URL="../BlockMessage/UdpBlockMessage.lvlib"/>
		<Item Name="Frame Logging.lvlib" Type="Library" URL="../Engine/Implementation/Logging/Frame Logging/Frame Logging.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Engine" Type="Packed Library">
				<Property Name="Bld_buildCacheID" Type="Str">{1292050D-A0DC-43FC-8EB3-6FC5EDB32D8A}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Engine</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Built/Support/Windows</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_postActionVIID" Type="Ref">/My Computer/Utility/Post-Build Action.vi</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{00026C2A-569B-4D6A-BC7B-D707A1CC9505}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">AIM ARINC 664 Engine.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">../Built/Support/Windows/AIM ARINC 664 Engine.lvlibp</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Built/Support/Windows</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{44C0C4AE-EAF1-4328-887A-988958EB191A}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/AIM ARINC 664 Engine.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Communication Bus Engine</Property>
				<Property Name="TgtF_internalName" Type="Str">Communication Bus Engine</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2020 </Property>
				<Property Name="TgtF_productName" Type="Str">Communication Bus Engine</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{42316925-79E8-4345-8D40-0BF14F60C9A2}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">AIM ARINC 664 Engine.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="System Explorer" Type="Packed Library">
				<Property Name="Bld_buildCacheID" Type="Str">{9EDCC426-A584-4087-8244-A3B57E74FF5E}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">System Explorer</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Built/Support/Windows</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_postActionVIID" Type="Ref">/My Computer/Utility/Post-Build Action.vi</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{2AF25D28-E070-4F3E-AD75-4F2B8F2A5EC5}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">AIM ARINC 664 System Explorer.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">../Built/Support/Windows/AIM ARINC 664 System Explorer.lvlibp</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Built/Support/Windows</Property>
				<Property Name="Destination[2].destName" Type="Str">XML</Property>
				<Property Name="Destination[2].path" Type="Path">../Built/Support</Property>
				<Property Name="Destination[3].destName" Type="Str">Errors</Property>
				<Property Name="Destination[3].path" Type="Path">../Built/Errors</Property>
				<Property Name="DestinationCount" Type="Int">4</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{C4D4D5A7-97E7-4BA4-9520-F6AFE6095233}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/AIM ARINC 664 System Explorer.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Custom Device AIM ARINC 664.xml</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/AIM ARINC 664 Engine.lvlib</Property>
				<Property Name="Source[3].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[3].type" Type="Str">Library</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/AIM ARINC 664 Scripting.lvlib</Property>
				<Property Name="Source[4].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[4].type" Type="Str">Library</Property>
				<Property Name="Source[5].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[5].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">3</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/Errors</Property>
				<Property Name="Source[5].type" Type="Str">Container</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/Errors/AIM ARINC-664-errors.txt</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/Errors/AIM ARINC-664-errors.xml</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">Include</Property>
				<Property Name="SourceCount" Type="Int">8</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Communication Bus Engine</Property>
				<Property Name="TgtF_internalName" Type="Str">Communication Bus Engine</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2020 </Property>
				<Property Name="TgtF_productName" Type="Str">Communication Bus Engine</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{B041E42F-38F2-47C3-8F1C-2EFEAD6FB030}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">AIM ARINC 664 System Explorer.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="Scripting API" Type="Source Distribution">
				<Property Name="Bld_buildCacheID" Type="Str">{45489642-7B0A-4B41-8E3D-9EEE369E3420}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Scripting API</Property>
				<Property Name="Bld_excludedDirectory[0]" Type="Path">vi.lib</Property>
				<Property Name="Bld_excludedDirectory[0].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[1]" Type="Path">resource/objmgr</Property>
				<Property Name="Bld_excludedDirectory[1].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[2]" Type="Path">/C/ProgramData/National Instruments/InstCache/20.0</Property>
				<Property Name="Bld_excludedDirectory[3]" Type="Path">/C/Users/abarp/Documents/LabVIEW Data/2020(32-bit)/ExtraVILib</Property>
				<Property Name="Bld_excludedDirectory[4]" Type="Path">instr.lib</Property>
				<Property Name="Bld_excludedDirectory[4].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[5]" Type="Path">user.lib</Property>
				<Property Name="Bld_excludedDirectory[5].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectoryCount" Type="Int">6</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Built/Scripting</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_postActionVIID" Type="Ref">/My Computer/Utility/Post-Build Action Scripting.vi</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{1D3FDF35-3D7E-4DFE-8975-7292B1555A92}</Property>
				<Property Name="Bld_removeVIObj" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Destination Directory</Property>
				<Property Name="Destination[0].path" Type="Path">../Built/Scripting</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Built/Scripting/data</Property>
				<Property Name="Destination[2].destName" Type="Str">Shared</Property>
				<Property Name="Destination[2].libraryName" Type="Str">AIM ARINC 664 Shared.lvlib</Property>
				<Property Name="Destination[2].path" Type="Path">../Built/Scripting/Shared</Property>
				<Property Name="Destination[3].destName" Type="Str">Top Level</Property>
				<Property Name="Destination[3].path" Type="Path">../Built/Scripting</Property>
				<Property Name="DestinationCount" Type="Int">4</Property>
				<Property Name="Source[0].itemID" Type="Str">{336FB1B7-381C-4EFC-AAF9-FF34C9B5BB22}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/AIM ARINC 664 Scripting.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="Source[10].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[10].itemID" Type="Ref">/My Computer/Shared/VsItemMap.vi</Property>
				<Property Name="Source[10].type" Type="Str">VI</Property>
				<Property Name="Source[11].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[11].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[11].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[11].itemID" Type="Ref">/</Property>
				<Property Name="Source[11].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[11].type" Type="Str">Container</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/AIM ARINC 664 System Explorer.lvlib</Property>
				<Property Name="Source[2].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Exclude</Property>
				<Property Name="Source[2].type" Type="Str">Library</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/AIM ARINC 664 Engine.lvlib</Property>
				<Property Name="Source[3].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Exclude</Property>
				<Property Name="Source[3].type" Type="Str">Library</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/Shared/Get MD5 for File.vi</Property>
				<Property Name="Source[4].type" Type="Str">VI</Property>
				<Property Name="Source[5].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[5].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[5].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/Shared</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[5].type" Type="Str">Container</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/libpcaplv.lvlib</Property>
				<Property Name="Source[6].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">Exclude</Property>
				<Property Name="Source[6].type" Type="Str">Library</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/FrameEditor.lvlib</Property>
				<Property Name="Source[7].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">Exclude</Property>
				<Property Name="Source[7].type" Type="Str">Library</Property>
				<Property Name="Source[8].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[8].itemID" Type="Ref">/My Computer/VsDebugLibrary.lvlib</Property>
				<Property Name="Source[8].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[8].sourceInclusion" Type="Str">Exclude</Property>
				<Property Name="Source[8].type" Type="Str">Library</Property>
				<Property Name="Source[9].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[9].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[9].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[9].destinationIndex" Type="Int">3</Property>
				<Property Name="Source[9].itemID" Type="Ref">/My Computer/Palette</Property>
				<Property Name="Source[9].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[9].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">12</Property>
			</Item>
		</Item>
	</Item>
	<Item Name="RT PXI Target" Type="RT PXI Chassis">
		<Property Name="alias.name" Type="Str">RT PXI Target</Property>
		<Property Name="alias.value" Type="Str">10.2.201.92</Property>
		<Property Name="CCSymbols" Type="Str">OS,Linux;CPU,x64;VS_DEBUG,False;AIM_DEBUG,False;INIT_FLAT,False;SHARED_INIT,False;AIM_API_V15,False;FRAME_REGEN,True;TARGET_TYPE,RT;</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">9</Property>
		<Property Name="host.TargetOSID" Type="UInt">19</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str">1.0,0;</Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
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
		<Property Name="target.server.tcp.serviceName" Type="Str"></Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.viscripting.showScriptingOperationsInContextHelp" Type="Bool">false</Property>
		<Property Name="target.server.viscripting.showScriptingOperationsInEditor" Type="Bool">false</Property>
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
		<Item Name="Tests" Type="Folder">
			<Item Name="System" Type="Folder">
				<Item Name="Manual" Type="Folder">
					<Property Name="NI.SortType" Type="Int">3</Property>
					<Item Name="test_Exec Unit.vit" Type="VI" URL="../Tests/System/Manual/test_Exec Unit.vit"/>
					<Item Name="test_Loop OpenClose (lowLevel).vi" Type="VI" URL="../Tests/System/Manual/test_Loop OpenClose (lowLevel).vi"/>
					<Item Name="test_Loop OpenClose (Session).vi" Type="VI" URL="../Tests/System/Manual/test_Loop OpenClose (Session).vi"/>
					<Item Name="test_Loopback(Tx Generic - Rx Mon).vi" Type="VI" URL="../Tests/System/Manual/test_Loopback(Tx Generic - Rx Mon).vi"/>
					<Item Name="test_OpenClose (lowLevel).vi" Type="VI" URL="../Tests/System/Manual/test_OpenClose (lowLevel).vi"/>
					<Item Name="test_OpenClose (Multi Sessions) 2.vi" Type="VI" URL="../Tests/System/Manual/test_OpenClose (Multi Sessions) 2.vi"/>
					<Item Name="test_OpenClose (Multi Sessions).vi" Type="VI" URL="../Tests/System/Manual/test_OpenClose (Multi Sessions).vi"/>
					<Item Name="test_Receive - Monitor.vi" Type="VI" URL="../Tests/System/Manual/test_Receive - Monitor.vi"/>
					<Item Name="test_Receive - Monitor (Multi Record).vi" Type="VI" URL="../Tests/System/Manual/test_Receive - Monitor (Multi Record).vi"/>
					<Item Name="test_Rx Exec Unit (Monitor).vi" Type="VI" URL="../Tests/System/Manual/test_Rx Exec Unit (Monitor).vi"/>
					<Item Name="test_Tx Exec Unit (Generic).vi" Type="VI" URL="../Tests/System/Manual/test_Tx Exec Unit (Generic).vi"/>
					<Item Name="basic - Transmit (from FIle).vi" Type="VI" URL="../Tests/System/Manual/basic - Transmit (from FIle).vi"/>
					<Item Name="test_Rx Exec Unit (UDP).vi" Type="VI" URL="../Tests/System/Manual/test_Rx Exec Unit (UDP).vi"/>
					<Item Name="test_RxUDP.vi" Type="VI" URL="../Tests/System/Manual/test_RxUDP.vi"/>
					<Item Name="test_Tx Exec Unit (UDP).vi" Type="VI" URL="../Tests/System/Manual/test_Tx Exec Unit (UDP).vi"/>
					<Item Name="test_TxUDP.vi" Type="VI" URL="../Tests/System/Manual/test_TxUDP.vi"/>
					<Item Name="test_TxUDPBlockWrite.vi" Type="VI" URL="../Tests/System/Manual/test_TxUDPBlockWrite.vi"/>
					<Item Name="test_ConfigureBoard.vi" Type="VI" URL="../Tests/System/Manual/test_ConfigureBoard.vi"/>
					<Item Name="test_Restart.vi" Type="VI" URL="../Tests/System/Manual/test_Restart.vi"/>
					<Item Name="test_Pointers.vi" Type="VI" URL="../Tests/System/Manual/test_Pointers.vi"/>
					<Item Name="test_BlocRWtest.vi" Type="VI" URL="../Tests/System/Manual/test_BlocRWtest.vi"/>
				</Item>
			</Item>
		</Item>
		<Item Name="AIM ARINC 664 Engine.lvlib" Type="Library" URL="../Engine/AIM ARINC 664 Engine.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Engine" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{5E1E93C8-FDC1-4B3D-B381-84580220D2B6}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Engine</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Built/Support</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_postActionVIID" Type="Ref">/My Computer/Utility/Post-Build Action.vi</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{7EA79AFE-9433-4612-9B49-D2972EB5FCB8}</Property>
				<Property Name="Bld_targetDestDir" Type="Path">/Linux_x64</Property>
				<Property Name="Bld_version.build" Type="Int">387</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">AIM ARINC 664 Engine.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">/Linux_x64/AIM ARINC 664 Engine.lvlibp</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/Linux_x64</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{FD2A67A0-6CA7-4169-B01F-A271D91F419C}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/RT PXI Target/AIM ARINC 664 Engine.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">National Instruments</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Engine</Property>
				<Property Name="TgtF_internalName" Type="Str">Engine</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2023 National Instruments</Property>
				<Property Name="TgtF_productName" Type="Str">Engine</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{F23ADF16-5473-4D0F-8906-2DC6DF92CC87}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">AIM ARINC 664 Engine.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
