# Parameters XML File
This Custom Device can be configured using a scripting API or a Parameters XML File. This XML file defines the messages, parameters, and other settings necessary to populate a valid configuration in the System Definition. This document explains the schema used for creating a Parameters XML File, shows example sections for different encoding configurations, and outlines the defined tags.

## Schema Location
For the full schema file, see `Parameters_XML_Schema.xsd` in the same directory as this document.

## XML Parameters File Examples (Compact)

### Example (RT to BC)

```xml
<channel>
	<messages>
		<message>
			<name>Latitude</name>
			<address>
				<terminalAddress>21</terminalAddress>
				<subAddress>7</subAddress>
				<direction>Tx</direction>
			</address>
			<messageType>RT to BC</messageType>
			<numberOfWords>3</numberOfWords>
			<createTimestampChannel>true</createTimestampChannel>
			<parameters>
				<parameter>
					<encoding>BNR</encoding>
					<signed>true</signed>
					<startBit>16</startBit>
					<numberOfBits>32</numberOfBits>
					<scale>3600</scale>
					<offset>0.0</offset>
					<name>Parameter 0</name>
					<unit>deg</unit>
					<defaultValue>0.0</defaultValue>
				</parameter>
			</parameters>
		</message>
	</messages>
</channel>
```

### Example (BC to RT)

```xml
<channel>
	<messages>
		<message>
			<name>Longitude</name>
			<address>
				<terminalAddress>21</terminalAddress>
				<subAddress>7</subAddress>
				<direction>Rx</direction>
			</address>
			<messageType>BC to RT</messageType>
			<numberOfWords>3</numberOfWords>
			<createTimestampChannel>true</createTimestampChannel>
			<parameters>
				<parameter>
					<encoding>BNR</encoding>
					<signed>true</signed>
					<startBit>16</startBit>
					<numberOfBits>32</numberOfBits>
					<scale>3600</scale>
					<offset>0.0</offset>
					<name>Parameter 0</name>
					<unit>deg</unit>
					<defaultValue>0.0</defaultValue>
				</parameter>
			</parameters>
		</message>
	</messages>
</channel>
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

### Example (Mode Code)

```xml
<channel>
	<messages>
		<message>
			<name>"MC 16"</name>
			<modeCode>16</modeCode>
			<messageType>MC</messageType>
			<numberOfWords>1</numberOfWords>
			<address>
				<terminalAddress>1</terminalAddress>
				<subAddress>31</subAddress>
				<direction>Tx</direction>
			</address>
		</message>
		<message>
			<name>"MC 17"</name>
			<modeCode>17</modeCode>
			<messageType>MC</messageType>
			<numberOfWords>1</numberOfWords>
			<address>
				<terminalAddress>21</terminalAddress>
				<subAddress>31</subAddress>
				<direction>Rx</direction>
			</address>
		</message>
	</messages>
</channel>
```

Notes:
- The default value for VS channels for "MC 16" and "Mc 17" words will be 0.0.

### Example (Terminals)

```xml
<channel>
	<hardwareChannel>0</hardwareChannel>
	<terminals>
		<terminal>
			<terminalAddress>0</terminalAddress>
		</terminal>
		<terminal>
			<terminalAddress>1</terminalAddress>
			<terminalName>"LRU Altimeter"</terminalName>
		</terminal>	
	</terminals>
</channel>
```

Notes:
- Defines terminals (BC and RTs) to populate.
- Messages may refer to terminals not explicitly included in this section. It is assumed that these terminals are implemented by other software or by physical nodes connected to the 1553 hardware channel.
- Terminal at terminalAddress = 0 is the bus controller.
- Terminal at terminalAddress = 1 is given a custom name "LRU Altimeter". By default, remote terminals are named according to the terminal address-specific format: 'Remote Terminal <%02d>'
- Subaddresses are not defined explicitly in the `terminals` definition; instead, subaddresses are implicitly defined when a message defines an endpoint on a simulated terminal. 

### Example (Frames)

```xml
<channel>
	<majorFrames>
		<majorFrame>
			<name>MajorFrame1</name>
			<minorFrameRefs>
				<minorFrameRef>MinorFrame1</minorFrameRef>
			</minorFrameRefs>
		</majorFrame>
	</majorFrames>
	<minorFrames>
		<minorFramePeriod>100000</minorFramePeriod>
		<minorFrame>
			<name>MinorFrame1</name>
			<messageRefs>
				<messageRef>Message1</messageRef>
			</messageRefs>
		</minorFrame>
	</minorFrames>
</channel>
```

Notes:
- The names of messages included in minorFrames and minorFrames included in majorFrames must match exactly.
- If simulating the Bus Controller (terminal 0), all frames and messages must be defined in the Parameters XML file. This determines the frames and messages simulated on the bus and the channels created in VeriStand.
- If only simulating Remote Terminals, only the frames and messages to be read and written by VeriStand need to be defined. This determines only the channels created in VeriStand.
- Minor frames will be executed sequentially within the major frame, each lasting for the duration defined in minorFramePeriod, in microseconds.

### Example (Acyclic Frames)

```xml
<channel>
	<acyclicFrames>
		<acyclicFrame>
			<name>acyclicFrame1</name>
			<createTriggerChannel>true</createTriggerChannel>
			<messageRefs>
				<messageRef>Message1</messageRef>
			</messageRefs>
		</acyclicFrame>
	</acyclicFrames>
</channel>
```

## Supported XML Tags
The following table describes the XML elements, or tags, you can use in a Parameters XML file.

|Element|Required?|Element Type|Min/Max Occurrences|Description|
|--- |--- |--- |--- |--- |
|`<channel>`|Yes|complex|1/unbounded|Opening tag for a channel definition.|
|→`<hardwareChannel>`|Yes|integer|1|Specifies the Hardware Channel used. Range is: [0:1].|
|→`<startingBufferIndex>`|No|integer|1|Overrides the standard starting buffer index for BIUs with more than 2000 channels.  Note: buffers are 1-indexed.|
||||||
|→`<terminals>`|Yes|complex|0/1|Opening tag for terminals (bus controller and remote terminals) definition.|
|→→`<terminal>`|Yes|complex|0/1|Opening tag for terminal definition.|
|→→→`<terminalAddress>`|Yes|integer|1|Specifies the terminal address. Range is: [0:31]. Bus controller will have value of 0. Remote terminal will have value 1..30. Value of 31 reserved for broadcast messages.|
|→→→`<terminalName>`|No|string|0/1|Specifies the terminal name. If this tag is empty or not found, the default terminal name is "Bus Controller" for terminalAddress = 0 and 'Remote Terminal <%02d>' for all other values of terminalAddress.|
||||||
|→`<messages>`|Yes|complex|0/1|Opening tag for messages definition.|
|→→`<message>`|Yes|complex|1/unbounded|Opening tag for data message or mode code definition.|
|→→→`<name>`|Yes|string|1|Specifies the message name.|
|→→→`<messageType>`|Yes|string|1|Specifies the message type. Supported values:<br/>"BC to RT" - Bus Controller to Remote Terminal.<br/>"RT to BC" - Remote Terminal to Bus Controller.<br/>"RT to RT" - Remote Terminal to Remote Terminal.<br/>"MC" - Mode Code.|
|→→→`<numberOfWords>`|Yes|integer|1|Specifies the number of words in the message at the sub-address. Range is: [1:32].|
|→→→`<modeCode>`|No|integer|0/1|Specifies the value of the modeCode.|
|→→→`<createTimestampChannel>`|No|boolean|0/1|Specifies whether a VeriStand Channel should be created for the label timestamp. This property is supported only for a receive (Rx) label, not for a transmit (Tx) label. Default Value (if XML element is absent) is false.|
|→→→`<address>`|Yes|complex|1/2|Opening tag for address definition. RT to RT message types require two address definitions.|
|→→→→`<terminalAddress>`|Yes|integer|1|Specifies the remote terminal address. Range is: [0:31].|
|→→→→`<subAddress>`|Yes|integer|1|Specifies the subaddress of the Remote terminal. Range is: [0:31].|
|→→→→`<direction>`|Yes|string|1|Specifies whether the channel is incoming (Rx) or outgoing (Tx).|
|→→→`<parameters>`|No|complex|0/1|Opening tag for a parameters definitions.|
|→→→→`<parameter>`|No|complex|1/unbounded|Opening tag for a Parameter definition.|
|→→→→→`<encoding>`|Yes|string|1|Specifies the Encoding for the Parameter. Supported values:<br/>BNR (default) - Binary Number Representation.<br/>Discrete - Individual bit.|
|→→→→→`<signed>`|No|boolean|0/1|Specifies whether Parameter is signed. It applies only to BNR encoding.|
|→→→→→`<startBit>`|Yes|integer|1|Specifies the Start Bit for the Parameter. Indexes are zero-based. Range is: [0:511].|
|→→→→→`<numberOfBits>`|Yes|integer|1|Specifies the number of bits for the Parameter. Range accepted is: [1:53]. Number of bits is limited by the number of bits used to store the mantissa in a double-precision floating point number used to transfer values in VeriStand.|
|→→→→→`<scale>`|No|xs:double|0/1|Specifies the multiplier to scale from raw data to engineering units. If no scaling is to be applied, value should be set to 1.0.|
|→→→→→`<offset>`|No|double|0/1|Specifies the offset value to apply when scaling from raw data to engineering units. If no offset is to be applied, value should be set to 0.0.|
|→→→→→`<name>`|Yes|string|1/32|Specifies, for each Parameter, the name to be used in VeriStand. When Parameter encoding is set to Discrete, each Parameter (each bit) must have an instance of that `<name>`.|
|→→→→→`<unit>`|No|string|0/1|Specifies, for each Parameter, the unit to be used in VeriStand.|
|→→→→→`<defaultValue>`|No<sup>1</sup>|double|0/1|Specifies, for each Parameter, the Default Value to be used for the associated VeriStand Channel. For explicitly defined parameters used in Tx messages, this XML Element must be present for each parameter. For Parameters used in Tx message, when Parameter `<encoding>` is set to Discrete, each Parameter (each bit) uses the specified `<defaultValue>`.|
||||||
|→`<majorFrames>`|No<sup>2</sup>|complex|0/1|Opening tag for major frames definition.|
|→→`<majorFrame>`|Yes|complex|1/unbounded|Opening tag for major frame definition.|
|→→→`<name>`|Yes|string|1|Specifies the major frame name.|
|→→→`<minorFrameRefs>`|Yes|complex|1|Opening tag for minor frames contained in the majorFrame|
|→→→→`<minorFrameRef>`|Yes|string|1/unbounded|Specifies the minor frame to include in the major frame. This string must match the minor frame name.|
||||||
|→`<minorFrames>`|No<sup>2</sup>|complex|0/1|Opening tag for minor frames definition.|
|→→`<minorFramePeriod>`|Yes|integer|1|Specifies the period, in microseconds, to transmit each minor frame|
|→→`<minorFrame>`|Yes|complex|1/unbounded|Opening tag for minor frame definition.|
|→→→`<name>`|Yes|string|1|Specifies the minor frame name.|
|→→→`<messageRefs>`|Yes|complex|1|Opening tag for messages contained in the minor frame|
|→→→→`<messageRef>`|Yes|string|1/unbounded|Specifies the message reference to include in the minor frame. This string must match the message name.|
||||||
|→`<acyclicFrames>`|No<sup>2</sup>|complex|0/1|Opening tag for acyclic frames definition.|
|→→`<acyclicFrame>`|Yes|complex|1/unbounded|Opening tag for acyclic frame definition.|
|→→→`<name>`|Yes|string|1|Specifies the acyclic frame name. This must match the name in the hardware configuration file.|
|→→→`<createTriggerChannel>`|No|boolean|1|Specifies whether to create a trigger channel on the bus controller for the acyclic frame. The default is true.|
|→→→`<messageRefs>`|Yes|complex|1|Opening tag for messages contained in the acyclic frame|
|→→→→`<messageRef>`|Yes|string|1/unbounded|Specifies the message reference to include in the acyclic frame. This string must match the message name.|

Notes:
1. For Tx parameters, `<defaultValue>` must be present.
2. If the Bus Controller terminal is simulated, majorFrames, minorFrames, and acyclicFrames must be defined in the Parameters file. Otherwise, no cyclic messages will be transmitted on the bus.
