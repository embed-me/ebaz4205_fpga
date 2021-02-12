# ebaz4205_fpga

The EBAZ4205 was originally developed as cryptomining control board.
Due to it's low price on the marked it is also perfect to learn
the Zynq platform. This repo provides a minimal FPGA Design.

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