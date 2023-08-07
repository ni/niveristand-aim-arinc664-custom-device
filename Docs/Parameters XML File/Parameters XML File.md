# Parameters XML File
This Custom Device can be configured using a scripting API or a Parameters XML File. This XML file defines the messages, parameters, and other settings necessary to populate a valid configuration in the System Definition. This document explains the schema used for creating a Parameters XML File, shows example sections for different encoding configurations, and outlines the defined tags.

## Schema Location
For the full schema file, see `Parameters_XML_Schema.xsd` in the same directory as this document.

## XML Parameters File Examples (Compact)

### Example (Tx Generic Session)

```xml
<Board xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Port PortId="0">
    <TxGenericSession />
```

### Example (Rx Monitor Session)

```xml
<Board xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" BoardId="1" PortSpeed="FDX_10MBIT" PortConfig="FDX_REDUNDANT">
  <Port PortId="2" PortMap="1">
    <TxGenericSession QueueSizeIn="3" Count="6" TxStartModeType="FDX_START_TIME" />
    <RxMonitorSession DefaultCronoMode="FDX_RX_DEFAULT_MON_ENA_GOOD" GlbMonBufferSizeIn="2" TriggerPosition="3" MaxFileSizeMB="4" CaptureMode="FDX_MON_RECORDING" Strobe="FDX_MON_STROBE_START" />
  </Port>
```

### Example (RT to RT)

```xml
<channel>
	<messages>
		<message>
			<name>Position</name>
			<address>
				<terminalAddress>1</terminalAddress>
				<subAddress>2</subAddress>
				<direction>Tx</direction>
			</address>
			<address>
				<terminalAddress>11</terminalAddress>
				<subAddress>12</subAddress>
				<direction>Rx</direction>
			</address>
			<messageType>RT to RT</messageType>
			<numberOfWords>6</numberOfWords>
			<createTimestampChannel>true</createTimestampChannel>
			<parameters>
				<parameter>
					<encoding>BNR</encoding>
					<signed>true</signed>
					<startBit>16</startBit>
					<numberOfBits>32</numberOfBits>
					<scale>360000</scale>
					<offset>0.0</offset>
					<name>Latitude</name>
					<unit>deg</unit>
					<defaultValue>0.0</defaultValue>
				</parameter>
				<parameter>
					<encoding>BNR</encoding>
					<signed>true</signed>
					<startBit>64</startBit>
					<numberOfBits>32</numberOfBits>
					<scale>360000</scale>
					<offset>0.0</offset>
					<name>Longitude</name>
					<unit>deg</unit>
					<defaultValue>0.0</defaultValue>
				</parameter>
			</parameters>
		</message>
	</messages>
</channel>
```

### Example (RT to RT - no scaling)

```xml
<channel>
	<messages>
		<message>
			<name>Missile Status</name>
			<address>
				<terminalAddress>4</terminalAddress>
				<subAddress>9</subAddress>
				<direction>Tx</direction>
			</address>
			<address>
				<terminalAddress>13</terminalAddress>
				<subAddress>9</subAddress>
				<direction>Rx</direction>
			</address>
			<messageType>RT to RT</messageType>
			<numberOfWords>6</numberOfWords>
			<createTimestampChannel>true</createTimestampChannel>
		</message>
	</messages>
</channel>
```
Notes:
- The above snippet will result in six VeriStand channels. Six words are transmitted from terminal address 4, subaddress 9 to terminal address 13, subaddress 9. Each U16 word is mapped to a VS channel. The default value for each VS channel will be 0.0.
- Each section defines a transmit / receive mode of a port. 


## Supported XML Tags and Attributes
The following table describes the XML elements, or tags, you can use in a Parameters XML file.

|Element|Required?|Element Type|Min/Max Occurrences|Description|Attributes|
|--- |--- |--- |--- |--- |--- |
|`<Board>`|Yes|complex|1/unbounded|Opening tag for a channel definition.|- BoardId (default 0)
- |
|→`<Port>`|Yes|xs:int|1|Specifies the Hardware Channel used. Range is: [0:31].|

Notes:
1. For Tx parameters, `<defaultValue>` must be present.
2. If the Bus Controller terminal is simulated, majorFrames, minorFrames, and acyclicFrames must be defined in the Parameters file. Otherwise, no cyclic messages will be transmitted on the bus.
