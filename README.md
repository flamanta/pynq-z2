<p align='center'><img src='http://lh3.googleusercontent.com/GBSzZyiMvimaw7oytvVmgN_R2VnGKa5dmCrofqb6HIcGxMqtLbQWSDGOjg7eWUjGuIBo23xRMM8ODMKJztYoyXPMzw=s236' width='200"'><br></p>

<h3 align="center">Useful resources which I found for the Pynq Z2.</h3>

## Important Resources
- [User Manual](https://d2m32eurp10079.cloudfront.net/Download/PYNQ_Z2_User_Manual_v1.1.pdf)
- [v2.5 Boot Image](https://d2m32eurp10079.cloudfront.net/Download/pynq_z2_v2.5.zip)
- [Vivado Board File](https://d2m32eurp10079.cloudfront.net/Download/pynq-z2.zip)
- [Master XDC](https://d2m32eurp10079.cloudfront.net/Download/pynq-z2_v1.0.xdc.zip)
- [Zynq-7000 Data Sheet](https://www.xilinx.com/support/documentation/data_sheets/ds187-XC7Z010-XC7Z020-Data-Sheet.pdf)
- [Zynq-7000 Technical Reference Manual](https://www.xilinx.com/support/documentation/user_guides/ug585-Zynq-7000-TRM.pdf)
- [Schematics](https://d2m32eurp10079.cloudfront.net/Download/TUL_PYNQ_Schematic_R12.pdf)

## Installation
1. Follow the setup guide [here](https://pynq.readthedocs.io/en/latest/getting_started/pynq_z2_setup.html).
  - To flash the Pynq boot image I used Balena Etcher.
  - My computer did not have an Ethernet port, so I bought the D-Link DUB-1312 USB 3.0 to Gigabit Ehernet Adapter. 
  - Make sure to install the network drivers for the ethernet adapter required using the CD.
  - Ethernet cable connected to laptop via Ethernet Adapter with static IP 192.168.2.1.
2. Install Vivado 2020.1 Webpack Edition.
  - Download the Vivado board files for Pynq Z2 and add it to your Vivado installation, in the ./data/boards/board_files directory.
  
## Creating a new Vivado project on Pynq Z2

1. Open Vivado and create a new project.
2. Pick a project name, and select your Zynq board as the target
3. Select RTL as the project type, and tick the box Do not specify sources at this time.
4. Make a copy of the master XDC file for the Pynq Z2.
5. Uncomment inputs which you are not using and rename them accordingly.
6. Code the hardware implementation in Verilog.
7. Click Generate Bitstream. Accept the default settings and wait.
8. When the synthesis and bitstream generation is done, select Open Hardware Manager and
connect to your FPGA.
9. If you haven’t before, or the hardware manager says no devices are connected, select Menu → Open New Target.
10. You should see xilinx_tcf listed under Hardware Targets in the top pane. In the bottom pane, two entries: arm_dap_0 and xc7z020_1. That’s good. Next → Finish.
11. Back in the Flow Navigator on the left, under Program and Debug, select Program Device. The only option to program will be the FPGA, xc7z020_1. The default bitstream file path should work.
