<?xml version='1.0'?>
<Project Type="Project" LVVersion="8208000">
   <Item Name="My Computer" Type="My Computer">
      <Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="server.tcp.enabled" Type="Bool">false</Property>
      <Property Name="server.tcp.port" Type="Int">0</Property>
      <Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
      <Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
      <Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
      <Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="specify.custom.address" Type="Bool">false</Property>
      <Item Name="Controls" Type="Folder">
         <Item Name="STRICT TYPE - Test Parameters.ctl" Type="VI" URL="Controls/STRICT TYPE - Test Parameters.ctl"/>
         <Item Name="TYPE - Analog Data.ctl" Type="VI" URL="Controls/TYPE - Analog Data.ctl"/>
         <Item Name="TYPE - Configure Test Method.ctl" Type="VI" URL="Controls/TYPE - Configure Test Method.ctl"/>
         <Item Name="TYPE - Count Time Method.ctl" Type="VI" URL="Controls/TYPE - Count Time Method.ctl"/>
         <Item Name="TYPE - Individual Trial Parameters Method.ctl" Type="VI" URL="Controls/TYPE - Individual Trial Parameters Method.ctl"/>
         <Item Name="TYPE - Named Data Structures.ctl" Type="VI" URL="Controls/TYPE - Named Data Structures.ctl"/>
         <Item Name="TYPE - Timer Control.ctl" Type="VI" URL="Controls/TYPE - Timer Control.ctl"/>
         <Item Name="TYPE - Analog Data Queue Method.ctl" Type="VI" URL="Controls/TYPE - Analog Data Queue Method.ctl"/>
      </Item>
      <Item Name="Configuration" Type="Folder">
         <Item Name="Configuration.ini" Type="Document" URL="Configuration/Configuration.ini"/>
      </Item>
      <Item Name="SubVIs" Type="Folder">
         <Item Name="Convert Test Paramter Cluster to Listbox Contents.vi" Type="VI" URL="SubVIs/Convert Test Paramter Cluster to Listbox Contents.vi"/>
         <Item Name="Convert Listbox Contents to Test Parameter Cluster.vi" Type="VI" URL="SubVIs/Convert Listbox Contents to Test Parameter Cluster.vi"/>
         <Item Name="Create Named Data Structures.vi" Type="VI" URL="SubVIs/Create Named Data Structures.vi"/>
         <Item Name="Current VIs Path.vi" Type="VI" URL="SubVIs/Current VIs Path.vi"/>
         <Item Name="Dialog - Configure Test Parameters.vi" Type="VI" URL="SubVIs/Dialog - Configure Test Parameters.vi"/>
         <Item Name="Elapsed Timer.vi" Type="VI" URL="SubVIs/Elapsed Timer.vi"/>
         <Item Name="File IO - Load Test Parameters from File.vi" Type="VI" URL="SubVIs/File IO - Load Test Parameters from File.vi"/>
         <Item Name="File IO - Save Test Parameters to File.vi" Type="VI" URL="SubVIs/File IO - Save Test Parameters to File.vi"/>
         <Item Name="Format Data by Type for Data Entry Field Display.vi" Type="VI" URL="SubVIs/Format Data by Type for Data Entry Field Display.vi"/>
         <Item Name="Functional Global - Configure Test Parameters.vi" Type="VI" URL="Global Variables/Functional Global - Configure Test Parameters.vi"/>
         <Item Name="Functional Global - Individual Trial Parameters.vi" Type="VI" URL="Global Variables/Functional Global - Individual Trial Parameters.vi"/>
         <Item Name="Hardware - Counter Time.vi" Type="VI" URL="SubVIs/Hardware - Counter Time.vi"/>
         <Item Name="Hardware - Execute Reward.vi" Type="VI" URL="SubVIs/Hardware - Execute Reward.vi"/>
         <Item Name="Synchronized DAQ Main with trigger line routing.vi" Type="VI" URL="Tests/Synchronized DAQ/Synchronized DAQ Main with trigger line routing.vi"/>
         <Item Name="Test Hardware - Counter Time.vi" Type="VI" URL="../James_Mani_Omnia_2007_0105/Tests/Test Hardware - Counter Time.vi"/>
         <Item Name="Test Sync Functions.vi" Type="VI" URL="Tests/Test Sync Functions.vi"/>
         <Item Name="Write Abort Event and Time to Server.vi" Type="VI" URL="SubVIs/Write Abort Event and Time to Server.vi"/>
         <Item Name="Write Event Name and Time to Server.vi" Type="VI" URL="SubVIs/Write Event Name and Time to Server.vi"/>
         <Item Name="Write Parameters to Server.vi" Type="VI" URL="SubVIs/Write Parameters to Server.vi"/>
         <Item Name="Hardware - Access Analog Data Queue.vi" Type="VI" URL="SubVIs/Hardware - Access Analog Data Queue.vi"/>
         <Item Name="Matlab - Get confirmation.vi" Type="VI" URL="SubVIs/Matlab - Get confirmation.vi"/>
      </Item>
      <Item Name="Documentation" Type="Folder">
         <Item Name="M Series (6289) User Manual.pdf" Type="Document" URL="Documentation/M Series (6289) User Manual.pdf"/>
      </Item>
      <Item Name="Network Time Check.lvlib" Type="Library" URL="Network Time Check.lvlib">
         <Item Name="Network Time Check" Type="Folder">
            <Item Name="Remote Time Check SubVI - Evaluate Results.vi" Type="VI" URL="Network Time Check/Remote Time Check SubVI - Evaluate Results.vi"/>
            <Item Name="TYPE - Remote Time Check State Control.ctl" Type="VI" URL="Network Time Check/TYPE - Remote Time Check State Control.ctl"/>
         </Item>
         <Item Name="TYPE - Sync Operation.ctl" Type="VI" URL="../James_Mani_Omnia_2007_0105/Network Time Check/TYPE - Sync Operation.ctl"/>
         <Item Name="Remote Time Check Send Init and Final Sync.vi" Type="VI" URL="Network Time Check/Remote Time Check Send Init and Final Sync.vi"/>
         <Item Name="Remote Time Check.vi" Type="VI" URL="Network Time Check/Remote Time Check.vi"/>
         <Item Name="Remote Time Check for Continuous Connection.vi" Type="VI" URL="Network Time Check/Remote Time Check for Continuous Connection.vi"/>
      </Item>
      <Item Name="Test GUI Display.vi" Type="VI" URL="Test GUI Display.vi"/>
      <Item Name="Test DAQ Functionality.vi" Type="VI" URL="Tests/Test DAQ Functionality.vi"/>
      <Item Name="Create Points for a Unit Circle.vi" Type="VI" URL="../James_Mani_Omnia_2007_0105/SubVIs/Create Points for a Unit Circle.vi"/>
      <Item Name="Joystick moved.vi" Type="VI" URL="SubVIs/Joystick moved.vi"/>
      <Item Name="Two param block write.vi" Type="VI" URL="SubVIs/Two param block write.vi"/>
      <Item Name="Joystick Training.vi" Type="VI" URL="Joystick Training.vi"/>
      <Item Name="Dependencies" Type="Dependencies"/>
      <Item Name="Build Specifications" Type="Build"/>
   </Item>
</Project>
