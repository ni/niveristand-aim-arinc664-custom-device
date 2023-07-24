# AIM ARINC 664 Custom Device

The **AIM ARINC 664 Custom Device** allows use of AIM ARINC 664 PXIe Modules in VeriStand. The custom device targets one entire **board** of a AIM ARINC 664 PXIe module. To target multiple boards, use multiple instances of this custom device.

The custom device supports the following functionality:
- Import configuration files via scripting and System Explorer
- LabVIEW scripting of the custom device configuration
- Viewing read-only configuration in System Explorer
- Transmit and Receive configured frames
- Log all configured channels and frames

## Using the Custom Device

- Download the latest release package from the [Releases page]().
- See the [User Guide]() for a walkthrough of using the Custom Device.
- See the [Parameters XML File Schema documentation]() for configuring the custom device.

## Requirements

- PXI Linux RT Controller
- Supported AIM ARINC 664 PXI Module

## LabVIEW Source Code Version

LabVIEW 2020 SP1

## Dependencies

### Running the custom device

- [VeriStand 2020 R4 or later](https://www.ni.com/ro-ro/support/downloads/software-products/download.veristand.html#382072)
- AIM ARINC 664 BSP Driver

### Real-Time target software components

- AIM ARINC 664 BSP Driver
  - Must enable the `ni-third-party` feed in MAX to install

### Developing or building from source

- [LabVIEW 2020 SP1 or later](https://www.ni.com/en-us/support/downloads/software-products/download.labview.html)
- [AIM ARINC 664 BSP Driver and LabVIEW API]()
- [VeriStand Custom Device Development Tools](https://github.com/ni/niveristand-custom-device-development-tools)
  - Install the latest package from the [release page](https://github.com/ni/niveristand-custom-device-development-tools/releases)
- [VeriStand Custom Device Message Library](https://github.com/ni/niveristand-custom-device-message-library)
  - Install the latest package from the [release page](https://github.com/ni/niveristand-custom-device-message-library/releases)
- [VeriStand Custom Device Testing Tools](https://github.com/ni/niveristand-custom-device-testing-tools)
  - Install the latest package from the [release page](https://github.com/ni/niveristand-custom-device-testing-tools/releases)

## Git History & Rebasing Policy

Branch rebasing and other history modifications will be listed here, with several notable exceptions:
- Branches prefixed with `dev/` may be rebased, overwritten, or deleted at any time.
- Pull requests may be squashed on merge.

## License

This AIM ARINC 664 Custom Device is licensed under an MIT-style license (see LICENSE). Other incorporated projects may be licensed under different licenses. All licenses allow for non-commercial and commercial use.