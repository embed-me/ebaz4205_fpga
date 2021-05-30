--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
--Date        : Sat May 29 18:46:55 2021
--Host        : vm-centos7 running 64-bit CentOS Linux release 7.9.2009 (Core)
--Command     : generate_target system_wrapper.bd
--Design      : system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_wrapper is
  port (
    ddr_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    ddr_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr_cas_n : inout STD_LOGIC;
    ddr_ck_n : inout STD_LOGIC;
    ddr_ck_p : inout STD_LOGIC;
    ddr_cke : inout STD_LOGIC;
    ddr_cs_n : inout STD_LOGIC;
    ddr_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    ddr_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr_odt : inout STD_LOGIC;
    ddr_ras_n : inout STD_LOGIC;
    ddr_reset_n : inout STD_LOGIC;
    ddr_we_n : inout STD_LOGIC;
    emio_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    emio_o : out STD_LOGIC_VECTOR ( 63 downto 0 );
    emio_t : out STD_LOGIC_VECTOR ( 63 downto 0 );
    eth0_clk : out STD_LOGIC;
    eth0_gmii_rx_clk : in STD_LOGIC;
    eth0_gmii_rx_dv : in STD_LOGIC;
    eth0_gmii_rxd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    eth0_gmii_tx_clk : in STD_LOGIC;
    eth0_gmii_tx_en : out STD_LOGIC_VECTOR ( 0 to 0 );
    eth0_gmii_txd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    eth0_mdio_mdc : out STD_LOGIC;
    eth0_mdio_mdio_io : inout STD_LOGIC;
    fixed_io_ddr_vrn : inout STD_LOGIC;
    fixed_io_ddr_vrp : inout STD_LOGIC;
    fixed_io_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    fixed_io_ps_clk : inout STD_LOGIC;
    fixed_io_ps_porb : inout STD_LOGIC;
    fixed_io_ps_srstb : inout STD_LOGIC;
    tck_o : out STD_LOGIC;
    tdi_o : out STD_LOGIC;
    tdo_o : in STD_LOGIC;
    tms_o : out STD_LOGIC
  );
end system_wrapper;

architecture STRUCTURE of system_wrapper is
  component system is
  port (
    emio_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    emio_o : out STD_LOGIC_VECTOR ( 63 downto 0 );
    emio_t : out STD_LOGIC_VECTOR ( 63 downto 0 );
    eth0_clk : out STD_LOGIC;
    eth0_gmii_rx_clk : in STD_LOGIC;
    eth0_gmii_rx_dv : in STD_LOGIC;
    eth0_gmii_rxd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    eth0_gmii_tx_clk : in STD_LOGIC;
    eth0_gmii_tx_en : out STD_LOGIC_VECTOR ( 0 to 0 );
    eth0_gmii_txd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fixed_io_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    fixed_io_ddr_vrn : inout STD_LOGIC;
    fixed_io_ddr_vrp : inout STD_LOGIC;
    fixed_io_ps_srstb : inout STD_LOGIC;
    fixed_io_ps_clk : inout STD_LOGIC;
    fixed_io_ps_porb : inout STD_LOGIC;
    ddr_cas_n : inout STD_LOGIC;
    ddr_cke : inout STD_LOGIC;
    ddr_ck_n : inout STD_LOGIC;
    ddr_ck_p : inout STD_LOGIC;
    ddr_cs_n : inout STD_LOGIC;
    ddr_reset_n : inout STD_LOGIC;
    ddr_odt : inout STD_LOGIC;
    ddr_ras_n : inout STD_LOGIC;
    ddr_we_n : inout STD_LOGIC;
    ddr_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    ddr_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    ddr_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    eth0_mdio_mdc : out STD_LOGIC;
    eth0_mdio_mdio_o : out STD_LOGIC;
    eth0_mdio_mdio_t : out STD_LOGIC;
    eth0_mdio_mdio_i : in STD_LOGIC;
    tdi_o : out STD_LOGIC;
    tms_o : out STD_LOGIC;
    tck_o : out STD_LOGIC;
    tdo_o : in STD_LOGIC
  );
  end component system;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal eth0_mdio_mdio_i : STD_LOGIC;
  signal eth0_mdio_mdio_o : STD_LOGIC;
  signal eth0_mdio_mdio_t : STD_LOGIC;
begin
eth0_mdio_mdio_iobuf: component IOBUF
     port map (
      I => eth0_mdio_mdio_o,
      IO => eth0_mdio_mdio_io,
      O => eth0_mdio_mdio_i,
      T => eth0_mdio_mdio_t
    );
system_i: component system
     port map (
      ddr_addr(14 downto 0) => ddr_addr(14 downto 0),
      ddr_ba(2 downto 0) => ddr_ba(2 downto 0),
      ddr_cas_n => ddr_cas_n,
      ddr_ck_n => ddr_ck_n,
      ddr_ck_p => ddr_ck_p,
      ddr_cke => ddr_cke,
      ddr_cs_n => ddr_cs_n,
      ddr_dm(3 downto 0) => ddr_dm(3 downto 0),
      ddr_dq(31 downto 0) => ddr_dq(31 downto 0),
      ddr_dqs_n(3 downto 0) => ddr_dqs_n(3 downto 0),
      ddr_dqs_p(3 downto 0) => ddr_dqs_p(3 downto 0),
      ddr_odt => ddr_odt,
      ddr_ras_n => ddr_ras_n,
      ddr_reset_n => ddr_reset_n,
      ddr_we_n => ddr_we_n,
      emio_i(63 downto 0) => emio_i(63 downto 0),
      emio_o(63 downto 0) => emio_o(63 downto 0),
      emio_t(63 downto 0) => emio_t(63 downto 0),
      eth0_clk => eth0_clk,
      eth0_gmii_rx_clk => eth0_gmii_rx_clk,
      eth0_gmii_rx_dv => eth0_gmii_rx_dv,
      eth0_gmii_rxd(7 downto 0) => eth0_gmii_rxd(7 downto 0),
      eth0_gmii_tx_clk => eth0_gmii_tx_clk,
      eth0_gmii_tx_en(0) => eth0_gmii_tx_en(0),
      eth0_gmii_txd(7 downto 0) => eth0_gmii_txd(7 downto 0),
      eth0_mdio_mdc => eth0_mdio_mdc,
      eth0_mdio_mdio_i => eth0_mdio_mdio_i,
      eth0_mdio_mdio_o => eth0_mdio_mdio_o,
      eth0_mdio_mdio_t => eth0_mdio_mdio_t,
      fixed_io_ddr_vrn => fixed_io_ddr_vrn,
      fixed_io_ddr_vrp => fixed_io_ddr_vrp,
      fixed_io_mio(53 downto 0) => fixed_io_mio(53 downto 0),
      fixed_io_ps_clk => fixed_io_ps_clk,
      fixed_io_ps_porb => fixed_io_ps_porb,
      fixed_io_ps_srstb => fixed_io_ps_srstb,
      tck_o => tck_o,
      tdi_o => tdi_o,
      tdo_o => tdo_o,
      tms_o => tms_o
    );
end STRUCTURE;
