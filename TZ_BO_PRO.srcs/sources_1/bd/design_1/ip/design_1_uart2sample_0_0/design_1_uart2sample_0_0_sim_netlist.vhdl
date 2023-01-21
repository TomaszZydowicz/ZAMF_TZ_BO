-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri Jan 20 18:13:16 2023
-- Host        : Dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Foldery/Studia/MGR/SEM2/ZAMPF/projekt/TZ_BO_PRO/TZ_BO_PRO.srcs/sources_1/bd/design_1/ip/design_1_uart2sample_0_0/design_1_uart2sample_0_0_sim_netlist.vhdl
-- Design      : design_1_uart2sample_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart2sample_0_0_uart2sample is
  port (
    out_frame : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_ready : out STD_LOGIC;
    in_uart_frame : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_clk : in STD_LOGIC;
    in_uart_ready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart2sample_0_0_uart2sample : entity is "uart2sample";
end design_1_uart2sample_0_0_uart2sample;

architecture STRUCTURE of design_1_uart2sample_0_0_uart2sample is
  signal FSM_sequential_uart_frame_counter_i_1_n_0 : STD_LOGIC;
  signal \^out_ready\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal reg_out_ready_i_1_n_0 : STD_LOGIC;
  signal uart_frame_counter : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FSM_sequential_uart_frame_counter_i_1 : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of FSM_sequential_uart_frame_counter_reg : label is "iSTATE:1,iSTATE0:0";
  attribute SOFT_HLUTNM of reg_out_ready_i_1 : label is "soft_lutpair0";
begin
  out_ready <= \^out_ready\;
FSM_sequential_uart_frame_counter_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_uart_ready,
      I1 => uart_frame_counter,
      O => FSM_sequential_uart_frame_counter_i_1_n_0
    );
FSM_sequential_uart_frame_counter_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => FSM_sequential_uart_frame_counter_i_1_n_0,
      Q => uart_frame_counter,
      R => '0'
    );
\reg_frame[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => uart_frame_counter,
      I1 => in_uart_ready,
      O => p_0_out(15)
    );
\reg_frame[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_uart_ready,
      I1 => uart_frame_counter,
      O => p_0_out(7)
    );
\reg_frame_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_out(7),
      D => in_uart_frame(0),
      Q => out_frame(0),
      R => '0'
    );
\reg_frame_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_out(15),
      D => in_uart_frame(2),
      Q => out_frame(10),
      R => '0'
    );
\reg_frame_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_out(15),
      D => in_uart_frame(3),
      Q => out_frame(11),
      R => '0'
    );
\reg_frame_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_out(15),
      D => in_uart_frame(4),
      Q => out_frame(12),
      R => '0'
    );
\reg_frame_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_out(15),
      D => in_uart_frame(5),
      Q => out_frame(13),
      R => '0'
    );
\reg_frame_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_out(15),
      D => in_uart_frame(6),
      Q => out_frame(14),
      R => '0'
    );
\reg_frame_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_out(15),
      D => in_uart_frame(7),
      Q => out_frame(15),
      R => '0'
    );
\reg_frame_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_out(7),
      D => in_uart_frame(1),
      Q => out_frame(1),
      R => '0'
    );
\reg_frame_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_out(7),
      D => in_uart_frame(2),
      Q => out_frame(2),
      R => '0'
    );
\reg_frame_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_out(7),
      D => in_uart_frame(3),
      Q => out_frame(3),
      R => '0'
    );
\reg_frame_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_out(7),
      D => in_uart_frame(4),
      Q => out_frame(4),
      R => '0'
    );
\reg_frame_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_out(7),
      D => in_uart_frame(5),
      Q => out_frame(5),
      R => '0'
    );
\reg_frame_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_out(7),
      D => in_uart_frame(6),
      Q => out_frame(6),
      R => '0'
    );
\reg_frame_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_out(7),
      D => in_uart_frame(7),
      Q => out_frame(7),
      R => '0'
    );
\reg_frame_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_out(15),
      D => in_uart_frame(0),
      Q => out_frame(8),
      R => '0'
    );
\reg_frame_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_out(15),
      D => in_uart_frame(1),
      Q => out_frame(9),
      R => '0'
    );
reg_out_ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^out_ready\,
      I1 => in_uart_ready,
      I2 => uart_frame_counter,
      O => reg_out_ready_i_1_n_0
    );
reg_out_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => reg_out_ready_i_1_n_0,
      Q => \^out_ready\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart2sample_0_0 is
  port (
    in_clk : in STD_LOGIC;
    in_uart_ready : in STD_LOGIC;
    in_uart_frame : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out_frame : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_ready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_uart2sample_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_uart2sample_0_0 : entity is "design_1_uart2sample_0_0,uart2sample,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_uart2sample_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_uart2sample_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_uart2sample_0_0 : entity is "uart2sample,Vivado 2019.2";
end design_1_uart2sample_0_0;

architecture STRUCTURE of design_1_uart2sample_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of in_clk : signal is "xilinx.com:signal:clock:1.0 in_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of in_clk : signal is "XIL_INTERFACENAME in_clk, FREQ_HZ 73727015, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.design_1_uart2sample_0_0_uart2sample
     port map (
      in_clk => in_clk,
      in_uart_frame(7 downto 0) => in_uart_frame(7 downto 0),
      in_uart_ready => in_uart_ready,
      out_frame(15 downto 0) => out_frame(15 downto 0),
      out_ready => out_ready
    );
end STRUCTURE;
