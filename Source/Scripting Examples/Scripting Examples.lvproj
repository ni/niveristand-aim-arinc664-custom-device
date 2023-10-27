<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Property Name="CCSymbols" Type="Str"></Property>
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
		<Item Name="Support" Type="Folder" URL="../Support">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Post-Build Action.vi" Type="VI" URL="../Post-Build Action.vi"/>
		<Item Name="AIM ARINC 664 Scripting Examples.lvlib" Type="Library" URL="../AIM ARINC 664 Scripting Examples.lvlib"/>
		<Item Name="Build New AIM ARINC 664 Custom Device.vi" Type="VI" URL="../Build New AIM ARINC 664 Custom Device.vi"/>
		<Item Name="Import Parameters Configuration to New AIM ARINC 664 Custom Device.vi" Type="VI" URL="../Import Parameters Configuration to New AIM ARINC 664 Custom Device.vi"/>
		<Item Name="Examples.lvclass" Type="LVClass" URL="../Tests/Examples.lvclass"/>
		<Item Name="targets.ini" Type="Document" URL="../Tests/targets.ini"/>
		<Item Name="AIM ARINC 664 Scripting.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/AIM ARINC 664/Scripting/AIM ARINC 664 Scripting.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="Custom Device API.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI VeriStand/Custom Device API/Custom Device API.lvlib"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="TestCase.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/TestCase.llb/TestCase.lvclass"/>
				<Item Name="VITesterUtilities.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/VITesterUtilities.lvlib"/>
				<Item Name="Filter Error Codes__jki_lib_error_handling -- VI Tester__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter Error Codes__jki_lib_error_handling -- VI Tester__jki_vi_tester.vi"/>
				<Item Name="Filter Error Codes (Array)__jki_lib_error_handling -- VI Tester__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter Error Codes (Array)__jki_lib_error_handling -- VI Tester__jki_vi_tester.vi"/>
				<Item Name="Filtered Error Details - Cluster__jki_lib_error_handling -- VI Tester__jki_vi_tester.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filtered Error Details - Cluster__jki_lib_error_handling -- VI Tester__jki_vi_tester.ctl"/>
				<Item Name="Clear All Errors__jki_lib_error_handling -- VI Tester__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Clear All Errors__jki_lib_error_handling -- VI Tester__jki_vi_tester.vi"/>
				<Item Name="Filter Error Codes (Scalar)__jki_lib_error_handling -- VI Tester__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter Error Codes (Scalar)__jki_lib_error_handling -- VI Tester__jki_vi_tester.vi"/>
				<Item Name="Is an Error__jki_lib_error_handling -- VI Tester__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Is an Error__jki_lib_error_handling -- VI Tester__jki_vi_tester.vi"/>
				<Item Name="Is an Error (error cluster)__jki_lib_error_handling -- VI Tester__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Is an Error (error cluster)__jki_lib_error_handling -- VI Tester__jki_vi_tester.vi"/>
				<Item Name="Is an Error (error array)__jki_lib_error_handling -- VI Tester__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Is an Error (error array)__jki_lib_error_handling -- VI Tester__jki_vi_tester.vi"/>
				<Item Name="Is an Error (any error array element)__jki_lib_error_handling VI Tester__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Is an Error (any error array element)__jki_lib_error_handling VI Tester__jki_vi_tester.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Search or Split String__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search or Split String__ogtk__jki_vi_tester.vi"/>
				<Item Name="Close Generic Object Refnum__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Close Generic Object Refnum__ogtk__jki_vi_tester.vi"/>
				<Item Name="Close Generic Object Refnum (Array)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Close Generic Object Refnum (Array)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Close Generic Object Refnum (Scalar)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Close Generic Object Refnum (Scalar)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Close Generic Object Refnum (Scalar VI)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Close Generic Object Refnum (Scalar VI)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Close Generic Object Refnum (Array VI)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Close Generic Object Refnum (Array VI)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Random Number - Within Range__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Random Number - Within Range__ogtk__jki_vi_tester.vi"/>
				<Item Name="TestResult.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/TestResult.llb/TestResult.lvclass"/>
				<Item Name="TestSuite.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/TestSuite.llb/TestSuite.lvclass"/>
				<Item Name="Get Header from TD__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Get Header from TD__ogtk__jki_vi_tester.vi"/>
				<Item Name="Type Descriptor__ogtk__jki_vi_tester.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Type Descriptor__ogtk__jki_vi_tester.ctl"/>
				<Item Name="Type Descriptor Header__ogtk__jki_vi_tester.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Type Descriptor Header__ogtk__jki_vi_tester.ctl"/>
				<Item Name="Type Descriptor Enumeration__ogtk__jki_vi_tester.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Type Descriptor Enumeration__ogtk__jki_vi_tester.ctl"/>
				<Item Name="Multi-line String to Array__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Multi-line String to Array__ogtk__jki_vi_tester.vi"/>
				<Item Name="Convert EOLs__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Convert EOLs__ogtk__jki_vi_tester.vi"/>
				<Item Name="Convert EOLs (String)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Convert EOLs (String)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Convert EOLs (String Array)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Convert EOLs (String Array)__ogtk__jki_vi_tester.vi"/>
				<Item Name="String to 1D Array__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/String to 1D Array__ogtk__jki_vi_tester.vi"/>
				<Item Name="Trim Whitespace__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Trim Whitespace__ogtk__jki_vi_tester.vi"/>
				<Item Name="Trim Whitespace (String)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Trim Whitespace (String)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Trim Whitespace (String Array)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Trim Whitespace (String Array)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Format Variant Into String__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Format Variant Into String__ogtk__jki_vi_tester.vi"/>
				<Item Name="Get TDEnum from Data__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Get TDEnum from Data__ogtk__jki_vi_tester.vi"/>
				<Item Name="Build Error Cluster__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Build Error Cluster__ogtk__jki_vi_tester.vi"/>
				<Item Name="Get Refnum Type Enum from Data__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Get Refnum Type Enum from Data__ogtk__jki_vi_tester.vi"/>
				<Item Name="Refnum Subtype Enum__ogtk__jki_vi_tester.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Refnum Subtype Enum__ogtk__jki_vi_tester.ctl"/>
				<Item Name="Get Refnum Type Enum from TD__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Get Refnum Type Enum from TD__ogtk__jki_vi_tester.vi"/>
				<Item Name="Strip Units__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Strip Units__ogtk__jki_vi_tester.vi"/>
				<Item Name="Variant to Header Info__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Variant to Header Info__ogtk__jki_vi_tester.vi"/>
				<Item Name="Array Size(s)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Array Size(s)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Get Array Element TDEnum__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Get Array Element TDEnum__ogtk__jki_vi_tester.vi"/>
				<Item Name="Get Strings from Enum__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Get Strings from Enum__ogtk__jki_vi_tester.vi"/>
				<Item Name="Get Strings from Enum TD__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Get Strings from Enum TD__ogtk__jki_vi_tester.vi"/>
				<Item Name="Get PString__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Get PString__ogtk__jki_vi_tester.vi"/>
				<Item Name="Get Waveform Type Enum from Data__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Get Waveform Type Enum from Data__ogtk__jki_vi_tester.vi"/>
				<Item Name="Waveform Subtype Enum__ogtk__jki_vi_tester.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Waveform Subtype Enum__ogtk__jki_vi_tester.ctl"/>
				<Item Name="Get Waveform Type Enum from TD__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Get Waveform Type Enum from TD__ogtk__jki_vi_tester.vi"/>
				<Item Name="Resolve Timestamp Format__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Resolve Timestamp Format__ogtk__jki_vi_tester.vi"/>
				<Item Name="Get Data Name__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Get Data Name__ogtk__jki_vi_tester.vi"/>
				<Item Name="Get Data Name from TD__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Get Data Name from TD__ogtk__jki_vi_tester.vi"/>
				<Item Name="Get Last PString__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Get Last PString__ogtk__jki_vi_tester.vi"/>
				<Item Name="Strip Path Extension__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Strip Path Extension__ogtk__jki_vi_tester.vi"/>
				<Item Name="Strip Path Extension - Path__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Strip Path Extension - Path__ogtk__jki_vi_tester.vi"/>
				<Item Name="Strip Path Extension - String__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Strip Path Extension - String__ogtk__jki_vi_tester.vi"/>
				<Item Name="Get File System Separator.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysinfo.llb/Get File System Separator.vi"/>
				<Item Name="Strip Path Extension - 1D Array of Paths__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Strip Path Extension - 1D Array of Paths__ogtk__jki_vi_tester.vi"/>
				<Item Name="Strip Path Extension - 1D Array of Strings__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Strip Path Extension - 1D Array of Strings__ogtk__jki_vi_tester.vi"/>
				<Item Name="TestLoader.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/TestLoader.llb/TestLoader.lvclass"/>
				<Item Name="Conditional Auto-Indexing Tunnel__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (Variant)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (Variant)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (String)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (String)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (DBL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (DBL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (Path)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (Path)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (I32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (I32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (U32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (U32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (U16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (U16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (U8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (U8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (I16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (I16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (I8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (I8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (SGL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (SGL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (EXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (EXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (CSG)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (CSG)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (CDB)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (CDB)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (CXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (CXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (GEN-REF)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (GEN-REF)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (GObj-REF)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (GObj-REF)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (VI-REF)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (VI-REF)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (CTL-REF)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (CTL-REF)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (Bool)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (Bool)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (I64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (I64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (U64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (U64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Conditional Auto-Indexing Tunnel (LVObject)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Conditional Auto-Indexing Tunnel (LVObject)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array (String)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array (String)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array (Path)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array (Path)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array (CDB)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array (CDB)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array (CSG)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array (CSG)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array (CXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array (CXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array (DBL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array (DBL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array (EXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array (EXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array (I16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array (I16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array (I32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array (I32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array (I8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array (I8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array (SGL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array (SGL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array (String)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array (String)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array (U16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array (U16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array (U32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array (U32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array (U8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array (U8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array (Variant)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array (Variant)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array (Boolean)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array (Boolean)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array (I64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array (I64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array (U64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array (U64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Remove Duplicates from 1D Array (LVObject)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Remove Duplicates from 1D Array (LVObject)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search Array__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search Array__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search 1D Array (SGL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search 1D Array (SGL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search 1D Array (DBL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search 1D Array (DBL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search 1D Array (EXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search 1D Array (EXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search 1D Array (CSG)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search 1D Array (CSG)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search 1D Array (CDB)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search 1D Array (CDB)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search 1D Array (CXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search 1D Array (CXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search 1D Array (I8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search 1D Array (I8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search 1D Array (I16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search 1D Array (I16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search 1D Array (I32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search 1D Array (I32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search 1D Array (U8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search 1D Array (U8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search 1D Array (U16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search 1D Array (U16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search 1D Array (U32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search 1D Array (U32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search 1D Array (Boolean)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search 1D Array (Boolean)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search 1D Array (String)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search 1D Array (String)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search 1D Array (Path)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search 1D Array (Path)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search 1D Array (Variant)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search 1D Array (Variant)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search 1D Array (U64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search 1D Array (U64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search 1D Array (I64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search 1D Array (I64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Search 1D Array (LVObject)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Search 1D Array (LVObject)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from Array__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from Array__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 1D Array (Boolean)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 1D Array (Boolean)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort Array__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort Array__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 1D Array (CDB)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 1D Array (CDB)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array (CDB)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array (CDB)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 1D Array (CXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 1D Array (CXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array (CXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array (CXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 1D Array (CSG)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 1D Array (CSG)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array (CSG)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array (CSG)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 1D Array (DBL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 1D Array (DBL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 1D Array (EXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 1D Array (EXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 1D Array (I16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 1D Array (I16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 1D Array (I32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 1D Array (I32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 1D Array (I8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 1D Array (I8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 1D Array (SGL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 1D Array (SGL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 1D Array (U16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 1D Array (U16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 1D Array (U32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 1D Array (U32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 1D Array (U8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 1D Array (U8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 2D Array (CDB)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 2D Array (CDB)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 2D Array (CXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 2D Array (CXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 2D Array (CSG)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 2D Array (CSG)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 2D Array (DBL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 2D Array (DBL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 2D Array (EXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 2D Array (EXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 2D Array (I16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 2D Array (I16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 2D Array (I32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 2D Array (I32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 2D Array (I8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 2D Array (I8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 2D Array (SGL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 2D Array (SGL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 2D Array (U16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 2D Array (U16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 2D Array (U32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 2D Array (U32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 2D Array (U8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 2D Array (U8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 1D Array (Path)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 1D Array (Path)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 1D Array (String)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 1D Array (String)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 2D Array (Path)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 2D Array (Path)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 2D Array (String)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 2D Array (String)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 1D Array (I64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 1D Array (I64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 1D Array (U64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 1D Array (U64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 2D Array (I64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 2D Array (I64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Sort 2D Array (U64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Sort 2D Array (U64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder Array2__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder Array2__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array2 (CDB)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array2 (CDB)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array2 (CXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array2 (CXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array2 (CSG)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array2 (CSG)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array2 (DBL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array2 (DBL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array2 (EXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array2 (EXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array2 (I16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array2 (I16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array2 (I32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array2 (I32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array2 (I8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array2 (I8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array2 (SGL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array2 (SGL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array2 (U16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array2 (U16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array2 (U32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array2 (U32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array2 (U8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array2 (U8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array2 (Boolean)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array2 (Boolean)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array2 (String)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array2 (String)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array2 (Path)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array2 (Path)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array2 (Variant)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array2 (Variant)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 2D Array2 (Boolean)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 2D Array2 (Boolean)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 2D Array2 (CDB)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 2D Array2 (CDB)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 2D Array2 (CSG)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 2D Array2 (CSG)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 2D Array2 (CXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 2D Array2 (CXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 2D Array2 (DBL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 2D Array2 (DBL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 2D Array2 (EXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 2D Array2 (EXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 2D Array2 (I8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 2D Array2 (I8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 2D Array2 (I16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 2D Array2 (I16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 2D Array2 (I32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 2D Array2 (I32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 2D Array2 (Path)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 2D Array2 (Path)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 2D Array2 (SGL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 2D Array2 (SGL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 2D Array2 (String)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 2D Array2 (String)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 2D Array2 (U8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 2D Array2 (U8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 2D Array2 (U16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 2D Array2 (U16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 2D Array2 (U32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 2D Array2 (U32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 2D Array2 (Variant)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 2D Array2 (Variant)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array2 (I64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array2 (I64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array2 (U64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array2 (U64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 2D Array2 (I64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 2D Array2 (I64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 2D Array2 (U64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 2D Array2 (U64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 1D Array2 (LVObject)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 1D Array2 (LVObject)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Reorder 2D Array2 (LVObject)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Reorder 2D Array2 (LVObject)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 1D Array (CDB)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 1D Array (CDB)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 1D Array (CSG)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 1D Array (CSG)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 1D Array (DBL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 1D Array (DBL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 1D Array (CXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 1D Array (CXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 1D Array (EXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 1D Array (EXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 1D Array (I8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 1D Array (I8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 1D Array (I16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 1D Array (I16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 1D Array (I32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 1D Array (I32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 1D Array (Path)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 1D Array (Path)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 1D Array (SGL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 1D Array (SGL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 1D Array (String)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 1D Array (String)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 1D Array (U8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 1D Array (U8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 1D Array (U16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 1D Array (U16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 1D Array (U32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 1D Array (U32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 1D Array (Variant)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 1D Array (Variant)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 2D Array (Boolean)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 2D Array (Boolean)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 2D Array (CDB)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 2D Array (CDB)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 2D Array (CSG)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 2D Array (CSG)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 2D Array (CXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 2D Array (CXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 2D Array (DBL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 2D Array (DBL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 2D Array (EXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 2D Array (EXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 2D Array (I8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 2D Array (I8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 2D Array (I16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 2D Array (I16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 2D Array (I32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 2D Array (I32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 2D Array (Path)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 2D Array (Path)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 2D Array (SGL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 2D Array (SGL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 2D Array (String)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 2D Array (String)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 2D Array (U8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 2D Array (U8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 2D Array (U16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 2D Array (U16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 2D Array (U32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 2D Array (U32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 2D Array (Variant)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 2D Array (Variant)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 1D Array (I64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 1D Array (I64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 1D Array (U64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 1D Array (U64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 2D Array (I64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 2D Array (I64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 2D Array (U64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 2D Array (U64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 1D Array (LVObject)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 1D Array (LVObject)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Delete Elements from 2D Array (LVObject)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Delete Elements from 2D Array (LVObject)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array (U8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array (U8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array (Path)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array (Path)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array (U32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array (U32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array (U16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array (U16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array (I16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array (I16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array (I32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array (I32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array (I8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array (I8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array (Variant)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array (Variant)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array (Boolean)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array (Boolean)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array (CXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array (CXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array (CDB)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array (CDB)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array (CSG)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array (CSG)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array (EXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array (EXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array (DBL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array (DBL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array (SGL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array (SGL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array with Scalar (Boolean)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array with Scalar (Boolean)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array with Scalar (CDB)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array with Scalar (CDB)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array with Scalar (CSG)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array with Scalar (CSG)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array with Scalar (CXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array with Scalar (CXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array with Scalar (DBL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array with Scalar (DBL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array with Scalar (EXT)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array with Scalar (EXT)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array with Scalar (I8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array with Scalar (I8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array with Scalar (I16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array with Scalar (I16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array with Scalar (I32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array with Scalar (I32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array with Scalar (Path)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array with Scalar (Path)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array with Scalar (SGL)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array with Scalar (SGL)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array with Scalar (String)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array with Scalar (String)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array with Scalar (U8)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array with Scalar (U8)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array with Scalar (U16)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array with Scalar (U16)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array with Scalar (U32)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array with Scalar (U32)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array with Scalar (Variant)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array with Scalar (Variant)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array (I64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array (I64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array (U64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array (U64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array with Scalar (I64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array with Scalar (I64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array with Scalar (U64)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array with Scalar (U64)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array (LVObject)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array (LVObject)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Filter 1D Array with Scalar (LVObject)__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Filter 1D Array with Scalar (LVObject)__ogtk__jki_vi_tester.vi"/>
				<Item Name="Build Path__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Build Path__ogtk__jki_vi_tester.vi"/>
				<Item Name="Build Path - Traditional__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Build Path - Traditional__ogtk__jki_vi_tester.vi"/>
				<Item Name="Build Path - File Names Array__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Build Path - File Names Array__ogtk__jki_vi_tester.vi"/>
				<Item Name="Build Path - File Names and Paths Arrays__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Build Path - File Names and Paths Arrays__ogtk__jki_vi_tester.vi"/>
				<Item Name="Build Path - Traditional - path__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Build Path - Traditional - path__ogtk__jki_vi_tester.vi"/>
				<Item Name="Build Path - File Names Array - path__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Build Path - File Names Array - path__ogtk__jki_vi_tester.vi"/>
				<Item Name="Build Path - File Names and Paths Arrays - path__ogtk__jki_vi_tester.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/VI Tester/_support/Support.llb/Build Path - File Names and Paths Arrays - path__ogtk__jki_vi_tester.vi"/>
				<Item Name="Get LV Class Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Path.vi"/>
				<Item Name="Custom Device Utility Library.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI VeriStand/Custom Device Tools/Custom Device Utility Library/Custom Device Utility Library.lvlib"/>
				<Item Name="Encoding and Decoding.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/NI VeriStand Encoding and Decoding/Encoding and Decoding.lvlib"/>
				<Item Name="Custom Device Serialization.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/VeriStand Custom Device Serialization/Custom Device Serialization.lvlib"/>
				<Item Name="VeriStandTestUtilities.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/VeriStand Custom Device Testing Tools/VeriStandTestUtilities/VeriStandTestUtilities.lvlib"/>
				<Item Name="VeriStandTestCase.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/VeriStand Custom Device Testing Tools/VeriStandTestCase/VeriStandTestCase.lvclass"/>
				<Item Name="Custom Device Offline API.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI VeriStand/Custom Device Offline API/Custom Device Offline API.lvlib"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="NI_XML.lvlib" Type="Library" URL="/&lt;vilib&gt;/xml/NI_XML.lvlib"/>
				<Item Name="Advanced System Definition.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/NI VeriStand Advanced SysDef API/SysDef API/Advanced System Definition.lvlib"/>
				<Item Name="AIM ARINC 664 Import.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/AIM ARINC 664/Import/AIM ARINC 664 Import.lvlib"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="LVNumericRepresentation.ctl" Type="VI" URL="/&lt;vilib&gt;/numeric/LVNumericRepresentation.ctl"/>
				<Item Name="NI_SystemLogging.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/SystemLogging/NI_SystemLogging.lvlib"/>
				<Item Name="Tx Generic Queue Status Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/AIM ARINC 664/Controls/Tx Generic Queue Status Enum.ctl"/>
				<Item Name="Random Number (Range).vi" Type="VI" URL="/&lt;vilib&gt;/Numeric/Random Number (Range).vi"/>
				<Item Name="Random Number (Range) DBL.vi" Type="VI" URL="/&lt;vilib&gt;/Numeric/Random Number (Range) DBL.vi"/>
				<Item Name="Random Number (Range) I64.vi" Type="VI" URL="/&lt;vilib&gt;/Numeric/Random Number (Range) I64.vi"/>
				<Item Name="sub_Random U32.vi" Type="VI" URL="/&lt;vilib&gt;/Numeric/sub_Random U32.vi"/>
				<Item Name="Random Number (Range) U64.vi" Type="VI" URL="/&lt;vilib&gt;/Numeric/Random Number (Range) U64.vi"/>
				<Item Name="hardware_channels_rx.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/AIM ARINC 664/Shared/hardware_channels_rx.ctl"/>
				<Item Name="channel_settings_rx.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/AIM ARINC 664/Shared/channel_settings_rx.ctl"/>
				<Item Name="monitor_queue_settings.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/AIM ARINC 664/Shared/monitor_queue_settings.ctl"/>
				<Item Name="loggingThreshold_types.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/AIM ARINC 664/Shared/loggingThreshold_types.ctl"/>
				<Item Name="hardware_channels_tx.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/AIM ARINC 664/Shared/hardware_channels_tx.ctl"/>
				<Item Name="channel_settings_tx.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/AIM ARINC 664/Shared/channel_settings_tx.ctl"/>
				<Item Name="RawFrame.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/AIM ARINC 664/Shared/RawFrame.ctl"/>
				<Item Name="frame_record_type.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/AIM ARINC 664/Frame Configuration/Controls/frame_record_type.ctl"/>
				<Item Name="frame_file_entry.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/AIM ARINC 664/Frame Configuration/Controls/frame_file_entry.ctl"/>
				<Item Name="AIM ARINC 664 Shared.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/AIM ARINC 664/Shared/AIM ARINC 664 Shared.lvlib"/>
				<Item Name="Sort 1D Array.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Sort 1D Array.vim"/>
				<Item Name="Less Functor.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Comparison/Less/Less Functor/Less Functor.lvclass"/>
				<Item Name="Less Comparable.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Comparison/Less/Less Comparable/Less Comparable.lvclass"/>
				<Item Name="Sort 1D Array Core.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Helpers/Sort 1D Array Core.vim"/>
				<Item Name="Less.vim" Type="VI" URL="/&lt;vilib&gt;/Comparison/Less.vim"/>
				<Item Name="Remove Duplicates From 1D Array.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Remove Duplicates From 1D Array.vim"/>
				<Item Name="RxStatus Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/Custom Device Support/controls/RxStatus Enum.ctl"/>
				<Item Name="NI_VS Workspace ExecutionAPI.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI VeriStand/Execution/Workspace/NI_VS Workspace ExecutionAPI.lvlib"/>
				<Item Name="MergeError.vi" Type="VI" URL="/&lt;vilib&gt;/NI VeriStand/Execution/Shared/MergeError.vi"/>
				<Item Name="nisyscfg.lvlib" Type="Library" URL="/&lt;vilib&gt;/nisyscfg/nisyscfg.lvlib"/>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl"/>
				<Item Name="Get System Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/Get System Directory.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="subTimeDelay.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/TimeDelayBlock.llb/subTimeDelay.vi"/>
				<Item Name="Generate Temporary File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Generate Temporary File Path.vi"/>
				<Item Name="Is Path and Not Empty.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Is Path and Not Empty.vi"/>
				<Item Name="Create File with Incrementing Suffix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Create File with Incrementing Suffix.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="cfis_Replace Percent Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Replace Percent Code.vi"/>
				<Item Name="cfis_Split File Path Into Three Parts.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Split File Path Into Three Parts.vi"/>
				<Item Name="cfis_Get File Extension Without Changing Case.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Get File Extension Without Changing Case.vi"/>
				<Item Name="cfis_Reverse Scan From String For Integer.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Reverse Scan From String For Integer.vi"/>
				<Item Name="UnpackedFlatVectorToMatrix.vi" Type="VI" URL="/&lt;vilib&gt;/NI VeriStand/Execution/Shared/UnpackedFlatVectorToMatrix.vi"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="PackedMatrixToFlatVector.vi" Type="VI" URL="/&lt;vilib&gt;/NI VeriStand/Execution/Shared/PackedMatrixToFlatVector.vi"/>
			</Item>
			<Item Name="user.lib" Type="Folder">
				<Item Name="Current VIs Reference__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/appcontrol/appcontrol.llb/Current VIs Reference__ogtk.vi"/>
				<Item Name="Array to VCluster__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Array to VCluster__ogtk.vi"/>
				<Item Name="Get Data Name__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Data Name__ogtk.vi"/>
				<Item Name="Get Data Name from TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Data Name from TD__ogtk.vi"/>
				<Item Name="Type Descriptor__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Type Descriptor__ogtk.ctl"/>
				<Item Name="Get Header from TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Header from TD__ogtk.vi"/>
				<Item Name="Type Descriptor Header__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Type Descriptor Header__ogtk.ctl"/>
				<Item Name="Type Descriptor Enumeration__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Type Descriptor Enumeration__ogtk.ctl"/>
				<Item Name="Get PString__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get PString__ogtk.vi"/>
				<Item Name="Get Last PString__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Last PString__ogtk.vi"/>
				<Item Name="Build Error Cluster__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/error/error.llb/Build Error Cluster__ogtk.vi"/>
				<Item Name="Array to Array of VData__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Array to Array of VData__ogtk.vi"/>
				<Item Name="Reshape Array to 1D VArray__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Reshape Array to 1D VArray__ogtk.vi"/>
				<Item Name="Variant to Header Info__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Variant to Header Info__ogtk.vi"/>
				<Item Name="Array Size(s)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Array Size(s)__ogtk.vi"/>
				<Item Name="Set Data Name__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Set Data Name__ogtk.vi"/>
				<Item Name="Get Variant Attributes__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Variant Attributes__ogtk.vi"/>
				<Item Name="Array of VData to VCluster__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Array of VData to VCluster__ogtk.vi"/>
				<Item Name="Append Path to Root if Relative - Scalar__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Append Path to Root if Relative - Scalar__ogtk.vi"/>
				<Item Name="File Exists__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/File Exists__ogtk.vi"/>
				<Item Name="File Exists - Scalar__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/File Exists - Scalar__ogtk.vi"/>
				<Item Name="File Exists - Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/File Exists - Array__ogtk.vi"/>
				<Item Name="Current VIs Parents Ref__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/appcontrol/appcontrol.llb/Current VIs Parents Ref__ogtk.vi"/>
				<Item Name="Append Path to Root if Relative__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Append Path to Root if Relative__ogtk.vi"/>
				<Item Name="Append Path to Root if Relative - Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Append Path to Root if Relative - Array__ogtk.vi"/>
				<Item Name="Append Path to Root if Relative - Root Path Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Append Path to Root if Relative - Root Path Array__ogtk.vi"/>
				<Item Name="Append Path to Root if Relative - Absolute or Relative Path Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/file/file.llb/Append Path to Root if Relative - Absolute or Relative Path Array__ogtk.vi"/>
			</Item>
			<Item Name="instr.lib" Type="Folder">
				<Item Name="AIM664LV.lvlib" Type="Library" URL="/&lt;instrlib&gt;/AIM GmbH/_AIM 664/AIM664LV.lvlib"/>
				<Item Name="EthFrameManagement.lvlib" Type="Library" URL="/&lt;instrlib&gt;/AIM GmbH/_AIM 664/helpers/EthFrameManagement/EthFrameManagement.lvlib"/>
			</Item>
			<Item Name="NationalInstruments.VeriStand.SystemDefinitionAPI" Type="Document" URL="NationalInstruments.VeriStand.SystemDefinitionAPI">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="NationalInstruments.VeriStand.SystemStorage" Type="Document" URL="NationalInstruments.VeriStand.SystemStorage">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="DOMUserDefRef.dll" Type="Document" URL="DOMUserDefRef.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="NationalInstruments.VeriStand" Type="Document" URL="NationalInstruments.VeriStand">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="systemLogging.dll" Type="Document" URL="systemLogging.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="LV Config Read String.vi" Type="VI" URL="/&lt;resource&gt;/dialog/lvconfig.llb/LV Config Read String.vi"/>
			<Item Name="NationalInstruments.VeriStand.ClientAPI" Type="Document" URL="NationalInstruments.VeriStand.ClientAPI">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Examples" Type="Source Distribution">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{13CE6CA1-6220-4E13-B6D3-703749128956}</Property>
				<Property Name="Bld_buildSpecDescription" Type="Str">Copies the examples to an output location, and the post-build step copies this project file to another output location and cleans up the copy to make it release ready. Clean up includes removing the build specification and any non-shipping items, such as the Auto-Remove virtual folder.</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Examples</Property>
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
				<Property Name="Bld_localDestDir" Type="Path">../Built/NI_AB_PROJECTNAME</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_postActionVIID" Type="Ref">/My Computer/Post-Build Action.vi</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{59459AC1-4623-4D6A-B847-A9FDF84FB15C}</Property>
				<Property Name="Bld_removeVIObj" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">7</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Destination Directory</Property>
				<Property Name="Destination[0].path" Type="Path">../Built/NI_AB_PROJECTNAME</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Built/NI_AB_PROJECTNAME/Support</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{C21B6F72-0A73-4233-B002-FECBC9DCEAD4}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[1].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Support</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[1].type" Type="Str">Container</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/AIM ARINC 664 Scripting Examples.lvlib</Property>
				<Property Name="Source[2].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Library</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Post-Build Action.vi</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Exclude</Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/Build New AIM ARINC 664 Custom Device.vi</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].type" Type="Str">VI</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/Import Parameters Configuration to New AIM ARINC 664 Custom Device.vi</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[5].type" Type="Str">VI</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/Examples.lvclass</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">Exclude</Property>
				<Property Name="Source[6].type" Type="Str">Library</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/targets.ini</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">Exclude</Property>
				<Property Name="SourceCount" Type="Int">8</Property>
			</Item>
		</Item>
	</Item>
</Project>
