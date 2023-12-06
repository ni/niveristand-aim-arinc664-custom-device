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
		<Item Name="SubVIs" Type="Folder">
			<Item Name="Calc Next Rate or Stop.vi" Type="VI" URL="../Calc Next Rate or Stop.vi"/>
			<Item Name="config select and copy.vi" Type="VI" URL="../config select and copy.vi"/>
			<Item Name="Deploy and wait.vi" Type="VI" URL="../Deploy and wait.vi"/>
			<Item Name="Launch NIVS and get Ref.vi" Type="VI" URL="../Launch NIVS and get Ref.vi"/>
			<Item Name="Pass Fail Check.vi" Type="VI" URL="../Pass Fail Check.vi"/>
			<Item Name="Select sys configs.vi" Type="VI" URL="../Select sys configs.vi"/>
			<Item Name="Delete temp config.vi" Type="VI" URL="../Delete temp config.vi"/>
			<Item Name="Configure Sysdef.vi" Type="VI" URL="../Configure Sysdef.vi"/>
			<Item Name="Clear Specific Error.vi" Type="VI" URL="../Clear Specific Error.vi"/>
			<Item Name="Set DAQ timing to Sample Complete.vi" Type="VI" URL="../Set DAQ timing to Sample Complete.vi"/>
			<Item Name="Print Report.vi" Type="VI" URL="../Print Report.vi"/>
			<Item Name="Convert Bool Fails to Strings.vi" Type="VI" URL="../Convert Bool Fails to Strings.vi"/>
			<Item Name="Open Sysdef Refs for IP Set.vi" Type="VI" URL="../Open Sysdef Refs for IP Set.vi"/>
			<Item Name="Set Loop Rate with Refs.vi" Type="VI" URL="../Set Loop Rate with Refs.vi"/>
			<Item Name="Close Sysdef Refs for IP Set.vi" Type="VI" URL="../Close Sysdef Refs for IP Set.vi"/>
			<Item Name="Set DAQ cards to max convert.vi" Type="VI" URL="../Set DAQ cards to max convert.vi"/>
		</Item>
		<Item Name="Controls" Type="Folder">
			<Item Name="Test Info.ctl" Type="VI" URL="../Test Info.ctl"/>
			<Item Name="Sysdef Settings.ctl" Type="VI" URL="../Sysdef Settings.ctl"/>
		</Item>
		<Item Name="Master Tester.vi" Type="VI" URL="../Master Tester.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Registry SAM.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry SAM.ctl"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="Close Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Close Registry Key.vi"/>
				<Item Name="Registry refnum.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry refnum.ctl"/>
				<Item Name="Registry Handle Master.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Handle Master.vi"/>
				<Item Name="Read Registry Value Simple.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple.vi"/>
				<Item Name="Read Registry Value Simple STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple STR.vi"/>
				<Item Name="Registry Simplify Data Type.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Simplify Data Type.vi"/>
				<Item Name="Read Registry Value.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value.vi"/>
				<Item Name="Read Registry Value STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value STR.vi"/>
				<Item Name="Registry WinErr-LVErr.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry WinErr-LVErr.vi"/>
				<Item Name="Read Registry Value DWORD.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value DWORD.vi"/>
				<Item Name="Read Registry Value Simple U32.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple U32.vi"/>
				<Item Name="Open Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Open Registry Key.vi"/>
				<Item Name="Registry RtKey.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry RtKey.ctl"/>
				<Item Name="Registry View.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry View.ctl"/>
				<Item Name="STR_ASCII-Unicode.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/STR_ASCII-Unicode.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="NI_VS Workspace ExecutionAPI.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI VeriStand/Execution/Workspace/NI_VS Workspace ExecutionAPI.lvlib"/>
				<Item Name="MergeError.vi" Type="VI" URL="/&lt;vilib&gt;/NI VeriStand/Execution/Shared/MergeError.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="UnpackedFlatVectorToMatrix.vi" Type="VI" URL="/&lt;vilib&gt;/NI VeriStand/Execution/Shared/UnpackedFlatVectorToMatrix.vi"/>
				<Item Name="Write To Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File.vi"/>
				<Item Name="Write To Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (DBL).vi"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Write To Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (I64).vi"/>
				<Item Name="Write To Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (string).vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="nisyscfg.lvlib" Type="Library" URL="/&lt;vilib&gt;/nisyscfg/nisyscfg.lvlib"/>
				<Item Name="cfis_Replace Percent Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Replace Percent Code.vi"/>
				<Item Name="cfis_Reverse Scan From String For Integer.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Reverse Scan From String For Integer.vi"/>
				<Item Name="cfis_Get File Extension Without Changing Case.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Get File Extension Without Changing Case.vi"/>
				<Item Name="cfis_Split File Path Into Three Parts.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Split File Path Into Three Parts.vi"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Create File with Incrementing Suffix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Create File with Incrementing Suffix.vi"/>
			</Item>
			<Item Name="Advapi32.dll" Type="Document" URL="Advapi32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="NationalInstruments.VeriStand.ClientAPI" Type="Document" URL="NationalInstruments.VeriStand.ClientAPI">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="NationalInstruments.VeriStand" Type="Document" URL="NationalInstruments.VeriStand">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="NationalInstruments.VeriStand.SystemDefinitionAPI" Type="Document" URL="NationalInstruments.VeriStand.SystemDefinitionAPI">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Search 1D Array (LVObject)__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search 1D Array (LVObject)__ogtk.vi"/>
			<Item Name="Search 1D Array (I64)__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search 1D Array (I64)__ogtk.vi"/>
			<Item Name="Search 1D Array (U64)__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search 1D Array (U64)__ogtk.vi"/>
			<Item Name="Search 1D Array (Variant)__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search 1D Array (Variant)__ogtk.vi"/>
			<Item Name="Search 1D Array (Path)__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search 1D Array (Path)__ogtk.vi"/>
			<Item Name="Search 1D Array (String)__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search 1D Array (String)__ogtk.vi"/>
			<Item Name="Search 1D Array (U32)__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search 1D Array (U32)__ogtk.vi"/>
			<Item Name="Search 1D Array (U16)__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search 1D Array (U16)__ogtk.vi"/>
			<Item Name="Search 1D Array (U8)__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search 1D Array (U8)__ogtk.vi"/>
			<Item Name="Search 1D Array (I32)__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search 1D Array (I32)__ogtk.vi"/>
			<Item Name="Search 1D Array (I16)__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search 1D Array (I16)__ogtk.vi"/>
			<Item Name="Search 1D Array (I8)__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search 1D Array (I8)__ogtk.vi"/>
			<Item Name="Search 1D Array (CXT)__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search 1D Array (CXT)__ogtk.vi"/>
			<Item Name="Search 1D Array (CDB)__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search 1D Array (CDB)__ogtk.vi"/>
			<Item Name="Search 1D Array (CSG)__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search 1D Array (CSG)__ogtk.vi"/>
			<Item Name="Search 1D Array (EXT)__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search 1D Array (EXT)__ogtk.vi"/>
			<Item Name="Search 1D Array (DBL)__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search 1D Array (DBL)__ogtk.vi"/>
			<Item Name="Search 1D Array (SGL)__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search 1D Array (SGL)__ogtk.vi"/>
			<Item Name="Search Array__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search Array__ogtk.vi"/>
			<Item Name="Search 1D Array (Boolean)__ogtk.vi" Type="VI" URL="../OpenG SearchArray/Search 1D Array (Boolean)__ogtk.vi"/>
			<Item Name="NationalInstruments.VeriStand.SystemStorage" Type="Document" URL="NationalInstruments.VeriStand.SystemStorage">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Built App" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{10F69C09-83E4-4842-9221-C9050DA42C91}</Property>
				<Property Name="App_INI_GUID" Type="Str">{A1AB1F8F-24D6-415F-87AF-62EB61E00CB6}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">1</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{30515A0A-2A8C-4D8B-BE5A-8686185A2185}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Built App</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Built</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{FA93D07B-1E79-4DA1-8DFC-66208B1BE01E}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Bld_version.patch" Type="Int">3</Property>
				<Property Name="Destination[0].destName" Type="Str">NIVS Benchmarker.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Built/NIVS Benchmarker.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Built/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{0A77D66B-6F8E-4471-BE22-936139AC5504}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Master Tester.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">National Instruments</Property>
				<Property Name="TgtF_fileDescription" Type="Str">NIVS2010 Benchmark Tool</Property>
				<Property Name="TgtF_internalName" Type="Str">NIVS2010 Benchmark Tool</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2010 National Instruments</Property>
				<Property Name="TgtF_productName" Type="Str">NIVS2010 Benchmark Tool</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{7F1C8CE5-E7D0-4890-999A-41F88AAE5302}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">NIVS Benchmarker.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
