# ------------------------------------------------------------------------------
#  Copyright (C) 2020 - embed-me
#
#  Lukas Lichtl <support@embed-me.com>
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License v2 as published by
#  the Free Software Foundation.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# ------------------------------------------------------------------------------
#  Function description:
#  Builds a minimalistic design for EBAZ4205.
#
#  1. Download hdlmake
#  2. Run hdlmake to generate Makefile
#  3. Run make
# ------------------------------------------------------------------------------

import os
import sys


target = "xilinx"
action = "synthesis"
language = "vhdl"

syn_device = "xc7z010"
syn_grade = "-1"
syn_package = "clg400"
syn_top = "ebaz4205_top"
syn_project = "ebaz4205_top"
syn_tool = "vivado"
syn_properties = [
    ["steps.synth_design.args.more options", "-verbose"],
    ["steps.synth_design.args.assert", "1"],
    ["steps.opt_design.args.verbose", "1"],
    ["steps.opt_design.is_enabled", "1"],
    ["steps.place_design.args.more options", "-verbose"],
    ["steps.phys_opt_design.args.more options", "-verbose"],
    ["steps.phys_opt_design.is_enabled", "1"],
    ["steps.route_design.args.more options", "-verbose"],
    ["steps.post_route_phys_opt_design.args.more options", "-verbose"],
    ["steps.post_route_phys_opt_design.is_enabled", "1"],
    ["steps.write_bitstream.args.bin_file", "1"]]

syn_post_bitstream_cmd = "$(TCL_INTERPRETER) syn_post_bitstream_cmd.tcl $(TCL_OPEN)"

src_root = "../src/"

files = [
    src_root + "xilinx/xdc/pinout.xdc",
    src_root + "xilinx/xdc/general.xdc",
    src_root + "xilinx/xdc/bitstream.xdc",
    src_root + "xilinx/bd/system.tcl",
]

modules = { "local" : [ src_root + "hdl/" ] };
