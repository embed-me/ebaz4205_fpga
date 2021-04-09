--------------------------------------------------------------------------------
-- Copyright (C) 2020 - embed-me
--
-- Lukas Lichtl <support@embed-me.com>
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License v2 as published by
-- the Free Software Foundation.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
--
--------------------------------------------------------------------------------
-- Function description:
-- 
--------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ebaz4205_top is

  port (
    -- ddr
    ddr_addr_io          : inout std_logic_vector (14 downto 0);
    ddr_ba_io            : inout std_logic_vector (2 downto 0);
    ddr_cas_n_io         : inout std_logic;
    ddr_ck_n_io          : inout std_logic;
    ddr_ck_p_io          : inout std_logic;
    ddr_cke_io           : inout std_logic;
    ddr_cs_n_io          : inout std_logic;
    ddr_dm_io            : inout std_logic_vector (3 downto 0);
    ddr_dq_io            : inout std_logic_vector (31 downto 0);
    ddr_dqs_n_io         : inout std_logic_vector (3 downto 0);
    ddr_dqs_p_io         : inout std_logic_vector (3 downto 0);
    ddr_odt_io           : inout std_logic;
    ddr_ras_n_io         : inout std_logic;
    ddr_reset_n_io       : inout std_logic;
    ddr_we_n_io          : inout std_logic;
    -- eth0
    eth0_gmii_rx_clk_i   : in    std_logic;
    eth0_gmii_rx_dv_i    : in    std_logic;
    eth0_gmii_rxd_i      : in    std_logic_vector (3 downto 0);
    eth0_gmii_tx_clk_i   : in    std_logic;
    eth0_gmii_tx_en_o    : out   std_logic_vector (0 to 0);
    eth0_gmii_txd_o      : out   std_logic_vector (3 downto 0);
    eth0_mdio_mdc_o      : out   std_logic;
    eth0_mdio_mdio_io    : inout std_logic;
    -- ios
    fixed_io_ddr_vrn_io  : inout std_logic;
    fixed_io_ddr_vrp_io  : inout std_logic;
    fixed_io_mio_io      : inout std_logic_vector (53 downto 0);
    fixed_io_ps_clk_io   : inout std_logic;
    fixed_io_ps_porb_io  : inout std_logic;
    fixed_io_ps_srstb_io : inout std_logic;
    green_led            : out   std_logic;
    red_led              : out   std_logic);

end entity ebaz4205_top;



architecture arch of ebaz4205_top is

  signal eth0_gmii_txd : std_logic_vector(7 downto 0);
  signal eth0_gmii_rxd : std_logic_vector(7 downto 0);

  signal emio_i : std_logic_vector(63 downto 0);
  signal emio_o : std_logic_vector(63 downto 0);
  signal emio_t : std_logic_vector(63 downto 0);

  signal gpio : std_logic_vector(31 downto 0);

begin

  -----------------------------------------------------------------------------
  -- Component Instatiations
  -----------------------------------------------------------------------------

  system_wrapper_i : entity work.system_wrapper
    port map (
      ddr_addr          => ddr_addr_io,
      ddr_ba            => ddr_ba_io,
      ddr_cas_n         => ddr_cas_n_io,
      ddr_ck_n          => ddr_ck_n_io,
      ddr_ck_p          => ddr_ck_p_io,
      ddr_cke           => ddr_cke_io,
      ddr_cs_n          => ddr_cs_n_io,
      ddr_dm            => ddr_dm_io,
      ddr_dq            => ddr_dq_io,
      ddr_dqs_n         => ddr_dqs_n_io,
      ddr_dqs_p         => ddr_dqs_p_io,
      ddr_odt           => ddr_odt_io,
      ddr_ras_n         => ddr_ras_n_io,
      ddr_reset_n       => ddr_reset_n_io,
      ddr_we_n          => ddr_we_n_io,
      eth0_gmii_rx_clk  => eth0_gmii_rx_clk_i,
      eth0_gmii_rx_dv   => eth0_gmii_rx_dv_i,
      eth0_gmii_rxd     => eth0_gmii_rxd,
      eth0_gmii_tx_clk  => eth0_gmii_tx_clk_i,
      eth0_gmii_tx_en   => eth0_gmii_tx_en_o,
      eth0_gmii_txd     => eth0_gmii_txd,
      eth0_mdio_mdc     => eth0_mdio_mdc_o,
      eth0_mdio_mdio_io => eth0_mdio_mdio_io,
      fixed_io_ddr_vrn  => fixed_io_ddr_vrn_io,
      fixed_io_ddr_vrp  => fixed_io_ddr_vrp_io,
      fixed_io_mio      => fixed_io_mio_io,
      fixed_io_ps_clk   => fixed_io_ps_clk_io,
      fixed_io_ps_porb  => fixed_io_ps_porb_io,
      fixed_io_ps_srstb => fixed_io_ps_srstb_io,
      emio_i            => emio_i,
      emio_o            => emio_o,
      emio_t            => emio_t,
      gpio_o            => gpio);


  -----------------------------------------------------------------------------
  -- IOs
  -----------------------------------------------------------------------------

  eth0_gmii_txd_o <= eth0_gmii_txd(eth0_gmii_txd_o'range);
  eth0_gmii_rxd   <= b"0000" & eth0_gmii_rxd_i;

  red_led   <= gpio(0);
  green_led <= gpio(1);


end architecture arch;
