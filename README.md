# AIM ARINC 664 Custom Device

The **AIM ARINC 664 Custom Device** allows use of AIM ARINC 664 PXIe Modules in VeriStand. The custom device targets one entire **board** of a AIM ARINC 664 PXIe module. To target multiple boards, use multiple instances of this custom device.

The custom device supports the following functionality:
- Import configuration files via scripting and System Explorer
- LabVIEW scripting of the custom device configuration
- Viewing read-only configuration in System Explorer
- Transmit and Receive configured frames
- Log all configured channels and frames

## Using the Custom Device

- Download the latest release package from the [Releases page](https://www.ni.com/en/support/downloads/software-products/download.aim-arinc-664-driver.html#494504).
- See the [User Guide](Docs/User%20Guide/User%20Guide.md) for a walkthrough of using the Custom Device.
- See the [Parameters XML File Schema documentation](Docs/Parameters%20XML%20File/Parameters%20XML%20File.md) for configuring the custom device.

## Requirements

- PXI Linux RT Controller
- Supported AIM ARINC 664 PXI Module

## LabVIEW Source Code Version

LabVIEW 2020

## Dependencies

### Windows components
- [AIM ARINC 664 BSP Driver](https://www.ni.com/en/support/downloads/software-products/download.aim-arinc-664-driver.html#494504)
- To use the pcap file *logging* feature of the **Monitoring** port mode, you must install [Npcap](https://npcap.com/). Select between one of the three options below:
  - [Wireshark](https://www.wireshark.org/download.html), which has the option to install Npcap
  - [Npcap](https://npcap.com/#download) as a standalone package
  - Installing [winpcap](https://www.winpcap.org/). Consider this option only for legacy systems as Winpcap is obsolete since 2018

### Real-Time target software components

- `AIM ARINC-664 Board Software Package` installed through MAX
  - Must enable the `ni-third-party` feed to be able to select it for installation

![Edit feeds](Docs/User%20Guide/Screenshots/max_manage_feeds.PNG)

![Enable 3rd party](Docs/User%20Guide/Screenshots/max_enable_3rdParty.PNG)


## Developing and building from source

- [LabVIEW 2020 or later](https://www.ni.com/en-us/support/downloads/software-products/download.labview.html)
- [AIM ARINC 664 BSP Driver and LabVIEW API](https://www.ni.com/en/support/downloads/software-products/download.aim-arinc-664-driver.html#494504) 2023Q4 or later
  - Once the AIM BSP is installed, run the `aim_gmbh_lib_arinc_664-<a.b.c.d>.vip` VI Package which containes the LabVIEW VIs. Version 1.0.0.18 or later of the .vip is required.
- [VeriStand Custom Device Development Tools](https://github.com/ni/niveristand-custom-device-development-tools)
  - Install the latest package from the [release page](https://github.com/ni/niveristand-custom-device-development-tools/releases)
- [VeriStand Custom Device Message Library](https://github.com/ni/niveristand-custom-device-message-library)
  - Install the latest package from the [release page](https://github.com/ni/niveristand-custom-device-message-library/releases)
- [VeriStand Custom Device Testing Tools](https://github.com/ni/niveristand-custom-device-testing-tools)
  - Install the latest package from the [release page](https://github.com/ni/niveristand-custom-device-testing-tools/releases)
- [Microsoft HTML Workshop](https://learn.microsoft.com/en-us/previous-versions/windows/desktop/htmlhelp/microsoft-html-help-downloads )

### Build Steps
You have to build different components distributed across projects, depending on your stage of development:

<img width="720" height="622" alt="immagine" src="https://github.com/user-attachments/assets/f5787467-155f-4a50-855d-5a5c559ca296" />

In this case, *CD Name* is **AIM ARINC 664** . The order of steps is the following, from the top left of the picture:

1. Open `Source/Custom Device Support/AIM ARINC 664 Support.lvproj` and build the `System Explorer` packed library under `Build Specifications` on `My Computer` target
2. Build the `Engine` packed library under `Build Specifications` on `My Computer` target
3. Open `Source/Custom Device/AIM ARINC 664 Custom Device.lvproj` and build the `Configuration Release` packed library under `Build Specifications` on `My Computer` target
4. Build the `Engine Release` llb under `Build Specifications` on `My Computer` target
5. Switch to `Source/Custom Device Support/AIM ARINC 664 Support.lvproj` and build the `Engine` packed library under `Build Specifications` on `RT PXI Target` target
6. Switch to `Source/Custom Device/AIM ARINC 664 Custom Device.lvproj` and build the `Engine Release` packed library under `Build Specifications` on `RT PXI Target` target

Steps 3,4 and 6 are only needed the first time you build the custom device on a new machine. For subsequent builds, you can just rebuild the packed library files (steps 1,2 and 5). Only exceptions are:
- You add [Action VIs](https://www.ni.com/docs/en-US/bundle/veristand/page/custom-device-action-vi-template.html?srsltid=AfmBOooNJ2NO2Wu3Gslnr1jqdceqiQj8si-yX9SNA_OZQWktCNjqZ9h-) to the Custom Device

## Git History & Rebasing Policy

Branch rebasing and other history modifications will be listed here, with several notable exceptions:
- Branches prefixed with `dev/` may be rebased, overwritten, or deleted at any time.
- Pull requests may be squashed on merge.

## License

This AIM ARINC 664 Custom Device is licensed under an MIT-style license (see LICENSE). Other incorporated projects may be licensed under different licenses. All licenses allow for non-commercial and commercial use.
