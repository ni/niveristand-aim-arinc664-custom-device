# Theory of Operations

This guide details low-level custom device implementation details of the AIM ARINC 664 custom device and their impact on system performance.

## Communications Bus Template

This custom device is based on the [VeriStand Communications Bus Template](https://github.com/ni/niveristand-communications-bus-template). That project's User Guide contains its own [Theory of Operation section](https://github.com/ni/niveristand-communications-bus-template/blob/main/Docs/User%20Guide.md#theory-of-operation), which details the main components of custom devices implemented based on this pattern. This guide explains the design decisions and performance implications for this custom device.

The most important concept in the Communications Bus Template's design pattern is the ability to execute individual engine components as either inline or asynchronous processes from the same inline custom device. This is detailed in the [Engine section](https://github.com/ni/niveristand-communications-bus-template/blob/main/Docs/User%20Guide.md#engine) of that User Guide.

## Execution Units

This custom device consists of several Execution Units and Factories, and this section details the execution mode and responsibilities of each. All Execution Units consist of VIs that define steps in which an Execution Unit is brought up and brought down. See below for more details on what logic is executing in each of these steps per Execution Unit.

![EngineLibrary](Screenshots/EngineLibrary.png)

| Execution Unit            | Mode and timing        | Responsibility                                                                                    |
| ------------------------- | ------------- | ------------------------------------------------------------------------------------------------- |
| Monitor Execution Unit    | Async - 100 Hz rate (fixed)| Monitor all incoming 664 frames to the specified port. It monitor traffic statistics and, optionally, it logs them to a pcap file. Default read buffer size per port is 2MB |
| Rx UDP Execution Unit     | Inline or Async (default config) - 100 Hz rate (configurable) | Read all incoming 664 frames on a specific VL and UDP port                                  |
| Tx Generic Execution Unit | Inline or Async (default config) - 100 Hz rate (configurable) | Write all outgoing generic 664 frames defined in the Payload binary file                        |
| Tx UDP Execution Unit     | Inline or Async (default config) - 100 Hz rate (configurable) | Write all outfoing 664 frames to a specific VL and UDP port                                                           |

### Monitor Execution Unit
- **Initialize**: Creates a Rx Chrono Monitor session, configures the Capture Control setting, and creates the Monitor Queue to be used by later driver calls.
- **Start**: Starts the monitoring.
- **Read from Hardware**: Reads from the Monitor Queue and logs data to a pcap file for post-deployment processing/reviewing.
- **Write to Hardware**: Opens pcap file if logging channel is enabled.
- **Finalize**: Stops monitoring, closes Monitor Queue, closes Port session, closes reference to the AIM ARINC 664 library, and closes the logging reference.

### Rx UDP Execution Unit
- **Initialize**: Creates a Rx VL-Oriented session, creates Rx VL reference, and creates Rx UDP Communication port references to be used by later driver calls.
- **Start**: Starts the receive function.
- **Read from Hardware**: Reads data from the UDP connection port.
- **Write to Hardware**: N/A
- **Finalize**: Stops receiving, closes the UDP Communication port reference, closes Port session, and closes reference to the AIM ARINC 664 library.

### Tx Generic Execution Unit
- **Initialize**: Sets frames to be sent by board in the **Write to Hardware** step.
- **Start**: Sets the Tx Control operation to start transmitting frames.
- **Read from Hardware**: Gets Tx Queue Status and Tx Status channel values.
- **Write to Hardware**: N/A
- **Finalize**: Stops transmitting, closes Port session, and closes reference to the AIM ARINC 664 library.

### Tx UDP Execution Unit
- **Initialize**: Creates Tx UDP Port-Oriented session, creates Tx VL reference, and sets paylod to be sent by board in the **Write to Hardware** step.
- **Start**: Starts transmission of the payload.
- **Read from Hardware**: Gets Tx UDP Status channel values.
- **Write to Hardware**: Writes payload to UDP port.
- **Finalize**: Stops transmitting, closes the UDP Port-Oriented reference, closes Port session, and closes reference to the AIM ARINC 664 library.

### Execution Unit Factory

This Factory is included in the Engine library but executes on the host PC during deployment of the custom device. Each Execution Unit's data is retrieved from the System Definition and channel references are configured. The output of `Create Execution Unit.vi` is deployed to the target and un-flattened in the RT Engine.

## Execution Modes

As shown above, the default configuration of the custom device executes all Execution Units as asynchronous.

The AIM ARINC 664 Custom Device PCL duration increases with the number of ARINC 664 frames or messages configured. Increasing the number of ARINC 664 frames or messages will limit the maximum HP loop rate of the entire VeriStand deployment.

**Note**: The execution time for each Execution Unit and the PCL will vary greatly depending on the system complexity, processor capability, and the number of frames or messages configured.