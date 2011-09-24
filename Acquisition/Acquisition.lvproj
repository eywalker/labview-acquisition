<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="10008000">
	<Property Name="varPersistentID:{1D9A456C-8E0C-4CB8-B2C1-B935C584784C}" Type="Ref">/My Computer/AcquisitionVariables.lvlib/Message</Property>
	<Property Name="varPersistentID:{1E077441-AC7F-4627-B1E7-54A359E432CB}" Type="Ref">/My Computer/AcquisitionVariables.lvlib/EphysAIscalingCoeff</Property>
	<Property Name="varPersistentID:{4613179C-CB92-4AC9-A3B5-FBE7E0CAC80E}" Type="Ref">/My Computer/AcquisitionVariables.lvlib/StimulationPK</Property>
	<Property Name="varPersistentID:{500D56EA-A11B-437D-B792-4C2522374099}" Type="Ref">/My Computer/AcquisitionVariables.lvlib/SessionPK</Property>
	<Property Name="varPersistentID:{71A5460E-DDCE-4559-ACFF-46EB94F67A65}" Type="Ref">/My Computer/AcquisitionVariables.lvlib/EphysChanNames</Property>
	<Property Name="varPersistentID:{BE53E74B-B5E1-4CFB-8FCE-3DFD5ECDDC15}" Type="Ref">/My Computer/AcquisitionVariables.lvlib/BehaviorPK</Property>
	<Property Name="varPersistentID:{CF269BBD-E219-4BBE-AA8F-571B018135FB}" Type="Ref">/My Computer/AcquisitionVariables.lvlib/EphysFs</Property>
	<Property Name="varPersistentID:{D38A100C-4C39-4349-8B51-72906B7E64F2}" Type="Ref">/My Computer/AcquisitionVariables.lvlib/SessionPath</Property>
	<Property Name="varPersistentID:{DD2184FE-091A-4647-A290-151834C8289B}" Type="Ref">/My Computer/AcquisitionVariables.lvlib/Subject</Property>
	<Property Name="varPersistentID:{FABF56F5-998C-408E-8D41-59E475F5CB79}" Type="Ref">/My Computer/AcquisitionVariables.lvlib/EphysPK</Property>
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
		<Item Name="Database" Type="Folder" URL="../Database">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Main Programs" Type="Folder">
			<Item Name="SessionManager.vi" Type="VI" URL="../SessionManager.vi"/>
			<Item Name="DataReceiver.vi" Type="VI" URL="../DataReceiver.vi"/>
			<Item Name="Trial Based Experiment Runner.vi" Type="VI" URL="../../Trial Based Experiment Statechart/TrialBasedExperimentObject/Trial Based Experiment Runner.vi"/>
			<Item Name="Ephys.vi" Type="VI" URL="../Ephys.vi"/>
		</Item>
		<Item Name="BehaviorObjects" Type="Folder">
			<Item Name="TrialBasedExperiment.lvclass" Type="LVClass" URL="../../Trial Based Experiment Statechart/TrialBasedExperimentObject/TrialBasedExperiment.lvclass"/>
			<Item Name="MatlabExperiment.lvclass" Type="LVClass" URL="../../Trial Based Experiment Statechart/MatlabExperiment/MatlabExperiment.lvclass"/>
			<Item Name="PassiveExperiment.lvclass" Type="LVClass" URL="../../Trial Based Experiment Statechart/PassiveExperiment/PassiveExperiment.lvclass"/>
		</Item>
		<Item Name="Experiments" Type="Folder">
			<Item Name="ClassDiscrimination.lvclass" Type="LVClass" URL="../../Trial Based Experiment Statechart/ClassDiscrimination/ClassDiscrimination.lvclass"/>
			<Item Name="EyeCalibration.lvclass" Type="LVClass" URL="../../Trial Based Experiment Statechart/EyeCalibration/EyeCalibration.lvclass"/>
			<Item Name="FlePhysEffExperiment.lvclass" Type="LVClass" URL="../../Experiments/FlePhysEffExperiment/FlePhysEffExperiment.lvclass"/>
			<Item Name="MultDimExperiment.lvclass" Type="LVClass" URL="../../Experiments/MultDimExperiment/MultDimExperiment.lvclass"/>
			<Item Name="DotMappingExperiment.lvclass" Type="LVClass" URL="../../Experiments/DotMappingExperiment/DotMappingExperiment.lvclass"/>
		</Item>
		<Item Name="AcquisitionVariables.lvlib" Type="Library" URL="../AcquisitionVariables.lvlib"/>
		<Item Name="AcquistionObject.lvclass" Type="LVClass" URL="../AcquistionObject/AcquistionObject.lvclass"/>
		<Item Name="AcquireTraces.lvclass" Type="LVClass" URL="../AcquireTraces/AcquireTraces.lvclass"/>
		<Item Name="BehaviorData.lvclass" Type="LVClass" URL="../BehaviorData/BehaviorData.lvclass"/>
		<Item Name="Electrophysiology.lvclass" Type="LVClass" URL="../Electrophysiology/Electrophysiology.lvclass"/>
		<Item Name="TimeStamper.lvclass" Type="LVClass" URL="../TimeStamper/TimeStamper.lvclass"/>
		<Item Name="beh.ico" Type="Document" URL="../beh.ico"/>
		<Item Name="ephysAcq.ico" Type="Document" URL="../ephysAcq.ico"/>
		<Item Name="matlabListener.ico" Type="Document" URL="../matlabListener.ico"/>
		<Item Name="sessMan.ico" Type="Document" URL="../sessMan.ico"/>
		<Item Name="app.ini" Type="Document" URL="../app.ini"/>
		<Item Name="acquisition-errors.txt" Type="Document" URL="../acquisition-errors.txt"/>
		<Item Name="Start Listener.vi" Type="VI" URL="../../Start Listener.vi"/>
		<Item Name="DisplayTetrodes.lvclass" Type="LVClass" URL="../../Data Display/DisplayTetrodes/DisplayTetrodes.lvclass"/>
		<Item Name="DataReceiver.lvclass" Type="LVClass" URL="../../Data Display/DataReceiver/DataReceiver.lvclass"/>
		<Item Name="DataFilter.lvclass" Type="LVClass" URL="../../Data Display/DataFilter/DataFilter.lvclass"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="_ArrWfmsTo1DInterleave.vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/_ArrWfmsTo1DInterleave.vi"/>
				<Item Name="_ArrWfmsTo2DArr.vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/_ArrWfmsTo2DArr.vi"/>
				<Item Name="_ArrWfmsToData.vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/_ArrWfmsToData.vi"/>
				<Item Name="_Get Sound Error From Return Value.vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/_Get Sound Error From Return Value.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="DAQmx Clear Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Clear Task.vi"/>
				<Item Name="DAQmx Create AI Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create AI Channel (sub).vi"/>
				<Item Name="DAQmx Create AI Channel TEDS(sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create AI Channel TEDS(sub).vi"/>
				<Item Name="DAQmx Create AO Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create AO Channel (sub).vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create Channel (AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Frequency-Voltage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Frequency-Voltage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AO-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AO-FuncGen).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-FuncGen).vi"/>
				<Item Name="DAQmx Create Channel (AO-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (CI-Count Edges).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Count Edges).vi"/>
				<Item Name="DAQmx Create Channel (CI-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Frequency).vi"/>
				<Item Name="DAQmx Create Channel (CI-GPS Timestamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-GPS Timestamp).vi"/>
				<Item Name="DAQmx Create Channel (CI-Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Period).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Angular Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Angular Encoder).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Linear Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Linear Encoder).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Freq).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Freq).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Ticks).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Time).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Width).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Width).vi"/>
				<Item Name="DAQmx Create Channel (CI-Semi Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Semi Period).vi"/>
				<Item Name="DAQmx Create Channel (CI-Two Edge Separation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Two Edge Separation).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Frequency).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Ticks).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Time).vi"/>
				<Item Name="DAQmx Create Channel (DI-Digital Input).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DI-Digital Input).vi"/>
				<Item Name="DAQmx Create Channel (DO-Digital Output).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DO-Digital Output).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create CI Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create CI Channel (sub).vi"/>
				<Item Name="DAQmx Create CO Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create CO Channel (sub).vi"/>
				<Item Name="DAQmx Create DI Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create DI Channel (sub).vi"/>
				<Item Name="DAQmx Create DO Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create DO Channel (sub).vi"/>
				<Item Name="DAQmx Create Virtual Channel.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Virtual Channel.vi"/>
				<Item Name="DAQmx Fill In Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/daqmx/miscellaneous.llb/DAQmx Fill In Error Info.vi"/>
				<Item Name="DAQmx Read (Analog 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D I16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D I16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D I32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D I32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Freq 1 Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Freq 1 Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Ticks 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Ticks 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Time 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Time 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Freq 1 Chan 1 Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Freq 1 Chan 1 Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Ticks 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Ticks 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Time 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Time 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Bool 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Bool 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Bool NChan 1Samp 1Line).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Bool NChan 1Samp 1Line).vi"/>
				<Item Name="DAQmx Read (Digital 1D U8 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U8 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U8 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U8 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U16 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U16 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U16 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U16 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 2D Bool NChan 1Samp NLine).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D Bool NChan 1Samp NLine).vi"/>
				<Item Name="DAQmx Read (Digital 2D U8 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U8 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital Bool 1Line 1Point).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Bool 1Line 1Point).vi"/>
				<Item Name="DAQmx Read (Digital U8 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U8 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital U16 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U16 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Raw 1D I8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I8).vi"/>
				<Item Name="DAQmx Read (Raw 1D I16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I16).vi"/>
				<Item Name="DAQmx Read (Raw 1D I32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I32).vi"/>
				<Item Name="DAQmx Read (Raw 1D U8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U8).vi"/>
				<Item Name="DAQmx Read (Raw 1D U16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U16).vi"/>
				<Item Name="DAQmx Read (Raw 1D U32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U32).vi"/>
				<Item Name="DAQmx Read.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read.vi"/>
				<Item Name="DAQmx Rollback Channel If Error.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Rollback Channel If Error.vi"/>
				<Item Name="DAQmx Set CJC Parameters (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Set CJC Parameters (sub).vi"/>
				<Item Name="DAQmx Start Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Start Task.vi"/>
				<Item Name="DAQmx Stop Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Stop Task.vi"/>
				<Item Name="DAQmx Timing (Burst Export Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Burst Export Clock).vi"/>
				<Item Name="DAQmx Timing (Burst Import Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Burst Import Clock).vi"/>
				<Item Name="DAQmx Timing (Change Detection).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Change Detection).vi"/>
				<Item Name="DAQmx Timing (Handshaking).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Handshaking).vi"/>
				<Item Name="DAQmx Timing (Implicit).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Implicit).vi"/>
				<Item Name="DAQmx Timing (Pipelined Sample Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Pipelined Sample Clock).vi"/>
				<Item Name="DAQmx Timing (Sample Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Sample Clock).vi"/>
				<Item Name="DAQmx Timing (Use Waveform).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Use Waveform).vi"/>
				<Item Name="DAQmx Timing.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing.vi"/>
				<Item Name="DAQmx Write (Analog 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D I16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D I16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D I32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D I32 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Frequency 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Frequency 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Frequency NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Frequency NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Ticks 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Ticks 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Time 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Time 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Time NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Time NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter 1DTicks NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1DTicks NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Frequency 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Frequency 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Ticks 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Ticks 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Time 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Time 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Bool 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Bool 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Bool NChan 1Samp 1Line).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Bool NChan 1Samp 1Line).vi"/>
				<Item Name="DAQmx Write (Digital 1D U8 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U8 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U8 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U8 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U16 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U16 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U16 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U16 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D Bool NChan 1Samp NLine).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D Bool NChan 1Samp NLine).vi"/>
				<Item Name="DAQmx Write (Digital 2D U8 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U8 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital Bool 1Line 1Point).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Bool 1Line 1Point).vi"/>
				<Item Name="DAQmx Write (Digital U8 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U8 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital U16 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U16 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Raw 1D I8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I8).vi"/>
				<Item Name="DAQmx Write (Raw 1D I16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I16).vi"/>
				<Item Name="DAQmx Write (Raw 1D I32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I32).vi"/>
				<Item Name="DAQmx Write (Raw 1D U8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U8).vi"/>
				<Item Name="DAQmx Write (Raw 1D U16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U16).vi"/>
				<Item Name="DAQmx Write (Raw 1D U32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U32).vi"/>
				<Item Name="DAQmx Write.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="DTbl Digital Size.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Digital Size.vi"/>
				<Item Name="DTbl Uncompress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Uncompress Digital.vi"/>
				<Item Name="DWDT Uncompress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Uncompress Digital.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get LV Class Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Path.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Sampling Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sampling Mode.ctl"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Sound Data Format.ctl" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sound Data Format.ctl"/>
				<Item Name="Sound Output Configure.vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sound Output Configure.vi"/>
				<Item Name="Sound Output Start.vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sound Output Start.vi"/>
				<Item Name="Sound Output Task ID.ctl" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sound Output Task ID.ctl"/>
				<Item Name="Sound Output Write (DBL Single).vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sound Output Write (DBL Single).vi"/>
				<Item Name="Sound Output Write (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sound Output Write (DBL).vi"/>
				<Item Name="Sound Output Write (I16).vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sound Output Write (I16).vi"/>
				<Item Name="Sound Output Write (I32).vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sound Output Write (I32).vi"/>
				<Item Name="Sound Output Write (SGL).vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sound Output Write (SGL).vi"/>
				<Item Name="Sound Output Write (U8).vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sound Output Write (U8).vi"/>
				<Item Name="Sound Output Write.vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sound Output Write.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="NI_Database_API.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/database/NI_Database_API.lvlib"/>
				<Item Name="GOOP Object Repository Statistics.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/_goopsup.llb/GOOP Object Repository Statistics.ctl"/>
				<Item Name="GOOP Object Repository Method.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/_goopsup.llb/GOOP Object Repository Method.ctl"/>
				<Item Name="GOOP Object Repository.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/_goopsup.llb/GOOP Object Repository.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="DAQmx Create Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/task.llb/DAQmx Create Task.vi"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
				<Item Name="subTimeDelay.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/TimeDelayBlock.llb/subTimeDelay.vi"/>
				<Item Name="NI_MAPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MAPro.lvlib"/>
				<Item Name="NI_MABase.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MABase.lvlib"/>
				<Item Name="Timestamp Subtract.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/Timestamp Subtract.vi"/>
				<Item Name="I128 Timestamp.ctl" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/I128 Timestamp.ctl"/>
				<Item Name="DU64_U32SubtractWithBorrow.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/DU64_U32SubtractWithBorrow.vi"/>
				<Item Name="Check for Equality.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Check for Equality.vi"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="Waveform to XY Pairs.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Waveform to XY Pairs.vi"/>
				<Item Name="WDT Waveform to XY Pairs DBL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Waveform to XY Pairs DBL.vi"/>
				<Item Name="WDT Waveform to XY Pairs SGL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Waveform to XY Pairs SGL.vi"/>
				<Item Name="WDT Waveform to XY Pairs I64.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Waveform to XY Pairs I64.vi"/>
				<Item Name="WDT Waveform to XY Pairs I32.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Waveform to XY Pairs I32.vi"/>
				<Item Name="WDT Waveform to XY Pairs I16.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Waveform to XY Pairs I16.vi"/>
				<Item Name="WDT Waveform to XY Pairs I8.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Waveform to XY Pairs I8.vi"/>
				<Item Name="WDT Waveform to XY Pairs U64.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Waveform to XY Pairs U64.vi"/>
				<Item Name="WDT Waveform to XY Pairs U32.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Waveform to XY Pairs U32.vi"/>
				<Item Name="WDT Waveform to XY Pairs U16.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Waveform to XY Pairs U16.vi"/>
				<Item Name="WDT Waveform to XY Pairs U8.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Waveform to XY Pairs U8.vi"/>
				<Item Name="WDT Waveform to XY Pairs CDB.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Waveform to XY Pairs CDB.vi"/>
				<Item Name="WDT Waveform to XY Pairs CSG.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Waveform to XY Pairs CSG.vi"/>
				<Item Name="WDT Waveform to XY Pairs EXT.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Waveform to XY Pairs EXT.vi"/>
				<Item Name="WDT Waveform to XY Pairs CXT.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Waveform to XY Pairs CXT.vi"/>
				<Item Name="DAQmx Export Signal.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/events/hardwareSignals.llb/DAQmx Export Signal.vi"/>
				<Item Name="DAQmx Export Signal (Most Signals).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/events/hardwareSignals.llb/DAQmx Export Signal (Most Signals).vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="DAQmx Connect Terminals.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/routing.llb/DAQmx Connect Terminals.vi"/>
				<Item Name="DAQmx Disconnect Terminals.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/routing.llb/DAQmx Disconnect Terminals.vi"/>
				<Item Name="NI_SC_LVSCCommonFiles.lvlib" Type="Library" URL="/&lt;vilib&gt;/Statechart/Common/NI_SC_LVSCCommonFiles.lvlib"/>
				<Item Name="SCRT Dbg Rtn.vi" Type="VI" URL="/&lt;vilib&gt;/Statechart/Infrastructure/RTStatechart/Dbg/SCRT Dbg Rtn.vi"/>
				<Item Name="SCRT SDV Rtn.vi" Type="VI" URL="/&lt;vilib&gt;/Statechart/Infrastructure/RTStatechart/Dbg/SCRT SDV Rtn.vi"/>
				<Item Name="DAQmx Flatten Channel String.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Flatten Channel String.vi"/>
				<Item Name="DAQmx Unflatten Channel String.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Unflatten Channel String.vi"/>
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
			</Item>
			<Item Name="nilvaiu.dll" Type="Document" URL="nilvaiu.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Create Dataset 2D Integer.vi" Type="VI" URL="../../../HDF5Tools/LabView/Create Dataset 2D Integer.vi"/>
			<Item Name="Append To Dataset 2D Integer.vi" Type="VI" URL="../../../HDF5Tools/LabView/Append To Dataset 2D Integer.vi"/>
			<Item Name="Core SubVIs.lvlib" Type="Library" URL="../../Core SubVIs/Core SubVIs.lvlib"/>
			<Item Name="Matlab API.lvlib" Type="Library" URL="../../Matlab API/Matlab API.lvlib"/>
			<Item Name="Network - Send PSP String.vi" Type="VI" URL="../../Core SubVIs/Network - Send PSP String.vi"/>
			<Item Name="Append_HDF5_waveform 2D.vi" Type="VI" URL="../../HDF5/Append_HDF5_waveform 2D.vi"/>
			<Item Name="Trial Based Experiment.lvsc" Type="LVStatechart" URL="../../Trial Based Experiment Statechart/Trial Based Experiment.lvsc"/>
			<Item Name="HDF5Tools.dll" Type="Document" URL="../../../HDF5Tools/Release/HDF5Tools.dll"/>
			<Item Name="Create Dataset 2D Double.vi" Type="VI" URL="../../../HDF5Tools/LabView/Create Dataset 2D Double.vi"/>
			<Item Name="Create Dataset 1D Integer.vi" Type="VI" URL="../../../HDF5Tools/LabView/Create Dataset 1D Integer.vi"/>
			<Item Name="Create Dataset 3D Double.vi" Type="VI" URL="../../../HDF5Tools/LabView/Create Dataset 3D Double.vi"/>
			<Item Name="Create Dataset 3D Integer.vi" Type="VI" URL="../../../HDF5Tools/LabView/Create Dataset 3D Integer.vi"/>
			<Item Name="Create Dataset 1D Double.vi" Type="VI" URL="../../../HDF5Tools/LabView/Create Dataset 1D Double.vi"/>
			<Item Name="hdf5_hldll.dll" Type="Document" URL="../../../HDF5Tools/Release/hdf5_hldll.dll"/>
			<Item Name="Append To Dataset 2D Double.vi" Type="VI" URL="../../../HDF5Tools/LabView/Append To Dataset 2D Double.vi"/>
			<Item Name="Append To Dataset 1D Double.vi" Type="VI" URL="../../../HDF5Tools/LabView/Append To Dataset 1D Double.vi"/>
			<Item Name="Append To Dataset 1D Integer.vi" Type="VI" URL="../../../HDF5Tools/LabView/Append To Dataset 1D Integer.vi"/>
			<Item Name="Append To Dataset 3D Double.vi" Type="VI" URL="../../../HDF5Tools/LabView/Append To Dataset 3D Double.vi"/>
			<Item Name="Append To Dataset 3D Integer.vi" Type="VI" URL="../../../HDF5Tools/LabView/Append To Dataset 3D Integer.vi"/>
			<Item Name="HDF5Tools.lvlib" Type="Library" URL="../../../HDF5Tools/LabView/HDF5Tools.lvlib"/>
			<Item Name="lvsound2.dll" Type="Document" URL="../../../Program Files/National Instruments/LabVIEW 2010/resource/lvsound2.dll"/>
			<Item Name="lvanlys.dll" Type="Document" URL="../../../Program Files/National Instruments/LabVIEW 2010/resource/lvanlys.dll"/>
			<Item Name="GetSubjectUI.vi" Type="VI" URL="../../NonCore SubVIs/GetSubjectUI.vi"/>
			<Item Name="AddCircle.vi" Type="VI" URL="../../NonCore SubVIs/AddCircle.vi"/>
			<Item Name="daqmx.rc" Type="Document" URL="../../../Program Files/National Instruments/LabVIEW 2010/resource/objmgr/daqmx.rc"/>
			<Item Name="ni.dex.rc" Type="Document" URL="../../../Program Files/National Instruments/LabVIEW 2010/resource/objmgr/ni.dex.rc"/>
			<Item Name="error.ctl" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath/Functions/Error Handling/error.ctl"/>
			<Item Name="Translate Error.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath/Functions/Error Handling/Translate Error.vi"/>
			<Item Name="NIMS_Already Translated.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ErrorHandling/NIMS_Already Translated.vi"/>
			<Item Name="Create Error.vi" Type="VI" URL="/&lt;vilib&gt;/imathl/engines/lvmath/Functions/Error Handling/Create Error.vi"/>
			<Item Name="MC_Global_Global.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/Constants/MC_Global_Global.vi"/>
			<Item Name="MC_Equal_within_epsilon.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/RangeToken/MC_Equal_within_epsilon.vi"/>
			<Item Name="MC_Range_Check_Step_Iter.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/RangeToken/MC_Range_Check_Step_Iter.vi"/>
			<Item Name="NIMS_Range_Compute_Iterations.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/RangeToken/NIMS_Range_Compute_Iterations.vi"/>
			<Item Name="NIMS_Range_Compute_Iterations_E8D80E2E2826472C92413183A93F3170_000.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Range_Compute_Iterations_E8D80E2E2826472C92413183A93F3170.lvgen/NIMS_Range_Compute_Iterations_E8D80E2E2826472C92413183A93F3170_000.vi"/>
			<Item Name="NIMS_Range.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/RangeToken/NIMS_Range.vi"/>
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
			<Item Name="NIMS_Range_Compute_Iterations_E8D80E2E2826472C92413183A93F3170_001.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Range_Compute_Iterations_E8D80E2E2826472C92413183A93F3170.lvgen/NIMS_Range_Compute_Iterations_E8D80E2E2826472C92413183A93F3170_001.vi"/>
			<Item Name="NIMS_Range_1C63927E4E474DADACDA97C3F2261A11_001.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Range_1C63927E4E474DADACDA97C3F2261A11.lvgen/NIMS_Range_1C63927E4E474DADACDA97C3F2261A11_001.vi"/>
			<Item Name="NIMS_NodeEndStatement_Output_53EC0D466D134D7ABD903AC30B43404B_005.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_NodeEndStatement_Output_53EC0D466D134D7ABD903AC30B43404B.lvgen/NIMS_NodeEndStatement_Output_53EC0D466D134D7ABD903AC30B43404B_005.vi"/>
			<Item Name="MC_Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath/Functions/Error Handling/MC_Error Cluster From Error Code.vi"/>
			<Item Name="NIMS_Error From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ErrorHandling/NIMS_Error From Error Code.vi"/>
			<Item Name="NIMS_Create Error From Enums.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ErrorHandling/NIMS_Create Error From Enums.vi"/>
			<Item Name="NIMS_Replace - Prepare Contraction Indices.vi" Type="VI" URL="/&lt;vilib&gt;/imath/engines/lvmath2/RunTimeEngine/ReplaceToken/NIMS_Replace - Prepare Contraction Indices.vi"/>
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
			<Item Name="NIMS_Replace - Assignment Check _(_)=VorM_C130F3B8B64B4DD7B9359A2D3A035D18_007.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - Assignment Check _(_)=VorM_C130F3B8B64B4DD7B9359A2D3A035D18.lvgen/NIMS_Replace - Assignment Check _(_)=VorM_C130F3B8B64B4DD7B9359A2D3A035D18_007.vi"/>
			<Item Name="NIMS_Replace - Size Check _(_)=VorM_4228B35EE910471DB74F3866D9D09B95_007.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - Size Check _(_)=VorM_4228B35EE910471DB74F3866D9D09B95.lvgen/NIMS_Replace - Size Check _(_)=VorM_4228B35EE910471DB74F3866D9D09B95_007.vi"/>
			<Item Name="NIMS_Replace - Check Linear_662D5651E4E34E0584DA82A256193A4C_007.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Replace - Check Linear_662D5651E4E34E0584DA82A256193A4C.lvgen/NIMS_Replace - Check Linear_662D5651E4E34E0584DA82A256193A4C_007.vi"/>
			<Item Name="NIMS_length(GV)_08A3D13377FD4E4B96F5795FBF3698FA_002.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_length(GV)_08A3D13377FD4E4B96F5795FBF3698FA.lvgen/NIMS_length(GV)_08A3D13377FD4E4B96F5795FBF3698FA_002.vi"/>
			<Item Name="NIMS_Get Elements - V(V)_D802331D13C1477FBB264FA67E6BC4E8_001.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Get Elements - V(V)_D802331D13C1477FBB264FA67E6BC4E8.lvgen/NIMS_Get Elements - V(V)_D802331D13C1477FBB264FA67E6BC4E8_001.vi"/>
			<Item Name="NIMS_V_Check_VorM_Index_A41EC0B2D46F469BA0D118C81D7FAB20_001.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_V_Check_VorM_Index_A41EC0B2D46F469BA0D118C81D7FAB20.lvgen/NIMS_V_Check_VorM_Index_A41EC0B2D46F469BA0D118C81D7FAB20_001.vi"/>
			<Item Name="NIMS_Get Elements - RV(_) - Check_1F6F8656162345078B1D4DC9877DFAE9_003.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_Get Elements - RV(_) - Check_1F6F8656162345078B1D4DC9877DFAE9.lvgen/NIMS_Get Elements - RV(_) - Check_1F6F8656162345078B1D4DC9877DFAE9_003.vi"/>
			<Item Name="NIMS_NodeEndStatement_Output_53EC0D466D134D7ABD903AC30B43404B_004.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_NodeEndStatement_Output_53EC0D466D134D7ABD903AC30B43404B.lvgen/NIMS_NodeEndStatement_Output_53EC0D466D134D7ABD903AC30B43404B_004.vi"/>
			<Item Name="NIMS_sort_real_145CFFB80E864A93A09BAF33145C1565_003.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_sort_real_145CFFB80E864A93A09BAF33145C1565.lvgen/NIMS_sort_real_145CFFB80E864A93A09BAF33145C1565_003.vi"/>
			<Item Name="NIMS_[2o]_sort(RRowV,I32,Str)_1834406CABAC430BB40FEC772A4FC192_002.vi" Type="VI" URL="/&lt;instcachedir&gt;/0/NIMS_[2o]_sort(RRowV,I32,Str)_1834406CABAC430BB40FEC772A4FC192.lvgen/NIMS_[2o]_sort(RRowV,I32,Str)_1834406CABAC430BB40FEC772A4FC192_002.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="EphysAcquisition" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{351396BC-D2C7-433A-A8B6-1FB733715FDF}</Property>
				<Property Name="App_INI_GUID" Type="Str">{45D2851E-BB76-4C91-B8F6-18D36ADC66E6}</Property>
				<Property Name="App_INI_itemID" Type="Ref">/My Computer/app.ini</Property>
				<Property Name="Bld_buildSpecName" Type="Str">EphysAcquisition</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/Acquisition/EphysAcquisition</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">EphysAcquisition.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/EphysAcquisition/EphysAcquisition.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/EphysAcquisition/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/ephysAcq.ico</Property>
				<Property Name="Exe_Vardep[0].LibDeploy" Type="Bool">true</Property>
				<Property Name="Exe_VardepDeployAtStartup" Type="Bool">true</Property>
				<Property Name="Exe_VardepHideDeployDlg" Type="Bool">true</Property>
				<Property Name="Exe_VardepLibItemCount" Type="Int">1</Property>
				<Property Name="Exe_VardepUndeployOnExit" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{61B30BA6-B278-427D-B1FE-771B87F35205}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/AcquisitionVariables.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Main Programs/Ephys.vi</Property>
				<Property Name="Source[2].properties[0].type" Type="Str">Run when opened</Property>
				<Property Name="Source[2].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[2].propertiesCount" Type="Int">1</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_autoIncrement" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Acquire electrophysiological data with timestamping.</Property>
				<Property Name="TgtF_fileVersion.build" Type="Int">43</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">EphysAcquisition</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2010 </Property>
				<Property Name="TgtF_productName" Type="Str">Ephys Acquisition</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{5AC4E99B-5787-4148-9903-82ED91BD88A7}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">EphysAcquisition.exe</Property>
			</Item>
			<Item Name="Session Manager" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{629D9A91-67B0-4D56-8882-01D1D0B115EB}</Property>
				<Property Name="App_INI_GUID" Type="Str">{0F120A39-FB7C-403A-B296-AF11CA614B36}</Property>
				<Property Name="App_INI_itemID" Type="Ref">/My Computer/app.ini</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Session Manager</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/Acquisition/Session Manager</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">SessionManager.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Session Manager/SessionManager.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Session Manager/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/sessMan.ico</Property>
				<Property Name="Exe_Vardep[0].LibDeploy" Type="Bool">true</Property>
				<Property Name="Exe_Vardep[0].LibItemID" Type="Ref">/My Computer/AcquisitionVariables.lvlib</Property>
				<Property Name="Exe_VardepDeployAtStartup" Type="Bool">true</Property>
				<Property Name="Exe_VardepLibItemCount" Type="Int">1</Property>
				<Property Name="Exe_VardepUndeployOnExit" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{80BF230A-6443-4D34-BA0E-E38C1BE19DBB}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main Programs/SessionManager.vi</Property>
				<Property Name="Source[1].newName" Type="Str">Session Manage.vi</Property>
				<Property Name="Source[1].properties[0].type" Type="Str">Run when opened</Property>
				<Property Name="Source[1].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[1].properties[1].type" Type="Str">Show vertical scroll bar</Property>
				<Property Name="Source[1].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[1].properties[2].type" Type="Str">Show horizontal scroll bar</Property>
				<Property Name="Source[1].properties[2].value" Type="Bool">false</Property>
				<Property Name="Source[1].properties[3].type" Type="Str">Show menu bar</Property>
				<Property Name="Source[1].properties[3].value" Type="Bool">true</Property>
				<Property Name="Source[1].propertiesCount" Type="Int">4</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/acquisition-errors.txt</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_autoIncrement" Type="Bool">true</Property>
				<Property Name="TgtF_companyName" Type="Str">BCM, Andreas Tolias Lab</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Session Manager runs the timestamper and inserts entries into the database</Property>
				<Property Name="TgtF_fileVersion.build" Type="Int">33</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">Session Manager</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 James Cotton</Property>
				<Property Name="TgtF_productName" Type="Str">Session Manager</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{5E1B8872-F18F-4D51-B732-54E9C8DFD3E4}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">SessionManager.exe</Property>
			</Item>
			<Item Name="Behavior" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{553AB8C8-E65A-4920-AD8F-D5551B6C458E}</Property>
				<Property Name="App_INI_GUID" Type="Str">{C4959624-F23C-419B-8C8B-FD59A26C8B23}</Property>
				<Property Name="App_INI_itemID" Type="Ref">/My Computer/app.ini</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.FALSE.com</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Behavior</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/Acquisition/Behavior</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Destination[0].destName" Type="Str">Behavior.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Behavior/Behavior.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Behavior/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/beh.ico</Property>
				<Property Name="Exe_Vardep[0].LibDeploy" Type="Bool">true</Property>
				<Property Name="Exe_Vardep[0].LibItemID" Type="Ref">/My Computer/AcquisitionVariables.lvlib</Property>
				<Property Name="Exe_VardepDeployAtStartup" Type="Bool">true</Property>
				<Property Name="Exe_VardepLibItemCount" Type="Int">1</Property>
				<Property Name="Exe_VardepUndeployOnExit" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{80BF230A-6443-4D34-BA0E-E38C1BE19DBB}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main Programs/Trial Based Experiment Runner.vi</Property>
				<Property Name="Source[1].properties[0].type" Type="Str">Run when opened</Property>
				<Property Name="Source[1].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[1].propertiesCount" Type="Int">1</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Dependencies/ClassDiscrimination.lvclass/Cycle.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">BCM</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Behavior</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">Behavior</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 BCM</Property>
				<Property Name="TgtF_productName" Type="Str">Behavior</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{9148D384-D5A8-44D3-A50D-68C5AB98A472}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Behavior.exe</Property>
			</Item>
			<Item Name="Listener" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{A2B25B06-11D8-4EC2-B450-379F69A88629}</Property>
				<Property Name="App_INI_GUID" Type="Str">{0C043433-790B-4CF5-B428-82260BC31AB6}</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.FALSE.com</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Listener</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/Acquisition/Listener</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Destination[0].destName" Type="Str">Listener.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Listener/Listener.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Listener/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/matlabListener.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{80BF230A-6443-4D34-BA0E-E38C1BE19DBB}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Start Listener.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">BCM</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Listener</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">Listener</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 BCM</Property>
				<Property Name="TgtF_productName" Type="Str">Listener</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{8ACA9772-065A-429E-A552-D8D2EC25B3B3}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Listener.exe</Property>
			</Item>
			<Item Name="Displayer" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{9A38397C-1E76-4454-A9F4-EF23DCC03B57}</Property>
				<Property Name="App_INI_GUID" Type="Str">{95F3CEF0-2FB7-4184-9E7E-894F3D0B2554}</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.FALSE.com</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Displayer</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/Acquisition/Displayer</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Destination[0].destName" Type="Str">Displayer.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Displayer/Displayer.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Displayer/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{AE6D0D7D-CBB3-417F-907E-70BC92160724}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main Programs/DataReceiver.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">BCM</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Displayer</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">Displayer</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 BCM</Property>
				<Property Name="TgtF_productName" Type="Str">Displayer</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{3AB02566-5D57-4625-ADB0-622554F7451B}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Displayer.exe</Property>
			</Item>
			<Item Name="TestDisplay" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{87482001-853B-45FE-AFFD-8FE36A06C79C}</Property>
				<Property Name="App_INI_GUID" Type="Str">{AF6AE168-5B0E-4CE5-9A36-F4F3D0C97AD3}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">TestDisplay</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/Acquisition/TestDisplay</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Destination[0].destName" Type="Str">TestDisplay.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/TestDisplay/TestDisplay.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/TestDisplay/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{BF59176A-E95B-46A7-BA63-A04C53C5A5BA}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/DisplayTetrodes.lvclass/DisplayQuick.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">Baylor College of Medicine</Property>
				<Property Name="TgtF_fileDescription" Type="Str">TestDisplay</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">TestDisplay</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 Baylor College of Medicine</Property>
				<Property Name="TgtF_productName" Type="Str">TestDisplay</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{D5CAE96D-F3F0-4F64-A25A-80FE4B1B9883}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">TestDisplay.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
