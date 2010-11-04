<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="10008000">
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
		<Item Name="Add Attribute Double.vi" Type="VI" URL="../Add Attribute Double.vi"/>
		<Item Name="Add Attribute Integer.vi" Type="VI" URL="../Add Attribute Integer.vi"/>
		<Item Name="Add Attribute String.vi" Type="VI" URL="../Add Attribute String.vi"/>
		<Item Name="Append To Dataset 1D Double.vi" Type="VI" URL="../Append To Dataset 1D Double.vi"/>
		<Item Name="Append To Dataset 1D Integer.vi" Type="VI" URL="../Append To Dataset 1D Integer.vi"/>
		<Item Name="Append To Dataset 2D Double.vi" Type="VI" URL="../Append To Dataset 2D Double.vi"/>
		<Item Name="Append To Dataset 2D Integer.vi" Type="VI" URL="../Append To Dataset 2D Integer.vi"/>
		<Item Name="Append To Dataset 3D Double.vi" Type="VI" URL="../Append To Dataset 3D Double.vi"/>
		<Item Name="Append To Dataset 3D Integer.vi" Type="VI" URL="../Append To Dataset 3D Integer.vi"/>
		<Item Name="Close Dataset.vi" Type="VI" URL="../Close Dataset.vi"/>
		<Item Name="Close File.vi" Type="VI" URL="../Close File.vi"/>
		<Item Name="Close Group.vi" Type="VI" URL="../Close Group.vi"/>
		<Item Name="Create Dataset 1D Double.vi" Type="VI" URL="../Create Dataset 1D Double.vi"/>
		<Item Name="Create Dataset 1D Integer.vi" Type="VI" URL="../Create Dataset 1D Integer.vi"/>
		<Item Name="Create Dataset 2D Double.vi" Type="VI" URL="../Create Dataset 2D Double.vi"/>
		<Item Name="Create Dataset 2D Integer.vi" Type="VI" URL="../Create Dataset 2D Integer.vi"/>
		<Item Name="Create Dataset 3D Double.vi" Type="VI" URL="../Create Dataset 3D Double.vi"/>
		<Item Name="Create Dataset 3D Integer.vi" Type="VI" URL="../Create Dataset 3D Integer.vi"/>
		<Item Name="Create File.vi" Type="VI" URL="../Create File.vi"/>
		<Item Name="Create Group.vi" Type="VI" URL="../Create Group.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="hdf5_hldll.dll" Type="Document" URL="../../Release/hdf5_hldll.dll"/>
			<Item Name="HDF5Tools.dll" Type="Document" URL="../../Release/HDF5Tools.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
