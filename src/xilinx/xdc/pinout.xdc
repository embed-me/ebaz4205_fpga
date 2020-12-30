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
#  
# ------------------------------------------------------------------------------


# ---------------------------------------------------------
# Ethernet 0
# ---------------------------------------------------------

set_property PACKAGE_PIN U14 [get_ports {eth0_gmii_rx_clk_i}]
set_property PACKAGE_PIN U15 [get_ports {eth0_gmii_tx_clk_i}]
set_property PACKAGE_PIN W19 [get_ports {eth0_gmii_tx_en_o[0]}]
set_property PACKAGE_PIN W18 [get_ports {eth0_gmii_txd_o[0]}]
set_property PACKAGE_PIN Y18 [get_ports {eth0_gmii_txd_o[1]}]
set_property PACKAGE_PIN V18 [get_ports {eth0_gmii_txd_o[2]}]
set_property PACKAGE_PIN Y19 [get_ports {eth0_gmii_txd_o[3]}]
set_property PACKAGE_PIN W16 [get_ports {eth0_gmii_rx_dv_i}]
set_property PACKAGE_PIN W15 [get_ports {eth0_mdio_mdc_o}]
set_property PACKAGE_PIN Y14 [get_ports {eth0_mdio_mdio_io}]
set_property PACKAGE_PIN Y16 [get_ports {eth0_gmii_rxd_i[0]}]
set_property PACKAGE_PIN V16 [get_ports {eth0_gmii_rxd_i[1]}]
set_property PACKAGE_PIN V17 [get_ports {eth0_gmii_rxd_i[2]}]
set_property PACKAGE_PIN Y17 [get_ports {eth0_gmii_rxd_i[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports eth0_*]
