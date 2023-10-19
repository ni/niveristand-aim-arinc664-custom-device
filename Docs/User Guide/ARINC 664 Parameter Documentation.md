# ARINC 664 Parameter Documentation

## Parameter Valid Values:

### Tx Generic Session
- **ID**: User-specified name of the payload
- **InterFrameGap**: 0 to 16383

    **NOTE:** a value less than 24 may generate a Short interframe gap error condition
- **PreambleCount**: 0 to 15

    **NOTE:** setting the value to 0 will result in 7 preamble bytes
- **NetSelect**: FDX_TX_FRAME_DLY_A, FDX_TX_FRAME_DLY_B, FDX_TX_FRAME_BOTH, FDX_TX_FRAME_ONLY_A, FDX_TX_FRAME_ONLY_B
- **FrameStartMode**: FDX_TX_FRAME_START_IFG, FDX_TX_FRAME_START_PGWT, FDX_TX_FRAME_START_TRG, FDX_TX_FRAME_START_TRG_D
- **SequenceNumberOffset**: 0 to 255

### Tx Udp Session
- **VlId**: 0 to 65535
- **PartitionID**: 0 to 31
- **SubVlId**: 1 to 4
- **UdpSrcPort**: 0 to 1023
- **UdpDstPort**: 0 to 1023
- **SampleRateMs**: valid range starts at 1

    **NOTE:** the resulting load of a VL with a given set of sampling ports can be calculated by the following formula **(VL-Bag * ((1/Sampling Rate UDP Port 1) + (1/Sampling Rate UDP Port 2) + ...))** and if the caculated VL load value is greater than 1, the VL is overloaded and configured sampling rates can not be met.
- **UdpNumBufMessages**: valid range starts at 0 in which the queue will be allocated with a default size
- **UdpMaxMessageSize**: 0 to 8192

### Rx Monitor Session
- **CaptureMode**: FDX_MON_SELECTIVE. FDX_MON_CONTINUOUS