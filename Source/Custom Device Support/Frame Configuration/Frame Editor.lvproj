﻿<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="SMProvider.SMVersion" Type="Int">201310</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="_test" Type="Folder">
			<Item Name="Encode_Decode Frame.vi" Type="VI" URL="../_tests/Encode_Decode Frame.vi"/>
		</Item>
		<Item Name="Project Documentation" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Documentation Images" Type="Folder">
				<Property Name="NI.SortType" Type="Int">0</Property>
				<Item Name="loc_access_task_data.png" Type="Document" URL="../documentation/loc_access_task_data.png"/>
				<Item Name="loc_bundle_new_button_ref.png" Type="Document" URL="../documentation/loc_bundle_new_button_ref.png"/>
				<Item Name="loc_convert_variant.png" Type="Document" URL="../documentation/loc_convert_variant.png"/>
				<Item Name="loc_create_two_queues.png" Type="Document" URL="../documentation/loc_create_two_queues.png"/>
				<Item Name="loc_disable_new_button.png" Type="Document" URL="../documentation/loc_disable_new_button.png"/>
				<Item Name="loc_enqueue_generic_message.png" Type="Document" URL="../documentation/loc_enqueue_generic_message.png"/>
				<Item Name="loc_enqueue_message_with_data.png" Type="Document" URL="../documentation/loc_enqueue_message_with_data.png"/>
				<Item Name="loc_enqueue_priority_message.png" Type="Document" URL="../documentation/loc_enqueue_priority_message.png"/>
				<Item Name="loc_exit_message.png" Type="Document" URL="../documentation/loc_exit_message.png"/>
				<Item Name="loc_message_queue_wire.png" Type="Document" URL="../documentation/loc_message_queue_wire.png"/>
				<Item Name="loc_new_message_diagram.png" Type="Document" URL="../documentation/loc_new_message_diagram.png"/>
				<Item Name="loc_new_task_loop.png" Type="Document" URL="../documentation/loc_new_task_loop.png"/>
				<Item Name="loc_new_task_typedef.png" Type="Document" URL="../documentation/loc_new_task_typedef.png"/>
				<Item Name="loc_open_msg_queue_typedef.png" Type="Document" URL="../documentation/loc_open_msg_queue_typedef.png"/>
				<Item Name="loc_qmh_ignore_errors.png" Type="Document" URL="../documentation/loc_qmh_ignore_errors.png"/>
				<Item Name="loc_queued_message_handler.gif" Type="Document" URL="../documentation/loc_queued_message_handler.gif"/>
				<Item Name="loc_stop_new_mhl.png" Type="Document" URL="../documentation/loc_stop_new_mhl.png"/>
				<Item Name="loc_stop_task.png" Type="Document" URL="../documentation/loc_stop_task.png"/>
				<Item Name="loc_ui_data.png" Type="Document" URL="../documentation/loc_ui_data.png"/>
				<Item Name="loc_value_change_event.png" Type="Document" URL="../documentation/loc_value_change_event.png"/>
				<Item Name="noloc_note.png" Type="Document" URL="../documentation/noloc_note.png"/>
				<Item Name="noloc_tip.png" Type="Document" URL="../documentation/noloc_tip.png"/>
			</Item>
			<Item Name="Queued Message Handler Documentation.html" Type="Document" URL="../documentation/Queued Message Handler Documentation.html"/>
		</Item>
		<Item Name="FrameEditor.lvlib" Type="Library" URL="../FrameEditor.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Add State(s) to Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Add State(s) to Queue__jki_lib_state_machine.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Caraya Interactive Menu.rtm" Type="Document" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/Caraya/menu/Caraya Interactive Menu.rtm"/>
				<Item Name="Caraya.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/Caraya/Caraya.lvlib"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="Dflt Data Dir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Dflt Data Dir.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Escape Characters for HTTP.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Escape Characters for HTTP.vi"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AArray Size(s)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AArray Size(s)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AArray to Array of VData__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AArray to Array of VData__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ABuild Error Cluster__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ABuild Error Cluster__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ABuild Path - File Names and Paths Arrays - path__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ABuild Path - File Names and Paths Arrays - path__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ABuild Path - File Names and Paths Arrays__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ABuild Path - File Names and Paths Arrays__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ABuild Path - File Names Array - path__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ABuild Path - File Names Array - path__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ABuild Path - File Names Array__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ABuild Path - File Names Array__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ABuild Path - Traditional - path__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ABuild Path - Traditional - path__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ABuild Path - Traditional__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ABuild Path - Traditional__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ABuild Path__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ABuild Path__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ACluster to Array of VData__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ACluster to Array of VData__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (Bool)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (Bool)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (CDB)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (CDB)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (CSG)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (CSG)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (CTL-REF)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (CTL-REF)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (CXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (CXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (DBL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (DBL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (EXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (EXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (GEN-REF)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (GEN-REF)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (GObj-REF)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (GObj-REF)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (I8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (I8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (I16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (I16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (I32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (I32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (I64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (I64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (LVObject)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (LVObject)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (Path)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (Path)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (SGL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (SGL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (String)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (String)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (U8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (U8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (U16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (U16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (U32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (U32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (U64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (U64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (Variant)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (Variant)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (VI-REF)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel (VI-REF)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AConditional Auto-Indexing Tunnel__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (Boolean)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (Boolean)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (CDB)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (CDB)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (CSG)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (CSG)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (CXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (CXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (DBL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (DBL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (EXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (EXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (I8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (I8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (I16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (I16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (I32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (I32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (I64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (I64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (LVObject)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (LVObject)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (Path)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (Path)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (SGL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (SGL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (String)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (String)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (U8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (U8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (U16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (U16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (U32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (U32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (U64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (U64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (Variant)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 1D Array (Variant)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (Boolean)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (Boolean)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (CDB)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (CDB)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (CSG)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (CSG)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (CXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (CXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (DBL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (DBL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (EXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (EXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (I8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (I8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (I16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (I16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (I32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (I32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (I64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (I64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (LVObject)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (LVObject)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (Path)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (Path)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (SGL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (SGL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (String)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (String)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (U8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (U8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (U16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (U16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (U32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (U32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (U64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (U64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (Variant)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from 2D Array (Variant)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ADelete Elements from Array__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ADelete Elements from Array__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (Boolean)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (Boolean)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (CDB)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (CDB)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (CSG)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (CSG)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (CXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (CXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (DBL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (DBL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (EXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (EXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (I8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (I8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (I16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (I16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (I32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (I32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (I64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (I64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (LVObject)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (LVObject)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (Path)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (Path)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (SGL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (SGL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (String)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (String)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (U8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (U8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (U16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (U16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (U32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (U32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (U64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (U64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (Variant)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 1D Array (Variant)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (Boolean)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (Boolean)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (CDB)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (CDB)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (CSG)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (CSG)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (CXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (CXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (DBL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (DBL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (EXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (EXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (I8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (I8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (I16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (I16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (I32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (I32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (I64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (I64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (LVObject)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (LVObject)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (Path)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (Path)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (SGL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (SGL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (String)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (String)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (U8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (U8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (U16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (U16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (U32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (U32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (U64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (U64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (Variant)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty 2D Array (Variant)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty Array (Variant)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty Array (Variant)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AEmpty Array__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AEmpty Array__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFile Exists - Array__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFile Exists - Array__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFile Exists - Scalar__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFile Exists - Scalar__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFile Exists__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFile Exists__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array (Boolean)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array (Boolean)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array (CDB)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array (CDB)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array (CSG)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array (CSG)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array (CXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array (CXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array (DBL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array (DBL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array (EXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array (EXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array (I8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array (I8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array (I16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array (I16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array (I32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array (I32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array (I64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array (I64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array (LVObject)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array (LVObject)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array (Path)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array (Path)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array (SGL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array (SGL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array (String)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array (String)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array (U8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array (U8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array (U16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array (U16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array (U32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array (U32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array (U64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array (U64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array (Variant)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array (Variant)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (Boolean)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (Boolean)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (CDB)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (CDB)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (CSG)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (CSG)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (CXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (CXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (DBL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (DBL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (EXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (EXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (I8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (I8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (I16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (I16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (I32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (I32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (I64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (I64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (LVObject)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (LVObject)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (Path)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (Path)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (SGL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (SGL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (String)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (String)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (U8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (U8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (U16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (U16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (U32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (U32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (U64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (U64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (Variant)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array with Scalar (Variant)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFilter 1D Array__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFilter 1D Array__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AFormat Variant Into String__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AFormat Variant Into String__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AGet Array Element TDEnum__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AGet Array Element TDEnum__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AGet Data Name from TD__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AGet Data Name from TD__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AGet Data Name__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AGet Data Name__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AGet Element TD from Array TD__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AGet Element TD from Array TD__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AGet Header from TD__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AGet Header from TD__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AGet Last PString__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AGet Last PString__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AGet Physical Units from TD__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AGet Physical Units from TD__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AGet Physical Units__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AGet Physical Units__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AGet PString__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AGet PString__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AGet Refnum Type Enum from Data__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AGet Refnum Type Enum from Data__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AGet Refnum Type Enum from TD__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AGet Refnum Type Enum from TD__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AGet Strings from Enum TD__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AGet Strings from Enum TD__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AGet Strings from Enum__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AGet Strings from Enum__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AGet TDEnum from Data__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AGet TDEnum from Data__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AGet TDEnum from TD__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AGet TDEnum from TD__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AGet Variant Attributes__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AGet Variant Attributes__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AGet Waveform Type Enum from Data__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AGet Waveform Type Enum from Data__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AGet Waveform Type Enum from TD__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AGet Waveform Type Enum from TD__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AList Directory Recursive__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AList Directory Recursive__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AList Directory__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AList Directory__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AParse String with TDs__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AParse String with TDs__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4APhysical Units__ogtk.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4APhysical Units__ogtk.ctl"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARefnum Subtype Enum__ogtk.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARefnum Subtype Enum__ogtk.ctl"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (Boolean)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (Boolean)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (CDB)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (CDB)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (CSG)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (CSG)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (CXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (CXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (DBL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (DBL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (EXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (EXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (I8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (I8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (I16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (I16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (I32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (I32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (I64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (I64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (LVObject)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (LVObject)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (Path)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (Path)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (SGL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (SGL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (String)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (String)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (U8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (U8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (U16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (U16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (U32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (U32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (U64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (U64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (Variant)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array (Variant)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ARemove Duplicates from 1D Array__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array (CDB)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array (CDB)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array (CSG)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array (CSG)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array (CXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array (CXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (Boolean)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (Boolean)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (CDB)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (CDB)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (CSG)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (CSG)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (CXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (CXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (DBL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (DBL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (EXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (EXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (I8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (I8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (I16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (I16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (I32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (I32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (I64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (I64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (LVObject)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (LVObject)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (Path)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (Path)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (SGL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (SGL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (String)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (String)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (U8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (U8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (U16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (U16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (U32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (U32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (U64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (U64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (Variant)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 1D Array2 (Variant)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (Boolean)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (Boolean)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (CDB)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (CDB)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (CSG)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (CSG)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (CXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (CXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (DBL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (DBL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (EXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (EXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (I8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (I8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (I16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (I16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (I32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (I32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (I64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (I64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (LVObject)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (LVObject)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (Path)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (Path)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (SGL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (SGL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (String)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (String)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (U8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (U8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (U16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (U16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (U32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (U32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (U64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (U64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (Variant)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder 2D Array2 (Variant)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReorder Array2__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReorder Array2__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AReshape Array to 1D VArray__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AReshape Array to 1D VArray__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AResolve Timestamp Format__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AResolve Timestamp Format__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch 1D Array (Boolean)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch 1D Array (Boolean)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch 1D Array (CDB)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch 1D Array (CDB)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch 1D Array (CSG)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch 1D Array (CSG)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch 1D Array (CXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch 1D Array (CXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch 1D Array (DBL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch 1D Array (DBL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch 1D Array (EXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch 1D Array (EXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch 1D Array (I8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch 1D Array (I8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch 1D Array (I16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch 1D Array (I16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch 1D Array (I32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch 1D Array (I32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch 1D Array (I64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch 1D Array (I64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch 1D Array (LVObject)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch 1D Array (LVObject)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch 1D Array (Path)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch 1D Array (Path)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch 1D Array (SGL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch 1D Array (SGL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch 1D Array (String)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch 1D Array (String)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch 1D Array (U8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch 1D Array (U8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch 1D Array (U16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch 1D Array (U16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch 1D Array (U32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch 1D Array (U32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch 1D Array (U64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch 1D Array (U64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch 1D Array (Variant)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch 1D Array (Variant)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASearch Array__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASearch Array__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASet Data Name__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASet Data Name__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 1D Array (CDB)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 1D Array (CDB)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 1D Array (CSG)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 1D Array (CSG)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 1D Array (CXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 1D Array (CXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 1D Array (DBL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 1D Array (DBL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 1D Array (EXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 1D Array (EXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 1D Array (I8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 1D Array (I8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 1D Array (I16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 1D Array (I16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 1D Array (I32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 1D Array (I32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 1D Array (I64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 1D Array (I64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 1D Array (Path)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 1D Array (Path)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 1D Array (SGL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 1D Array (SGL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 1D Array (String)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 1D Array (String)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 1D Array (U8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 1D Array (U8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 1D Array (U16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 1D Array (U16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 1D Array (U32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 1D Array (U32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 1D Array (U64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 1D Array (U64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 2D Array (CDB)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 2D Array (CDB)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 2D Array (CSG)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 2D Array (CSG)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 2D Array (CXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 2D Array (CXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 2D Array (DBL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 2D Array (DBL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 2D Array (EXT)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 2D Array (EXT)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 2D Array (I8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 2D Array (I8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 2D Array (I16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 2D Array (I16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 2D Array (I32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 2D Array (I32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 2D Array (I64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 2D Array (I64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 2D Array (Path)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 2D Array (Path)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 2D Array (SGL)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 2D Array (SGL)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 2D Array (String)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 2D Array (String)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 2D Array (U8)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 2D Array (U8)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 2D Array (U16)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 2D Array (U16)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 2D Array (U32)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 2D Array (U32)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort 2D Array (U64)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort 2D Array (U64)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASort Array__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASort Array__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ASplit Cluster TD__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ASplit Cluster TD__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AStrip Path Extension - 1D Array of Paths__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AStrip Path Extension - 1D Array of Paths__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AStrip Path Extension - 1D Array of Strings__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AStrip Path Extension - 1D Array of Strings__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AStrip Path Extension - Path__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AStrip Path Extension - Path__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AStrip Path Extension - String__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AStrip Path Extension - String__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AStrip Path Extension__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AStrip Path Extension__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AStrip Units__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AStrip Units__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ATrim Whitespace (String Array)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ATrim Whitespace (String Array)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ATrim Whitespace (String)__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ATrim Whitespace (String)__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4ATrim Whitespace__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4ATrim Whitespace__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AType Descriptor Enumeration__ogtk.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AType Descriptor Enumeration__ogtk.ctl"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AType Descriptor Header__ogtk.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AType Descriptor Header__ogtk.ctl"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AType Descriptor__ogtk.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AType Descriptor__ogtk.ctl"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AVariant to Header Info__ogtk.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AVariant to Header Info__ogtk.vi"/>
				<Item Name="FF154AA9FA361469346938CA7F095A4AWaveform Subtype Enum__ogtk.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/_Caraya_internal_deps/FF154AA9FA361469346938CA7F095A4AWaveform Subtype Enum__ogtk.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Get File System Separator.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysinfo.llb/Get File System Separator.vi"/>
				<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Name.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get System Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/Get System Directory.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get VI Library File Info.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get VI Library File Info.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Has LLB Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Has LLB Extension.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="Librarian File Info In.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Librarian File Info In.ctl"/>
				<Item Name="Librarian File Info Out.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Librarian File Info Out.ctl"/>
				<Item Name="Librarian File List.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Librarian File List.ctl"/>
				<Item Name="Librarian.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Librarian.vi"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Open URL in Default Browser (path).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser (path).vi"/>
				<Item Name="Open URL in Default Browser (string).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser (string).vi"/>
				<Item Name="Open URL in Default Browser core.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser core.vi"/>
				<Item Name="Open URL in Default Browser.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser.vi"/>
				<Item Name="Parse State Queue__jki_lib_state_machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Parse State Queue__jki_lib_state_machine.vi"/>
				<Item Name="Path to URL inner.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL inner.vi"/>
				<Item Name="Path to URL.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL.vi"/>
				<Item Name="Random Number (Range) DBL.vi" Type="VI" URL="/&lt;vilib&gt;/Numeric/Random Number (Range) DBL.vi"/>
				<Item Name="Random Number (Range) I64.vi" Type="VI" URL="/&lt;vilib&gt;/Numeric/Random Number (Range) I64.vi"/>
				<Item Name="Random Number (Range) U64.vi" Type="VI" URL="/&lt;vilib&gt;/Numeric/Random Number (Range) U64.vi"/>
				<Item Name="Random Number (Range).vi" Type="VI" URL="/&lt;vilib&gt;/Numeric/Random Number (Range).vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="sub_Random U32.vi" Type="VI" URL="/&lt;vilib&gt;/Numeric/sub_Random U32.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="TRef Traverse for References.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/traverseref.llb/TRef Traverse for References.vi"/>
				<Item Name="TRef Traverse.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/traverseref.llb/TRef Traverse.vi"/>
				<Item Name="TRef TravTarget.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/traverseref.llb/TRef TravTarget.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="VI Scripting - Traverse.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/traverseref.llb/VI Scripting - Traverse.lvlib"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="AIM664LV.lvlib" Type="Library" URL="../../../../../../Azdo/emea-aim-664-instrument-driver-1204/src/AIM664LV.lvlib"/>
			<Item Name="AIM664LV.lvlib" Type="Library" URL="../../AIM LabVIEW src/src/AIM664LV.lvlib"/>
			<Item Name="EthFrameManagement.lvlib" Type="Library" URL="../../../../../../Azdo/emea-aim-664-instrument-driver-1204/src/helpers/EthFrameManagement/EthFrameManagement.lvlib"/>
			<Item Name="EthFrameManagement.lvlib" Type="Library" URL="../../AIM LabVIEW src/src/helpers/EthFrameManagement/EthFrameManagement.lvlib"/>
			<Item Name="Run Tests in Active Project.vi" Type="VI" URL="../../../../../../../../../Program Files (x86)/National Instruments/LabVIEW 2020/project/Caraya/Run Tests in Active Project.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Main Application" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{51D186D8-2FD9-4F4B-8F36-40D68E57FFBC}</Property>
				<Property Name="App_INI_GUID" Type="Str">{F8BAE070-8383-465E-800B-3DF9D752A65B}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">1</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{96FCFFEE-92FF-41D7-8A5C-2E1B7D4F08B1}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Main Application</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Main Application</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{9236DFC5-A1BE-45C5-93F4-A12737594CB8}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Main.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Main Application/Main.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Main Application/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{E7BFF366-DAB8-43B4-AA23-0662F14B8EC9}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/FrameEditor.lvlib/UI.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Main Application</Property>
				<Property Name="TgtF_internalName" Type="Str">Main Application</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2012 </Property>
				<Property Name="TgtF_productName" Type="Str">Main Application</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{8D31CF1E-BFEE-4FAB-AC90-991853A95B09}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Main.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
