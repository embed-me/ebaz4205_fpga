# ebaz4205_fpga

The EBAZ4205 was originally developed as cryptomining control board.
Due to it's low price on the marked it is also perfect to learn
the Zynq platform. This branch contains a Xilinx Debug Bridge which
can be used in combination with the meta-ebaz4205 Yocto layer to
act as a cheap JTAG programmer.

## Maintainer

	Lukas Lichtl (admin@embed-me.com)

## Hardware Support

There seem to be two hardware versions currently sold, one with a
PHY oscillator mounted and one where it is missing.
This design current supports both versions.

## Dependencies

The configuration/makefile generation depends on:

* [hdlmake](https://hdlmake.readthedocs.io/en/master/)

The build depends on:

* [Xilinx Vivado](https://www.xilinx.com/products/design-tools/vivado.html)

## Configure

In order to generate the Makefile for the build, make sure that hdlmake
is in the path and run the following commands:

	cd build
	hdlmake

## Build

The build process requires Xilinx Vivado. To generate a bitstream run:

	make

## Vivado GUI

To open the design in the Vivado GUI once the build is done:

	vivado ebaz4205_top.xpr

## Yocto

Requires the following Device-Tree Entry:

	debug_bridge_0: debug_bridge@43c00000 {
		clock-names = "s_axi_aclk";
		clocks = <&clkc 15>;
		compatible = "xlnx,debug-bridge-3.0", "generic-uio";
		reg = <0x43c00000 0x10000>;
		xlnx,bscan-mux = <0x1>;
		xlnx,build-revision = <0x0>;
		xlnx,chip-id = <0x0>;
		xlnx,clk-input-freq-hz = <0x17d7840>;
		xlnx,core-major-ver = <0x1>;
		xlnx,core-minor-alpha-ver = <0x61>;
		xlnx,core-minor-ver = <0x0>;
		xlnx,core-type = <0x1>;
		xlnx,dclk-has-reset = <0x0>;
		xlnx,debug-mode = <0x3>;
		xlnx,design-type = <0x0>;
		xlnx,device-family = <0x0>;
		xlnx,en-bscanid-vec = "false";
		xlnx,en-int-sim = <0x1>;
		xlnx,en-passthrough = <0x0>;
		xlnx,enable-clk-divider = "false";
		xlnx,fifo-style = "SUBCORE";
		xlnx,ir-id-instr = <0x0>;
		xlnx,ir-user1-instr = <0x0>;
		xlnx,ir-width = <0x0>;
		xlnx,major-version = <0xe>;
		xlnx,master-intf-type = <0x1>;
		xlnx,minor-version = <0x1>;
		xlnx,num-bs-master = <0x0>;
		xlnx,pcie-ext-cfg-base-addr = <0x400>;
		xlnx,pcie-ext-cfg-next-ptr = <0x000>;
		xlnx,pcie-ext-cfg-vsec-id = <0x0008>;
		xlnx,pcie-ext-cfg-vsec-length = <0x020>;
		xlnx,pcie-ext-cfg-vsec-rev-id = <0x0>;
		xlnx,tck-clock-ratio = <0x8>;
		xlnx,two-prim-mode = "false";
		xlnx,use-bufr = <0x0>;
		xlnx,use-ext-bscan = "true";
		xlnx,use-softbscan = <0x1>;
		xlnx,use-startup-clk = "false";
		xlnx,user-scan-chain = <0x1>;
		xlnx,xsdb-num-slaves = <0x0>;
		xlnx,xvc-hw-id = <0x0001>;
		xlnx,xvc-sw-id = <0x0001>;
	};

Ensure that you integrate the [meta-ebaz4205](https://github.com/embed-me/meta-ebaz4205)
layer in your build and enable the xvc-server recipe in your image.

## Usage

Once the EBAZ4205 is started with the server, connect the
JTAG pins to your target (attention, there is no input protection
and the pins go straight to the FPGA!) Ensure that the voltage
levels (3V3) are correct and only proceed if you know what you are doing.

The pinout from the EBAZ4205 to the DATA header is as follows:

	- DATA1-15 -> JTAG TCK
	- DATA1-16 -> JTAG TMS
	- DATA1-20 -> JTAG TDO
	- DATA1-19 -> JTAG TDI