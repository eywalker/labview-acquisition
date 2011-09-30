<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="10008000">
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
		<Item Name="DataReceiver.lvclass" Type="LVClass" URL="../DataReceiver/DataReceiver.lvclass"/>
		<Item Name="DataProcessor.lvclass" Type="LVClass" URL="../DataProcessor/DataProcessor.lvclass"/>
		<Item Name="DataDisplayer.lvclass" Type="LVClass" URL="../DataDisplayer/DataDisplayer.lvclass"/>
		<Item Name="DisplayTetrodes.lvclass" Type="LVClass" URL="../DisplayTetrodes/DisplayTetrodes.lvclass"/>
		<Item Name="TETRODE.ico" Type="Document" URL="../DisplayTetrodes/TETRODE.ico"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="DAQmx Fill In Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/daqmx/miscellaneous.llb/DAQmx Fill In Error Info.vi"/>
				<Item Name="DAQmx Unflatten Channel String.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Unflatten Channel String.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="NIMS_Any To Vector.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeSupport/NIMS_Any To Vector.vi"/>
				<Item Name="NIMS_Replace - _(_)=[].vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - _(_)=[].vi"/>
				<Item Name="NIMS_Replace - _(_)=S.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - _(_)=S.vi"/>
				<Item Name="NIMS_Get Scalar.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeSupport/NIMS_Get Scalar.vi"/>
				<Item Name="NIMS_Replace - _(_)=VorM.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - _(_)=VorM.vi"/>
				<Item Name="NIMS_Grow Vector.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Grow Vector.vi"/>
				<Item Name="NIMS_Replace - Get Dims Poly.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - Get Dims Poly.vi"/>
				<Item Name="NIMS_And Generic Elements.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeSupport/NIMS_And Generic Elements.vi"/>
				<Item Name="NIMS_Check Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_Check Index.vi"/>
				<Item Name="NIMS_Get Elements - RV(_).vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Read/NIMS_Get Elements - RV(_).vi"/>
				<Item Name="NIMS_V_Check Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_V_Check Index.vi"/>
				<Item Name="NIMS_To I32 Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_To I32 Index.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
			</Item>
			<Item Name="nilvaiu.dll" Type="Document" URL="nilvaiu.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="../../../Program Files/National Instruments/LabVIEW 2010/resource/lvanlys.dll"/>
			<Item Name="NIMS_is_empty(GV).vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/BuiltInFunctions/is_empty/NIMS_is_empty(GV).vi"/>
			<Item Name="NIMS_findnz_Rotate_Matrix.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/BuiltInFunctions/findnz/NIMS_findnz_Rotate_Matrix.vi"/>
			<Item Name="NIMS_findnz_Rotate_Matrix_BA3F545161D8454E94DAA185DE99192D_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_findnz_Rotate_Matrix_BA3F545161D8454E94DAA185DE99192D.lvgen/NIMS_findnz_Rotate_Matrix_BA3F545161D8454E94DAA185DE99192D_000.vi"/>
			<Item Name="NIMS_findnz_core.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/BuiltInFunctions/findnz/NIMS_findnz_core.vi"/>
			<Item Name="NIMS_findnz_core_2ADB407513D24EB7975C76F1663C01AA_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_findnz_core_2ADB407513D24EB7975C76F1663C01AA.lvgen/NIMS_findnz_core_2ADB407513D24EB7975C76F1663C01AA_000.vi"/>
			<Item Name="NIMS_[1o]_findnz(GRowV).vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/BuiltInFunctions/findnz/NIMS_[1o]_findnz(GRowV).vi"/>
			<Item Name="error.ctl" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath/Functions/Error Handling/error.ctl"/>
			<Item Name="Translate Error.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath/Functions/Error Handling/Translate Error.vi"/>
			<Item Name="NIMS_Already Translated.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ErrorHandling/NIMS_Already Translated.vi"/>
			<Item Name="Create Error.vi" Type="VI" URL="/&lt;vilib&gt;/imathl/engines/lvmath/Functions/Error Handling/Create Error.vi"/>
			<Item Name="MC_Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath/Functions/Error Handling/MC_Error Cluster From Error Code.vi"/>
			<Item Name="NIMS_Error From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ErrorHandling/NIMS_Error From Error Code.vi"/>
			<Item Name="NIMS_Create Error From Enums.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ErrorHandling/NIMS_Create Error From Enums.vi"/>
			<Item Name="NIMS_Replace - Prepare Contraction Indices.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - Prepare Contraction Indices.vi"/>
			<Item Name="MC_Global_Global.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/Constants/MC_Global_Global.vi"/>
			<Item Name="MC_Equal_within_epsilon.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/RangeToken/MC_Equal_within_epsilon.vi"/>
			<Item Name="MC_Range_Check_Step_Iter.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/RangeToken/MC_Range_Check_Step_Iter.vi"/>
			<Item Name="NIMS_Range_Compute_Iterations.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/RangeToken/NIMS_Range_Compute_Iterations.vi"/>
			<Item Name="NIMS_Range_Compute_Iterations_E8D80E2E2826472C92413183A93F3170_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Range_Compute_Iterations_E8D80E2E2826472C92413183A93F3170.lvgen/NIMS_Range_Compute_Iterations_E8D80E2E2826472C92413183A93F3170_000.vi"/>
			<Item Name="NIMS_Range.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/RangeToken/NIMS_Range.vi"/>
			<Item Name="NIMS_Replace - Range3.ctl" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/RangeToken/NIMS_Replace - Range3.ctl"/>
			<Item Name="NIMS_Range_1C63927E4E474DADACDA97C3F2261A11_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Range_1C63927E4E474DADACDA97C3F2261A11.lvgen/NIMS_Range_1C63927E4E474DADACDA97C3F2261A11_000.vi"/>
			<Item Name="NIMS_Range_R3 To Vector.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/RangeToken/NIMS_Range_R3 To Vector.vi"/>
			<Item Name="NIMS_Replace - Range2.ctl" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/RangeToken/NIMS_Replace - Range2.ctl"/>
			<Item Name="NIMS_Range_R2 To Vector.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/RangeToken/NIMS_Range_R2 To Vector.vi"/>
			<Item Name="NIMS_Flatten Matrix To Vector Columnwise.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeSupport/NIMS_Flatten Matrix To Vector Columnwise.vi"/>
			<Item Name="NIMS_Vector To Vector.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeSupport/NIMS_Vector To Vector.vi"/>
			<Item Name="NIMS_Scalar To Vector.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeSupport/NIMS_Scalar To Vector.vi"/>
			<Item Name="NIMS_Scalar To Vector_526099F02FA845BCA46C807D36D75AB9_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Scalar To Vector_526099F02FA845BCA46C807D36D75AB9.lvgen/NIMS_Scalar To Vector_526099F02FA845BCA46C807D36D75AB9_000.vi"/>
			<Item Name="NIMS_Vector To Vector_DF3E40CCD78A4E4299B1101B8B9A09D5_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Vector To Vector_DF3E40CCD78A4E4299B1101B8B9A09D5.lvgen/NIMS_Vector To Vector_DF3E40CCD78A4E4299B1101B8B9A09D5_000.vi"/>
			<Item Name="NIMS_Flatten Matrix To Vector Columnwise_E51E2C92B65C42C3B86FD86A31734DC6_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Flatten Matrix To Vector Columnwise_E51E2C92B65C42C3B86FD86A31734DC6.lvgen/NIMS_Flatten Matrix To Vector Columnwise_E51E2C92B65C42C3B86FD86A31734DC6_000.vi"/>
			<Item Name="NIMS_Vector To Vector_DF3E40CCD78A4E4299B1101B8B9A09D5_001.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Vector To Vector_DF3E40CCD78A4E4299B1101B8B9A09D5.lvgen/NIMS_Vector To Vector_DF3E40CCD78A4E4299B1101B8B9A09D5_001.vi"/>
			<Item Name="NIMS_Replace - V(_)=[].vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - V(_)=[].vi"/>
			<Item Name="NIMS_Replace - V(_)=[]_3E6CB79993A64D03988A49E84158C6E1_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - V(_)=[]_3E6CB79993A64D03988A49E84158C6E1.lvgen/NIMS_Replace - V(_)=[]_3E6CB79993A64D03988A49E84158C6E1_000.vi"/>
			<Item Name="NIMS_Replace - M(_)=[].vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - M(_)=[].vi"/>
			<Item Name="NIMS_Replace - M(_)=[]_9CD0F85F738243B1943B7E2C81058B75_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - M(_)=[]_9CD0F85F738243B1943B7E2C81058B75.lvgen/NIMS_Replace - M(_)=[]_9CD0F85F738243B1943B7E2C81058B75_000.vi"/>
			<Item Name="NIMS_Replace - V(R3)=S.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - V(R3)=S.vi"/>
			<Item Name="NIMS_Replace - M(R3)=S.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - M(R3)=S.vi"/>
			<Item Name="NIMS_Replace - M(R2)=S.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - M(R2)=S.vi"/>
			<Item Name="NIMS_Replace - V(R2)=S.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - V(R2)=S.vi"/>
			<Item Name="NIMS_Replace - M(M)=S.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - M(M)=S.vi"/>
			<Item Name="NIMS_Replace - M(V)=S.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - M(V)=S.vi"/>
			<Item Name="NIMS_Replace - V(M)=S.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - V(M)=S.vi"/>
			<Item Name="NIMS_Replace - V(V)=S.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - V(V)=S.vi"/>
			<Item Name="NIMS_Replace - M(S)=S.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - M(S)=S.vi"/>
			<Item Name="NIMS_Replace - V(S)=S.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - V(S)=S.vi"/>
			<Item Name="NIMS_Replace - V(S)=S_78FDB6CCD265407D8926E4CF958018EB_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - V(S)=S_78FDB6CCD265407D8926E4CF958018EB.lvgen/NIMS_Replace - V(S)=S_78FDB6CCD265407D8926E4CF958018EB_000.vi"/>
			<Item Name="NIMS_Replace - M(S)=S_DC75C296F1E74E329FF10A0CBB0796ED_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - M(S)=S_DC75C296F1E74E329FF10A0CBB0796ED.lvgen/NIMS_Replace - M(S)=S_DC75C296F1E74E329FF10A0CBB0796ED_000.vi"/>
			<Item Name="NIMS_Replace - V(V)=S_03AD7DB4159C45AD96EA6C20AFF20885_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - V(V)=S_03AD7DB4159C45AD96EA6C20AFF20885.lvgen/NIMS_Replace - V(V)=S_03AD7DB4159C45AD96EA6C20AFF20885_000.vi"/>
			<Item Name="NIMS_Replace - V(M)=S_020283413D164A40A489291880AD8E80_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - V(M)=S_020283413D164A40A489291880AD8E80.lvgen/NIMS_Replace - V(M)=S_020283413D164A40A489291880AD8E80_000.vi"/>
			<Item Name="NIMS_Replace - M(V)=S_6B34913FC53F47C3B370A5EF1AE9A476_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - M(V)=S_6B34913FC53F47C3B370A5EF1AE9A476.lvgen/NIMS_Replace - M(V)=S_6B34913FC53F47C3B370A5EF1AE9A476_000.vi"/>
			<Item Name="NIMS_Replace - M(M)=S_C1A5B71C5FC543AE9E83B27F5228BF51_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - M(M)=S_C1A5B71C5FC543AE9E83B27F5228BF51.lvgen/NIMS_Replace - M(M)=S_C1A5B71C5FC543AE9E83B27F5228BF51_000.vi"/>
			<Item Name="NIMS_Replace - V(R2)=S_86EAFE7C132F4D56AE423735771E7E6A_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - V(R2)=S_86EAFE7C132F4D56AE423735771E7E6A.lvgen/NIMS_Replace - V(R2)=S_86EAFE7C132F4D56AE423735771E7E6A_000.vi"/>
			<Item Name="NIMS_Replace - V(R3)=S_C3273A4E4CEC423DAAD65E20982F31B6_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - V(R3)=S_C3273A4E4CEC423DAAD65E20982F31B6.lvgen/NIMS_Replace - V(R3)=S_C3273A4E4CEC423DAAD65E20982F31B6_000.vi"/>
			<Item Name="NIMS_Replace - M(R3)=S_77EE77E6CF2E493592A77F8952D41324_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - M(R3)=S_77EE77E6CF2E493592A77F8952D41324.lvgen/NIMS_Replace - M(R3)=S_77EE77E6CF2E493592A77F8952D41324_000.vi"/>
			<Item Name="NIMS_Replace - M(R2)=S_1C0BBBB2486E4EF3ACE7FC7CF7E9D89D_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - M(R2)=S_1C0BBBB2486E4EF3ACE7FC7CF7E9D89D.lvgen/NIMS_Replace - M(R2)=S_1C0BBBB2486E4EF3ACE7FC7CF7E9D89D_000.vi"/>
			<Item Name="NIMS_Get Scalar - Vector.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeSupport/NIMS_Get Scalar - Vector.vi"/>
			<Item Name="NIMS_Get Scalar - Matrix.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeSupport/NIMS_Get Scalar - Matrix.vi"/>
			<Item Name="NIMS_Get Scalar - Scalar.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeSupport/NIMS_Get Scalar - Scalar.vi"/>
			<Item Name="NIMS_Get Scalar - Scalar_5A4BDE8734A347C995A92797C9293A32_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Get Scalar - Scalar_5A4BDE8734A347C995A92797C9293A32.lvgen/NIMS_Get Scalar - Scalar_5A4BDE8734A347C995A92797C9293A32_000.vi"/>
			<Item Name="NIMS_Get Scalar - Matrix_1E430E5CAF9140B2A906F03FDAFA275A_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Get Scalar - Matrix_1E430E5CAF9140B2A906F03FDAFA275A.lvgen/NIMS_Get Scalar - Matrix_1E430E5CAF9140B2A906F03FDAFA275A_000.vi"/>
			<Item Name="NIMS_Get Scalar - Vector_A71547F357DE42FF9547CA52A4646AC2_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Get Scalar - Vector_A71547F357DE42FF9547CA52A4646AC2.lvgen/NIMS_Get Scalar - Vector_A71547F357DE42FF9547CA52A4646AC2_000.vi"/>
			<Item Name="NIMS_Replace - V(S)=V.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - V(S)=V.vi"/>
			<Item Name="NIMS_Replace - V(S)=M.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - V(S)=M.vi"/>
			<Item Name="NIMS_Replace - M(S)=V.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - M(S)=V.vi"/>
			<Item Name="NIMS_Replace - M(S)=M.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - M(S)=M.vi"/>
			<Item Name="NIMS_Replace - V(V)=V.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - V(V)=V.vi"/>
			<Item Name="NIMS_Replace - V(V)=M.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - V(V)=M.vi"/>
			<Item Name="NIMS_Replace - V(M)=V.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - V(M)=V.vi"/>
			<Item Name="NIMS_Replace - V(M)=M.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - V(M)=M.vi"/>
			<Item Name="NIMS_Replace - M(V)=V.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - M(V)=V.vi"/>
			<Item Name="NIMS_Replace - M(V)=M.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - M(V)=M.vi"/>
			<Item Name="NIMS_Replace - M(M)=V.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - M(M)=V.vi"/>
			<Item Name="NIMS_Replace - M(M)=M.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - M(M)=M.vi"/>
			<Item Name="NIMS_Replace - V(R3)=V.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - V(R3)=V.vi"/>
			<Item Name="NIMS_Replace - V(R2)=V.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - V(R2)=V.vi"/>
			<Item Name="NIMS_Replace - V(R3)=M.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - V(R3)=M.vi"/>
			<Item Name="NIMS_Replace - V(R2)=M.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - V(R2)=M.vi"/>
			<Item Name="NIMS_Replace - M(R3)=V.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - M(R3)=V.vi"/>
			<Item Name="NIMS_Replace - M(R2)=V.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - M(R2)=V.vi"/>
			<Item Name="NIMS_Replace - M(R3)=M.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - M(R3)=M.vi"/>
			<Item Name="NIMS_Replace - M(R2)=M.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - M(R2)=M.vi"/>
			<Item Name="NIMS_Replace - V(S)=V_DE347C778DA44E4F885EA57F1D343A79_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - V(S)=V_DE347C778DA44E4F885EA57F1D343A79.lvgen/NIMS_Replace - V(S)=V_DE347C778DA44E4F885EA57F1D343A79_000.vi"/>
			<Item Name="NIMS_Replace - V(S)=M_32230B49F5C3406FB812F8CA75F64364_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - V(S)=M_32230B49F5C3406FB812F8CA75F64364.lvgen/NIMS_Replace - V(S)=M_32230B49F5C3406FB812F8CA75F64364_000.vi"/>
			<Item Name="NIMS_Replace - M(S)=V_02207EE0E9A443C4852374BEAD392E5F_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - M(S)=V_02207EE0E9A443C4852374BEAD392E5F.lvgen/NIMS_Replace - M(S)=V_02207EE0E9A443C4852374BEAD392E5F_000.vi"/>
			<Item Name="NIMS_Replace - M(S)=M_7FD28891886840D0A8E483874229959F_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - M(S)=M_7FD28891886840D0A8E483874229959F.lvgen/NIMS_Replace - M(S)=M_7FD28891886840D0A8E483874229959F_000.vi"/>
			<Item Name="NIMS_Replace - V(V)=V_2E6A7637A7E947E4B80C7A5AB26EEAC4_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - V(V)=V_2E6A7637A7E947E4B80C7A5AB26EEAC4.lvgen/NIMS_Replace - V(V)=V_2E6A7637A7E947E4B80C7A5AB26EEAC4_000.vi"/>
			<Item Name="NIMS_Replace - V(V)=M_BBE1FB37F43A4B1A8D2110B4A14003CE_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - V(V)=M_BBE1FB37F43A4B1A8D2110B4A14003CE.lvgen/NIMS_Replace - V(V)=M_BBE1FB37F43A4B1A8D2110B4A14003CE_000.vi"/>
			<Item Name="NIMS_Replace - V(M)=V_9A7CE11A92BE4FC99C4FF05C7D15FB16_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - V(M)=V_9A7CE11A92BE4FC99C4FF05C7D15FB16.lvgen/NIMS_Replace - V(M)=V_9A7CE11A92BE4FC99C4FF05C7D15FB16_000.vi"/>
			<Item Name="NIMS_Replace - V(M)=M_BB73637838F24F028375DA04AECBADAE_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - V(M)=M_BB73637838F24F028375DA04AECBADAE.lvgen/NIMS_Replace - V(M)=M_BB73637838F24F028375DA04AECBADAE_000.vi"/>
			<Item Name="NIMS_Replace - M(V)=V_6BABD8EC389948E1942BA5DB24F4FF56_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - M(V)=V_6BABD8EC389948E1942BA5DB24F4FF56.lvgen/NIMS_Replace - M(V)=V_6BABD8EC389948E1942BA5DB24F4FF56_000.vi"/>
			<Item Name="NIMS_Replace - M(V)=M_504FD2394C4E4231921EE776F41FA7FD_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - M(V)=M_504FD2394C4E4231921EE776F41FA7FD.lvgen/NIMS_Replace - M(V)=M_504FD2394C4E4231921EE776F41FA7FD_000.vi"/>
			<Item Name="NIMS_Replace - M(M)=V_B4658484F1B343C7B653EC1E880910F1_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - M(M)=V_B4658484F1B343C7B653EC1E880910F1.lvgen/NIMS_Replace - M(M)=V_B4658484F1B343C7B653EC1E880910F1_000.vi"/>
			<Item Name="NIMS_Replace - M(M)=M_5D701996509048708FAF553E8624F697_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - M(M)=M_5D701996509048708FAF553E8624F697.lvgen/NIMS_Replace - M(M)=M_5D701996509048708FAF553E8624F697_000.vi"/>
			<Item Name="NIMS_Replace - V(R3)=V_0935807DE8684E6E8958F4FC2B20D9FB_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - V(R3)=V_0935807DE8684E6E8958F4FC2B20D9FB.lvgen/NIMS_Replace - V(R3)=V_0935807DE8684E6E8958F4FC2B20D9FB_000.vi"/>
			<Item Name="NIMS_Replace - V(R2)=V_96DAFDC346F548EF91D7DCC22BA481D8_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - V(R2)=V_96DAFDC346F548EF91D7DCC22BA481D8.lvgen/NIMS_Replace - V(R2)=V_96DAFDC346F548EF91D7DCC22BA481D8_000.vi"/>
			<Item Name="NIMS_Replace - V(R3)=M_50D60CA6147F4476AC02CFB70F089C4B_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - V(R3)=M_50D60CA6147F4476AC02CFB70F089C4B.lvgen/NIMS_Replace - V(R3)=M_50D60CA6147F4476AC02CFB70F089C4B_000.vi"/>
			<Item Name="NIMS_Replace - V(R2)=M_C450CB496AEC4B4AB0D7053FE9D3CC7A_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - V(R2)=M_C450CB496AEC4B4AB0D7053FE9D3CC7A.lvgen/NIMS_Replace - V(R2)=M_C450CB496AEC4B4AB0D7053FE9D3CC7A_000.vi"/>
			<Item Name="NIMS_Replace - M(R3)=V_8AD93DAF6C904B54A2D6B8FE2C8700B5_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - M(R3)=V_8AD93DAF6C904B54A2D6B8FE2C8700B5.lvgen/NIMS_Replace - M(R3)=V_8AD93DAF6C904B54A2D6B8FE2C8700B5_000.vi"/>
			<Item Name="NIMS_Replace - M(R2)=V_4887BAA4B8BC4A1784894B094BE1107D_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - M(R2)=V_4887BAA4B8BC4A1784894B094BE1107D.lvgen/NIMS_Replace - M(R2)=V_4887BAA4B8BC4A1784894B094BE1107D_000.vi"/>
			<Item Name="NIMS_Replace - M(R3)=M_138E83F04B3343019AADB9DBAA0E9BB3_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - M(R3)=M_138E83F04B3343019AADB9DBAA0E9BB3.lvgen/NIMS_Replace - M(R3)=M_138E83F04B3343019AADB9DBAA0E9BB3_000.vi"/>
			<Item Name="NIMS_Replace - M(R2)=M_7A7FE4A880074A7894A7F6DEAC70AA91_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - M(R2)=M_7A7FE4A880074A7894A7F6DEAC70AA91.lvgen/NIMS_Replace - M(R2)=M_7A7FE4A880074A7894A7F6DEAC70AA91_000.vi"/>
			<Item Name="NIMS_Replace - Assignment Format.ctl" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - Assignment Format.ctl"/>
			<Item Name="NIMS_Replace - Assignment Check _(_)=VorM.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - Assignment Check _(_)=VorM.vi"/>
			<Item Name="NIMS_Grow Vector - Vector.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Grow Vector - Vector.vi"/>
			<Item Name="NIMS_Grow Matrix.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Grow Matrix.vi"/>
			<Item Name="NIMS_Grow Matrix_50E491F312E64D308CF036A0202C8DE5_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Grow Matrix_50E491F312E64D308CF036A0202C8DE5.lvgen/NIMS_Grow Matrix_50E491F312E64D308CF036A0202C8DE5_000.vi"/>
			<Item Name="NIMS_Grow Vector - Matrix.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Grow Vector - Matrix.vi"/>
			<Item Name="NIMS_Grow Vector - Vector_0F7B9864027A49AB8CF222BDCEF5509B_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Grow Vector - Vector_0F7B9864027A49AB8CF222BDCEF5509B.lvgen/NIMS_Grow Vector - Vector_0F7B9864027A49AB8CF222BDCEF5509B_000.vi"/>
			<Item Name="NIMS_Grow Vector - Matrix_0FF4B90DE29044CFB29C57C84224465D_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Grow Vector - Matrix_0FF4B90DE29044CFB29C57C84224465D.lvgen/NIMS_Grow Vector - Matrix_0FF4B90DE29044CFB29C57C84224465D_000.vi"/>
			<Item Name="NIMS_Replace - Resize Needed 1D.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - Resize Needed 1D.vi"/>
			<Item Name="NIMS_Replace - Determine Assignment Format 1D.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - Determine Assignment Format 1D.vi"/>
			<Item Name="NIMS_Replace - Get Dims R3.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - Get Dims R3.vi"/>
			<Item Name="NIMS_Replace - Get Dims R2.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - Get Dims R2.vi"/>
			<Item Name="NIMS_Replace - Get Dims Scalar.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - Get Dims Scalar.vi"/>
			<Item Name="NIMS_Replace - Get Dims Matrix.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - Get Dims Matrix.vi"/>
			<Item Name="NIMS_Replace - Get Dims Vector.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - Get Dims Vector.vi"/>
			<Item Name="NIMS_Replace - Get Dims Scalar_41576B403CBD4961B191FEEAB55E3777_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - Get Dims Scalar_41576B403CBD4961B191FEEAB55E3777.lvgen/NIMS_Replace - Get Dims Scalar_41576B403CBD4961B191FEEAB55E3777_000.vi"/>
			<Item Name="NIMS_Replace - Get Dims Vector_0148CEE0D65143AD8EFB93349F5363FC_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - Get Dims Vector_0148CEE0D65143AD8EFB93349F5363FC.lvgen/NIMS_Replace - Get Dims Vector_0148CEE0D65143AD8EFB93349F5363FC_000.vi"/>
			<Item Name="NIMS_Replace - Get Dims Matrix_8A2A58E1ACB84C40AD7808B8A16677F5_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - Get Dims Matrix_8A2A58E1ACB84C40AD7808B8A16677F5.lvgen/NIMS_Replace - Get Dims Matrix_8A2A58E1ACB84C40AD7808B8A16677F5_000.vi"/>
			<Item Name="NIMS_Replace - Get Dims Vector_0148CEE0D65143AD8EFB93349F5363FC_001.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - Get Dims Vector_0148CEE0D65143AD8EFB93349F5363FC.lvgen/NIMS_Replace - Get Dims Vector_0148CEE0D65143AD8EFB93349F5363FC_001.vi"/>
			<Item Name="NIMS_Replace - Size Check _(_)=VorM.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - Size Check _(_)=VorM.vi"/>
			<Item Name="NIMS_M_Check_R3_Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_M_Check_R3_Index.vi"/>
			<Item Name="NIMS_M_Check_R2_Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_M_Check_R2_Index.vi"/>
			<Item Name="NIMS_V_Check_R3_Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_V_Check_R3_Index.vi"/>
			<Item Name="NIMS_S_Check_R2_Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_S_Check_R2_Index.vi"/>
			<Item Name="NIMS_S_Check_R3_Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_S_Check_R3_Index.vi"/>
			<Item Name="NIMS_V_Check_R2_Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_V_Check_R2_Index.vi"/>
			<Item Name="NIMS_S_Check_S_Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_S_Check_S_Index.vi"/>
			<Item Name="NIMS_And Array Elements.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeSupport/NIMS_And Array Elements.vi"/>
			<Item Name="NIMS_And Scalar Element.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeSupport/NIMS_And Scalar Element.vi"/>
			<Item Name="NIMS_And Array Elements_631861BECDC54B97B1BA31611A562819_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_And Array Elements_631861BECDC54B97B1BA31611A562819.lvgen/NIMS_And Array Elements_631861BECDC54B97B1BA31611A562819_000.vi"/>
			<Item Name="NIMS_S_Check_VorM_Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_S_Check_VorM_Index.vi"/>
			<Item Name="NIMS_V_Check_VorM_Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_V_Check_VorM_Index.vi"/>
			<Item Name="NIMS_V_Check_S_Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_V_Check_S_Index.vi"/>
			<Item Name="NIMS_M_Check_S_Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_M_Check_S_Index.vi"/>
			<Item Name="NIMS_M_Check_VorM_Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_M_Check_VorM_Index.vi"/>
			<Item Name="NIMS_M_Check_VorM_Index_9941B787820C470B85BF9C9D4F6C0C6D_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_M_Check_VorM_Index_9941B787820C470B85BF9C9D4F6C0C6D.lvgen/NIMS_M_Check_VorM_Index_9941B787820C470B85BF9C9D4F6C0C6D_000.vi"/>
			<Item Name="NIMS_M_Check_S_Index_6C2E43F40DF04AB7AC861AED8498117F_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_M_Check_S_Index_6C2E43F40DF04AB7AC861AED8498117F.lvgen/NIMS_M_Check_S_Index_6C2E43F40DF04AB7AC861AED8498117F_000.vi"/>
			<Item Name="NIMS_V_Check_VorM_Index_A41EC0B2D46F469BA0D118C81D7FAB20_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_V_Check_VorM_Index_A41EC0B2D46F469BA0D118C81D7FAB20.lvgen/NIMS_V_Check_VorM_Index_A41EC0B2D46F469BA0D118C81D7FAB20_000.vi"/>
			<Item Name="NIMS_V_Check_S_Index_1B3A1D02FE1341DD90AAF85B01B8FF3B_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_V_Check_S_Index_1B3A1D02FE1341DD90AAF85B01B8FF3B.lvgen/NIMS_V_Check_S_Index_1B3A1D02FE1341DD90AAF85B01B8FF3B_000.vi"/>
			<Item Name="NIMS_S_Check_VorM_Index_D381BFED79A74A629F205F1908EA34E3_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_S_Check_VorM_Index_D381BFED79A74A629F205F1908EA34E3.lvgen/NIMS_S_Check_VorM_Index_D381BFED79A74A629F205F1908EA34E3_000.vi"/>
			<Item Name="NIMS_S_Check_S_Index_F47685525A604848B641FFFB95C01280_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_S_Check_S_Index_F47685525A604848B641FFFB95C01280.lvgen/NIMS_S_Check_S_Index_F47685525A604848B641FFFB95C01280_000.vi"/>
			<Item Name="NIMS_M_Check_R3_Index_17C28E3853C14DADB56913B88E5C5D2D_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_M_Check_R3_Index_17C28E3853C14DADB56913B88E5C5D2D.lvgen/NIMS_M_Check_R3_Index_17C28E3853C14DADB56913B88E5C5D2D_000.vi"/>
			<Item Name="NIMS_M_Check_R2_Index_58405C0DC17049A9995A8E998BBA5783_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_M_Check_R2_Index_58405C0DC17049A9995A8E998BBA5783.lvgen/NIMS_M_Check_R2_Index_58405C0DC17049A9995A8E998BBA5783_000.vi"/>
			<Item Name="NIMS_V_Check_R3_Index_EB158D3003744B2A8E5DEED7FE9B25D1_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_V_Check_R3_Index_EB158D3003744B2A8E5DEED7FE9B25D1.lvgen/NIMS_V_Check_R3_Index_EB158D3003744B2A8E5DEED7FE9B25D1_000.vi"/>
			<Item Name="NIMS_V_Check_R2_Index_0CF0EF6F08964BBC8E3339DBE90EDA4A_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_V_Check_R2_Index_0CF0EF6F08964BBC8E3339DBE90EDA4A.lvgen/NIMS_V_Check_R2_Index_0CF0EF6F08964BBC8E3339DBE90EDA4A_000.vi"/>
			<Item Name="NIMS_S_Check_R3_Index_0AC90A50AE5948DEAFB1093AEE95E5F3_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_S_Check_R3_Index_0AC90A50AE5948DEAFB1093AEE95E5F3.lvgen/NIMS_S_Check_R3_Index_0AC90A50AE5948DEAFB1093AEE95E5F3_000.vi"/>
			<Item Name="NIMS_S_Check_R2_Index_3FB747B10E3842D6AC1C933B5A06D632_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_S_Check_R2_Index_3FB747B10E3842D6AC1C933B5A06D632.lvgen/NIMS_S_Check_R2_Index_3FB747B10E3842D6AC1C933B5A06D632_000.vi"/>
			<Item Name="NIMS_Replace - Check Linear.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - Check Linear.vi"/>
			<Item Name="NIMS_length(GV).vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/BuiltInFunctions/length/NIMS_length(GV).vi"/>
			<Item Name="NIMS_Get Elements - V(R2).vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Read/NIMS_Get Elements - V(R2).vi"/>
			<Item Name="NIMS_Get Elements - V(S).vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Read/NIMS_Get Elements - V(S).vi"/>
			<Item Name="NIMS_Get Elements - V(V).vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Read/NIMS_Get Elements - V(V).vi"/>
			<Item Name="NIMS_Get Elements - RV(M).vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Read/NIMS_Get Elements - RV(M).vi"/>
			<Item Name="NIMS_Get Elements - RV(M)_26B0FF57CBD149438820B5A2EA9835D0_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Get Elements - RV(M)_26B0FF57CBD149438820B5A2EA9835D0.lvgen/NIMS_Get Elements - RV(M)_26B0FF57CBD149438820B5A2EA9835D0_000.vi"/>
			<Item Name="NIMS_Get Elements - V(V)_D802331D13C1477FBB264FA67E6BC4E8_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Get Elements - V(V)_D802331D13C1477FBB264FA67E6BC4E8.lvgen/NIMS_Get Elements - V(V)_D802331D13C1477FBB264FA67E6BC4E8_000.vi"/>
			<Item Name="NIMS_Get Elements - V(R2)_6908C3CBC145405FBDD78690B7F1945D_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Get Elements - V(R2)_6908C3CBC145405FBDD78690B7F1945D.lvgen/NIMS_Get Elements - V(R2)_6908C3CBC145405FBDD78690B7F1945D_000.vi"/>
			<Item Name="NIMS_Get Elements - V(S)_C99A26467DB24FA3A79619D034B25FD8_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Get Elements - V(S)_C99A26467DB24FA3A79619D034B25FD8.lvgen/NIMS_Get Elements - V(S)_C99A26467DB24FA3A79619D034B25FD8_000.vi"/>
			<Item Name="NIMS_Get Elements - RV(_) - Check.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Read/NIMS_Get Elements - RV(_) - Check.vi"/>
			<Item Name="NIMS_sort_real.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/BuiltInFunctions/sort/NIMS_sort_real.vi"/>
			<Item Name="NIMS_sort_real_145CFFB80E864A93A09BAF33145C1565_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_sort_real_145CFFB80E864A93A09BAF33145C1565.lvgen/NIMS_sort_real_145CFFB80E864A93A09BAF33145C1565_000.vi"/>
			<Item Name="NIMS_[2o]_sort(RRowV,I32,Str).vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/BuiltInFunctions/sort/NIMS_[2o]_sort(RRowV,I32,Str).vi"/>
			<Item Name="NIMS_DBL Index to I32 Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_DBL Index to I32 Index.vi"/>
			<Item Name="NIMS_Complex Is Real.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeSupport/NIMS_Complex Is Real.vi"/>
			<Item Name="NIMS_DBL Index to I32 Index_7BB6E1164FCD413DA3058BD0442BB432_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_DBL Index to I32 Index_7BB6E1164FCD413DA3058BD0442BB432.lvgen/NIMS_DBL Index to I32 Index_7BB6E1164FCD413DA3058BD0442BB432_000.vi"/>
			<Item Name="NIMS_Complex Is Real_BCCCE425E10B42D99B0B06E87470C368_002.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Complex Is Real_BCCCE425E10B42D99B0B06E87470C368.lvgen/NIMS_Complex Is Real_BCCCE425E10B42D99B0B06E87470C368_002.vi"/>
			<Item Name="NIMS_Complex Index to I32 Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_Complex Index to I32 Index.vi"/>
			<Item Name="MC_Subscripts_to_Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/MC_Matrix_Indexing/MC_Support/MC_Subscripts_to_Index.vi"/>
			<Item Name="NIMS_Matrix Boolean Index to I32 Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_Matrix Boolean Index to I32 Index.vi"/>
			<Item Name="NIMS_Vector Boolean Index to I32 Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_Vector Boolean Index to I32 Index.vi"/>
			<Item Name="NIMS_Scalar Boolean Index to I32 Index.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Support/NIMS_Scalar Boolean Index to I32 Index.vi"/>
			<Item Name="NIMS_Complex Index to I32 Index_E6BBD096F76B426E945A1E1EEB24330D_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Complex Index to I32 Index_E6BBD096F76B426E945A1E1EEB24330D.lvgen/NIMS_Complex Index to I32 Index_E6BBD096F76B426E945A1E1EEB24330D_000.vi"/>
			<Item Name="NIMS_Get Elements - RV(_) - Check(_).vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/VariableToken/Read/NIMS_Get Elements - RV(_) - Check(_).vi"/>
			<Item Name="NIMS_NodeEndStatement_Output.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/NodeEndStatement/NIMS_NodeEndStatement_Output.vi"/>
			<Item Name="MC_Registration_Global.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/Managers/GlobalRegistration/MC_Registration_Global.vi"/>
			<Item Name="MC_Registered_VIs_Global.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/Managers/GlobalRegistration/MC_Registered_VIs_Global.vi"/>
			<Item Name="MC_Close_All_Registered_SubVI.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/Managers/GlobalRegistration/MC_Close_All_Registered_SubVI.vi"/>
			<Item Name="MC_Register_Notification_Command.ctl" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/Managers/GlobalRegistration/MC_Register_Notification_Command.ctl"/>
			<Item Name="MC_Register_Notification_Type.ctl" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/Managers/GlobalRegistration/MC_Register_Notification_Type.ctl"/>
			<Item Name="MC_Get_Notification_Event.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/Managers/GlobalRegistration/MC_Get_Notification_Event.vi"/>
			<Item Name="MC_Registered_VIs.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/Managers/GlobalRegistration/MC_Registered_VIs.vi"/>
			<Item Name="MC_Register_VI_In_Memory.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/Managers/GlobalRegistration/MC_Register_VI_In_Memory.vi"/>
			<Item Name="MC_GlobalManager_Actions.ctl" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/Managers/GlobalManager/MC_GlobalManager_Actions.ctl"/>
			<Item Name="MC_GlobalManager.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/Managers/GlobalManager/MC_GlobalManager.vi"/>
			<Item Name="MC_Global_NamesAndDefaultValues.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/Constants/MC_Global_NamesAndDefaultValues.vi"/>
			<Item Name="Untranslate Error.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath/Functions/Error Handling/Untranslate Error.vi"/>
			<Item Name="NIMS_Finalize Error.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ErrorHandling/NIMS_Finalize Error.vi"/>
			<Item Name="NIMS_is_empty(GV)_FC7E7C3D9544432CB6AA2416ADCF6D56_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_is_empty(GV)_FC7E7C3D9544432CB6AA2416ADCF6D56.lvgen/NIMS_is_empty(GV)_FC7E7C3D9544432CB6AA2416ADCF6D56_000.vi"/>
			<Item Name="NIMS_findnz_Rotate_Matrix_BA3F545161D8454E94DAA185DE99192D_005.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_findnz_Rotate_Matrix_BA3F545161D8454E94DAA185DE99192D.lvgen/NIMS_findnz_Rotate_Matrix_BA3F545161D8454E94DAA185DE99192D_005.vi"/>
			<Item Name="NIMS_findnz_core_2ADB407513D24EB7975C76F1663C01AA_005.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_findnz_core_2ADB407513D24EB7975C76F1663C01AA.lvgen/NIMS_findnz_core_2ADB407513D24EB7975C76F1663C01AA_005.vi"/>
			<Item Name="NIMS_[1o]_findnz(GRowV)_005A6E28988F485CA06F579662DA62C7_002.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_[1o]_findnz(GRowV)_005A6E28988F485CA06F579662DA62C7.lvgen/NIMS_[1o]_findnz(GRowV)_005A6E28988F485CA06F579662DA62C7_002.vi"/>
			<Item Name="NIMS_Replace - Assignment Check _(_)=VorM_C130F3B8B64B4DD7B9359A2D3A035D18_007.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - Assignment Check _(_)=VorM_C130F3B8B64B4DD7B9359A2D3A035D18.lvgen/NIMS_Replace - Assignment Check _(_)=VorM_C130F3B8B64B4DD7B9359A2D3A035D18_007.vi"/>
			<Item Name="NIMS_Replace - Size Check _(_)=VorM_4228B35EE910471DB74F3866D9D09B95_007.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - Size Check _(_)=VorM_4228B35EE910471DB74F3866D9D09B95.lvgen/NIMS_Replace - Size Check _(_)=VorM_4228B35EE910471DB74F3866D9D09B95_007.vi"/>
			<Item Name="NIMS_Replace - Check Linear_662D5651E4E34E0584DA82A256193A4C_007.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - Check Linear_662D5651E4E34E0584DA82A256193A4C.lvgen/NIMS_Replace - Check Linear_662D5651E4E34E0584DA82A256193A4C_007.vi"/>
			<Item Name="NIMS_length(GV)_08A3D13377FD4E4B96F5795FBF3698FA_002.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_length(GV)_08A3D13377FD4E4B96F5795FBF3698FA.lvgen/NIMS_length(GV)_08A3D13377FD4E4B96F5795FBF3698FA_002.vi"/>
			<Item Name="NIMS_Get Elements - V(V)_D802331D13C1477FBB264FA67E6BC4E8_001.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Get Elements - V(V)_D802331D13C1477FBB264FA67E6BC4E8.lvgen/NIMS_Get Elements - V(V)_D802331D13C1477FBB264FA67E6BC4E8_001.vi"/>
			<Item Name="NIMS_V_Check_VorM_Index_A41EC0B2D46F469BA0D118C81D7FAB20_002.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_V_Check_VorM_Index_A41EC0B2D46F469BA0D118C81D7FAB20.lvgen/NIMS_V_Check_VorM_Index_A41EC0B2D46F469BA0D118C81D7FAB20_002.vi"/>
			<Item Name="NIMS_Get Elements - RV(_) - Check_1F6F8656162345078B1D4DC9877DFAE9_003.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Get Elements - RV(_) - Check_1F6F8656162345078B1D4DC9877DFAE9.lvgen/NIMS_Get Elements - RV(_) - Check_1F6F8656162345078B1D4DC9877DFAE9_003.vi"/>
			<Item Name="NIMS_sort_real_145CFFB80E864A93A09BAF33145C1565_003.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_sort_real_145CFFB80E864A93A09BAF33145C1565.lvgen/NIMS_sort_real_145CFFB80E864A93A09BAF33145C1565_003.vi"/>
			<Item Name="NIMS_[2o]_sort(RRowV,I32,Str)_1834406CABAC430BB40FEC772A4FC192_001.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_[2o]_sort(RRowV,I32,Str)_1834406CABAC430BB40FEC772A4FC192.lvgen/NIMS_[2o]_sort(RRowV,I32,Str)_1834406CABAC430BB40FEC772A4FC192_001.vi"/>
			<Item Name="NIMS_Get Elements - RV(_) - Check(_)_260A45C9C4AF472A8F32F86A1BEF7DEE_001.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Get Elements - RV(_) - Check(_)_260A45C9C4AF472A8F32F86A1BEF7DEE.lvgen/NIMS_Get Elements - RV(_) - Check(_)_260A45C9C4AF472A8F32F86A1BEF7DEE_001.vi"/>
			<Item Name="NIMS_NodeEndStatement_Output_53EC0D466D134D7ABD903AC30B43404B_001.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_NodeEndStatement_Output_53EC0D466D134D7ABD903AC30B43404B.lvgen/NIMS_NodeEndStatement_Output_53EC0D466D134D7ABD903AC30B43404B_001.vi"/>
			<Item Name="NIMS_NodeEndStatement_Output_53EC0D466D134D7ABD903AC30B43404B_005.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_NodeEndStatement_Output_53EC0D466D134D7ABD903AC30B43404B.lvgen/NIMS_NodeEndStatement_Output_53EC0D466D134D7ABD903AC30B43404B_005.vi"/>
			<Item Name="NIMS_NodeEndStatement_Output_53EC0D466D134D7ABD903AC30B43404B_004.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_NodeEndStatement_Output_53EC0D466D134D7ABD903AC30B43404B.lvgen/NIMS_NodeEndStatement_Output_53EC0D466D134D7ABD903AC30B43404B_004.vi"/>
			<Item Name="ni.dex.rc" Type="Document" URL="../../../Program Files/National Instruments/LabVIEW 2010/resource/objmgr/ni.dex.rc"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="DisplayTetrodes" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{A4869D5B-DD2A-4DF0-84D8-212A8458089E}</Property>
				<Property Name="App_INI_GUID" Type="Str">{AD35DC58-9BA7-4F60-93EF-0BDA4C6AC4A7}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">DisplayTetrodes</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/DataDisplay/DisplayTetrodes</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Destination[0].destName" Type="Str">DisplayTetrodes.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/DisplayTetrodes/DisplayTetrodes.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/DisplayTetrodes/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/TETRODE.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{E80CCB94-4CC5-4150-BB1E-1E0F4567E877}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/DisplayTetrodes.lvclass/Display.vi</Property>
				<Property Name="Source[1].properties[0].type" Type="Str">Run when opened</Property>
				<Property Name="Source[1].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[1].propertiesCount" Type="Int">1</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">Baylor College of Medicine</Property>
				<Property Name="TgtF_fileDescription" Type="Str">DisplayTetrodes</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">DisplayTetrodes</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 Baylor College of Medicine</Property>
				<Property Name="TgtF_productName" Type="Str">DisplayTetrodes</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{53CED46E-2752-42C5-B92B-31E02167CFEF}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">DisplayTetrodes.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
