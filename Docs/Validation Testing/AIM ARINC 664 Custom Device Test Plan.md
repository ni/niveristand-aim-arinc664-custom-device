# AIM ARINC 664 Custom Device Test Plan

## Reason for Testing
The ARINC 664 protocol has a multitude a parameters that can be stressed during expected normal user usage. We must create tests that push the protocol (and thus the custom device) to it's limits in order to understand how performant the custom device is, if any unexpected behavior was introduced in the custom device code, etc.

## Regression Tests
- Maximum number of frames??
- Minimum number of frames
- Maximum frame payload size
- Minimum frame payload size
- 4096 Virtual Links
- 2048 Virtual Links
- 1024 Virtual Links
- 512 Virtual Links
- 1 Virtual Link

## Performance Tests
- Maximum VeriStand PCL rate

## Test Files
A Parameters XML file will be used for configuring the TX Generic and Monitor Execution Units of the Custom Device. This file will be used for all tests.

A System Definition file will be provided that contains the AIM ARINC 664 Custom Device. The Custom Device will already be configured using the Parameters XML file mentioned above.

There will be multiple binary Frame Configuration files that will configure the Frame Array to be sent by the TX Generic Execution Unit. Each file will be named to match the test it is used for.

The Monitor Execution Unit will generate a log file on the RT target. This log file is of pcap format for viewing in WireShark. This log (along with any potential deployment errors) will serve as the results of the tests. The pcap file will require the user to review the frames sent and determine whether or not they were sent as expected.

## How to Run Regression Tests
1. Create a VeriStand project and choose the System Defintion located at Docs\Validation Testing\Base AIM ARINC 664 Sys Def.nivssdf
2. Open up the System Explorer and modify the Controller's ip address if targeting a differnt RT target
3. Navigate to the AIM ARINC 664 Custom Device and click on the Tx Generic section under Port 0's Outgoing section
4. Select a Raw Frame Array file using the file explorer
5. Save the System Definition
6. Deploy the System Definition
7. Measure results by:
   - Taking note of deployment errors (if any)
   - Copy the log(s) from the RT target to your computer and open it using WireShark. Ensure that the frames weere sent at the correct intervals, the number of Virtual Links equals the number configured, etc.
   NOTE: The log will be compressed so make sure to uncompress the file and remove the number from the end of the file to change it back to a pcap file
  
## How to Run Performance Tests
1. Open up the NI VeriStand Benchmark Tool LabVIEW project
2. Run the VI
3. Enter the required fields
4. Measure results by:
  - Taking note of the Last Attempt (Hz) value and record it to the table below

## Possible Errors
- If you get a deployment error, here are some things to check:
  1. the Configuration file mentioned in this doc could have been modified
  2. the Frame Array file could be corrupted
  3. the RT target is not running the VeriStand Engine
  4. the RT target is not booted into Linux RT
- If the Tx Queue Status FramesSent indicator is 0 then an issue occured during configuration and the Tx Execution Unit is not sending frames
- If the Monitor Queue Status FrameGoodCount indicator is 0 then an issue occured during configuration and the Monitor Execution Unit is not reading frames

## Results
**NOTE:** These results were obtained from the AIM ARINC 664 Custom Device while the logging functionality was disabled.

| Maximum VeriStand PCL Rate Achieved (kHz)| Test Run |
| ---------------------------------------- | -------- |
| 24.843                                   | 1        |
| 28.281                                   | 2        |
| 27.344                                   | 3        |
| 27.344                                   | 4        |
| 26.094                                   | 5        |