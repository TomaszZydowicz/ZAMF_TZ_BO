-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri Jan 20 18:13:16 2023
-- Host        : Dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Foldery/Studia/MGR/SEM2/ZAMPF/projekt/TZ_BO_PRO/TZ_BO_PRO.srcs/sources_1/bd/design_1/ip/design_1_sample_switch_0_0/design_1_sample_switch_0_0_sim_netlist.vhdl
-- Design      : design_1_sample_switch_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sample_switch_0_0_sample_switch is
  port (
    out_uart_sample : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_i2s441kH_sample : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_en : out STD_LOGIC;
    sample2uart_en : out STD_LOGIC;
    i2s441kH_en : out STD_LOGIC;
    in_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_fifo_prog_empty : in STD_LOGIC;
    in_clk : in STD_LOGIC;
    in_sample : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_fifo_empty : in STD_LOGIC;
    in_sample2uart_ready : in STD_LOGIC;
    in_i2s_ready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_sample_switch_0_0_sample_switch : entity is "sample_switch";
end design_1_sample_switch_0_0_sample_switch;

architecture STRUCTURE of design_1_sample_switch_0_0_sample_switch is
  signal \^fifo_en\ : STD_LOGIC;
  signal \^i2s441kh_en\ : STD_LOGIC;
  signal mode : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \mode[0]_i_1_n_0\ : STD_LOGIC;
  signal \mode[1]_i_1_n_0\ : STD_LOGIC;
  signal reg_fifo_en_i_1_n_0 : STD_LOGIC;
  signal reg_fifo_en_i_3_n_0 : STD_LOGIC;
  signal reg_fifo_en_i_5_n_0 : STD_LOGIC;
  signal reg_fifo_en_i_6_n_0 : STD_LOGIC;
  signal reg_fifo_en_i_7_n_0 : STD_LOGIC;
  signal reg_fifo_en_i_8_n_0 : STD_LOGIC;
  signal reg_fifo_en_reg_i_2_n_0 : STD_LOGIC;
  signal reg_fifo_en_reg_i_4_n_0 : STD_LOGIC;
  signal reg_i2s441kH_en : STD_LOGIC;
  signal reg_i2s441kH_en_i_1_n_0 : STD_LOGIC;
  signal reg_i2s441kH_en_i_3_n_0 : STD_LOGIC;
  signal reg_out_i2s441kH_sample : STD_LOGIC;
  signal \reg_out_uart_sample[15]_i_1_n_0\ : STD_LOGIC;
  signal reg_sample2uart_en_i_1_n_0 : STD_LOGIC;
  signal reg_sample2uart_en_i_2_n_0 : STD_LOGIC;
  signal \^sample2uart_en\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_3_n_0\ : STD_LOGIC;
  signal \state[3]_i_4_n_0\ : STD_LOGIC;
  signal \state[3]_i_5_n_0\ : STD_LOGIC;
  signal \state[3]_i_6_n_0\ : STD_LOGIC;
  signal \state[3]_i_7_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mode[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \mode[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of reg_fifo_en_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \state[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \state[3]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[3]_i_7\ : label is "soft_lutpair2";
begin
  fifo_en <= \^fifo_en\;
  i2s441kH_en <= \^i2s441kh_en\;
  sample2uart_en <= \^sample2uart_en\;
\mode[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0B0B0B0"
    )
        port map (
      I0 => mode(0),
      I1 => mode(1),
      I2 => in_mode(0),
      I3 => in_mode(1),
      I4 => in_fifo_prog_empty,
      O => \mode[0]_i_1_n_0\
    );
\mode[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF44FF44"
    )
        port map (
      I0 => mode(0),
      I1 => mode(1),
      I2 => in_mode(0),
      I3 => in_mode(1),
      I4 => in_fifo_prog_empty,
      O => \mode[1]_i_1_n_0\
    );
\mode_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => \mode[0]_i_1_n_0\,
      Q => mode(0),
      R => '0'
    );
\mode_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => \mode[1]_i_1_n_0\,
      Q => mode(1),
      R => '0'
    );
reg_fifo_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB00FFFFA8000000"
    )
        port map (
      I0 => reg_fifo_en_reg_i_2_n_0,
      I1 => mode(1),
      I2 => reg_fifo_en_i_3_n_0,
      I3 => mode(0),
      I4 => reg_fifo_en_reg_i_4_n_0,
      I5 => \^fifo_en\,
      O => reg_fifo_en_i_1_n_0
    );
reg_fifo_en_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => reg_fifo_en_i_3_n_0
    );
reg_fifo_en_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => in_fifo_empty,
      I1 => in_sample2uart_ready,
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      I5 => state(3),
      O => reg_fifo_en_i_5_n_0
    );
reg_fifo_en_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000404000000400"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(1),
      I3 => in_i2s_ready,
      I4 => in_fifo_empty,
      I5 => state(0),
      O => reg_fifo_en_i_6_n_0
    );
reg_fifo_en_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => mode(0),
      I1 => state(3),
      I2 => state(2),
      O => reg_fifo_en_i_7_n_0
    );
reg_fifo_en_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0022020000A20200"
    )
        port map (
      I0 => mode(0),
      I1 => state(1),
      I2 => state(0),
      I3 => state(3),
      I4 => state(2),
      I5 => in_fifo_empty,
      O => reg_fifo_en_i_8_n_0
    );
reg_fifo_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => reg_fifo_en_i_1_n_0,
      Q => \^fifo_en\,
      R => '0'
    );
reg_fifo_en_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_fifo_en_i_5_n_0,
      I1 => reg_fifo_en_i_6_n_0,
      O => reg_fifo_en_reg_i_2_n_0,
      S => mode(1)
    );
reg_fifo_en_reg_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_fifo_en_i_7_n_0,
      I1 => reg_fifo_en_i_8_n_0,
      O => reg_fifo_en_reg_i_4_n_0,
      S => mode(1)
    );
reg_i2s441kH_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFA800A"
    )
        port map (
      I0 => reg_i2s441kH_en,
      I1 => reg_i2s441kH_en_i_3_n_0,
      I2 => mode(0),
      I3 => mode(1),
      I4 => \^i2s441kh_en\,
      O => reg_i2s441kH_en_i_1_n_0
    );
reg_i2s441kH_en_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(1),
      I3 => mode(1),
      I4 => mode(0),
      I5 => state(2),
      O => reg_i2s441kH_en
    );
reg_i2s441kH_en_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101010001010"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(2),
      I3 => in_fifo_empty,
      I4 => in_i2s_ready,
      I5 => state(1),
      O => reg_i2s441kH_en_i_3_n_0
    );
reg_i2s441kH_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => reg_i2s441kH_en_i_1_n_0,
      Q => \^i2s441kh_en\,
      R => '0'
    );
\reg_out_i2s441kH_sample[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008020000000"
    )
        port map (
      I0 => mode(1),
      I1 => state(3),
      I2 => mode(0),
      I3 => state(2),
      I4 => state(1),
      I5 => state(0),
      O => reg_out_i2s441kH_sample
    );
\reg_out_i2s441kH_sample_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => reg_out_i2s441kH_sample,
      D => in_sample(0),
      Q => out_i2s441kH_sample(0),
      R => '0'
    );
\reg_out_i2s441kH_sample_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => reg_out_i2s441kH_sample,
      D => in_sample(10),
      Q => out_i2s441kH_sample(10),
      R => '0'
    );
\reg_out_i2s441kH_sample_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => reg_out_i2s441kH_sample,
      D => in_sample(11),
      Q => out_i2s441kH_sample(11),
      R => '0'
    );
\reg_out_i2s441kH_sample_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => reg_out_i2s441kH_sample,
      D => in_sample(12),
      Q => out_i2s441kH_sample(12),
      R => '0'
    );
\reg_out_i2s441kH_sample_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => reg_out_i2s441kH_sample,
      D => in_sample(13),
      Q => out_i2s441kH_sample(13),
      R => '0'
    );
\reg_out_i2s441kH_sample_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => reg_out_i2s441kH_sample,
      D => in_sample(14),
      Q => out_i2s441kH_sample(14),
      R => '0'
    );
\reg_out_i2s441kH_sample_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => reg_out_i2s441kH_sample,
      D => in_sample(15),
      Q => out_i2s441kH_sample(15),
      R => '0'
    );
\reg_out_i2s441kH_sample_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => reg_out_i2s441kH_sample,
      D => in_sample(1),
      Q => out_i2s441kH_sample(1),
      R => '0'
    );
\reg_out_i2s441kH_sample_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => reg_out_i2s441kH_sample,
      D => in_sample(2),
      Q => out_i2s441kH_sample(2),
      R => '0'
    );
\reg_out_i2s441kH_sample_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => reg_out_i2s441kH_sample,
      D => in_sample(3),
      Q => out_i2s441kH_sample(3),
      R => '0'
    );
\reg_out_i2s441kH_sample_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => reg_out_i2s441kH_sample,
      D => in_sample(4),
      Q => out_i2s441kH_sample(4),
      R => '0'
    );
\reg_out_i2s441kH_sample_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => reg_out_i2s441kH_sample,
      D => in_sample(5),
      Q => out_i2s441kH_sample(5),
      R => '0'
    );
\reg_out_i2s441kH_sample_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => reg_out_i2s441kH_sample,
      D => in_sample(6),
      Q => out_i2s441kH_sample(6),
      R => '0'
    );
\reg_out_i2s441kH_sample_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => reg_out_i2s441kH_sample,
      D => in_sample(7),
      Q => out_i2s441kH_sample(7),
      R => '0'
    );
\reg_out_i2s441kH_sample_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => reg_out_i2s441kH_sample,
      D => in_sample(8),
      Q => out_i2s441kH_sample(8),
      R => '0'
    );
\reg_out_i2s441kH_sample_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => reg_out_i2s441kH_sample,
      D => in_sample(9),
      Q => out_i2s441kH_sample(9),
      R => '0'
    );
\reg_out_uart_sample[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => mode(1),
      I1 => mode(0),
      I2 => state(1),
      I3 => state(0),
      I4 => state(2),
      I5 => state(3),
      O => \reg_out_uart_sample[15]_i_1_n_0\
    );
\reg_out_uart_sample_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_out_uart_sample[15]_i_1_n_0\,
      D => in_sample(0),
      Q => out_uart_sample(0),
      R => '0'
    );
\reg_out_uart_sample_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_out_uart_sample[15]_i_1_n_0\,
      D => in_sample(10),
      Q => out_uart_sample(10),
      R => '0'
    );
\reg_out_uart_sample_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_out_uart_sample[15]_i_1_n_0\,
      D => in_sample(11),
      Q => out_uart_sample(11),
      R => '0'
    );
\reg_out_uart_sample_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_out_uart_sample[15]_i_1_n_0\,
      D => in_sample(12),
      Q => out_uart_sample(12),
      R => '0'
    );
\reg_out_uart_sample_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_out_uart_sample[15]_i_1_n_0\,
      D => in_sample(13),
      Q => out_uart_sample(13),
      R => '0'
    );
\reg_out_uart_sample_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_out_uart_sample[15]_i_1_n_0\,
      D => in_sample(14),
      Q => out_uart_sample(14),
      R => '0'
    );
\reg_out_uart_sample_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_out_uart_sample[15]_i_1_n_0\,
      D => in_sample(15),
      Q => out_uart_sample(15),
      R => '0'
    );
\reg_out_uart_sample_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_out_uart_sample[15]_i_1_n_0\,
      D => in_sample(1),
      Q => out_uart_sample(1),
      R => '0'
    );
\reg_out_uart_sample_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_out_uart_sample[15]_i_1_n_0\,
      D => in_sample(2),
      Q => out_uart_sample(2),
      R => '0'
    );
\reg_out_uart_sample_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_out_uart_sample[15]_i_1_n_0\,
      D => in_sample(3),
      Q => out_uart_sample(3),
      R => '0'
    );
\reg_out_uart_sample_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_out_uart_sample[15]_i_1_n_0\,
      D => in_sample(4),
      Q => out_uart_sample(4),
      R => '0'
    );
\reg_out_uart_sample_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_out_uart_sample[15]_i_1_n_0\,
      D => in_sample(5),
      Q => out_uart_sample(5),
      R => '0'
    );
\reg_out_uart_sample_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_out_uart_sample[15]_i_1_n_0\,
      D => in_sample(6),
      Q => out_uart_sample(6),
      R => '0'
    );
\reg_out_uart_sample_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_out_uart_sample[15]_i_1_n_0\,
      D => in_sample(7),
      Q => out_uart_sample(7),
      R => '0'
    );
\reg_out_uart_sample_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_out_uart_sample[15]_i_1_n_0\,
      D => in_sample(8),
      Q => out_uart_sample(8),
      R => '0'
    );
\reg_out_uart_sample_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_out_uart_sample[15]_i_1_n_0\,
      D => in_sample(9),
      Q => out_uart_sample(9),
      R => '0'
    );
reg_sample2uart_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => \reg_out_uart_sample[15]_i_1_n_0\,
      I1 => mode(1),
      I2 => reg_sample2uart_en_i_2_n_0,
      I3 => mode(0),
      I4 => \^sample2uart_en\,
      O => reg_sample2uart_en_i_1_n_0
    );
reg_sample2uart_en_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000EF00"
    )
        port map (
      I0 => state(1),
      I1 => in_fifo_empty,
      I2 => in_sample2uart_ready,
      I3 => state(0),
      I4 => state(2),
      I5 => state(3),
      O => reg_sample2uart_en_i_2_n_0
    );
reg_sample2uart_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => reg_sample2uart_en_i_1_n_0,
      Q => \^sample2uart_en\,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BB8888"
    )
        port map (
      I0 => \state[0]_i_2_n_0\,
      I1 => mode(1),
      I2 => state(1),
      I3 => mode(0),
      I4 => in_mode(0),
      I5 => in_mode(1),
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5551555155510000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => in_i2s_ready,
      I3 => state(2),
      I4 => in_mode(0),
      I5 => in_mode(1),
      O => \state[0]_i_2_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8088808880888080"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => mode(0),
      I2 => mode(1),
      I3 => \state[1]_i_3_n_0\,
      I4 => in_mode(1),
      I5 => in_mode(0),
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EEEEE00FFFFFFFF"
    )
        port map (
      I0 => in_mode(0),
      I1 => in_mode(1),
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      I5 => mode(1),
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \state[1]_i_3_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DCC05000"
    )
        port map (
      I0 => mode(0),
      I1 => \state[2]_i_2_n_0\,
      I2 => in_mode(1),
      I3 => in_mode(0),
      I4 => mode(1),
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8380CCCC"
    )
        port map (
      I0 => in_fifo_empty,
      I1 => state(2),
      I2 => state(0),
      I3 => in_i2s_ready,
      I4 => state(1),
      O => \state[2]_i_2_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8FFFFFFB80000"
    )
        port map (
      I0 => \state[3]_i_3_n_0\,
      I1 => mode(1),
      I2 => \state[3]_i_4_n_0\,
      I3 => \state[3]_i_5_n_0\,
      I4 => mode(0),
      I5 => \state[3]_i_6_n_0\,
      O => \state[3]_i_1_n_0\
    );
\state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220222000002220"
    )
        port map (
      I0 => mode(1),
      I1 => \state[3]_i_7_n_0\,
      I2 => in_mode(1),
      I3 => in_mode(0),
      I4 => state(2),
      I5 => state(1),
      O => \state[3]_i_2_n_0\
    );
\state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54555454AAAAAAAA"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(0),
      I3 => in_fifo_empty,
      I4 => in_i2s_ready,
      I5 => state(2),
      O => \state[3]_i_3_n_0\
    );
\state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF40"
    )
        port map (
      I0 => in_fifo_empty,
      I1 => in_sample2uart_ready,
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      I5 => state(3),
      O => \state[3]_i_4_n_0\
    );
\state[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in_mode(0),
      I1 => in_mode(1),
      O => \state[3]_i_5_n_0\
    );
\state[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => in_fifo_prog_empty,
      I1 => in_mode(1),
      I2 => in_mode(0),
      I3 => mode(1),
      O => \state[3]_i_6_n_0\
    );
\state[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83808080"
    )
        port map (
      I0 => in_fifo_empty,
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      I4 => in_i2s_ready,
      O => \state[3]_i_7_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \state[3]_i_1_n_0\,
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \state[3]_i_1_n_0\,
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \state[3]_i_1_n_0\,
      D => \state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
\state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \state[3]_i_1_n_0\,
      D => \state[3]_i_2_n_0\,
      Q => state(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sample_switch_0_0 is
  port (
    in_clk : in STD_LOGIC;
    in_sample : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_sample2uart_ready : in STD_LOGIC;
    in_i2s_ready : in STD_LOGIC;
    in_fifo_empty : in STD_LOGIC;
    in_fifo_prog_empty : in STD_LOGIC;
    out_uart_sample : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_i2s441kH_sample : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_i2s2H_sample : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_en : out STD_LOGIC;
    sample2uart_en : out STD_LOGIC;
    i2s2H_en : out STD_LOGIC;
    i2s441kH_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_sample_switch_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_sample_switch_0_0 : entity is "design_1_sample_switch_0_0,sample_switch,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_sample_switch_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_sample_switch_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_sample_switch_0_0 : entity is "sample_switch,Vivado 2019.2";
end design_1_sample_switch_0_0;

architecture STRUCTURE of design_1_sample_switch_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of in_clk : signal is "xilinx.com:signal:clock:1.0 in_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of in_clk : signal is "XIL_INTERFACENAME in_clk, FREQ_HZ 73727015, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
  i2s2H_en <= \<const0>\;
  out_i2s2H_sample(15) <= \<const0>\;
  out_i2s2H_sample(14) <= \<const0>\;
  out_i2s2H_sample(13) <= \<const0>\;
  out_i2s2H_sample(12) <= \<const0>\;
  out_i2s2H_sample(11) <= \<const0>\;
  out_i2s2H_sample(10) <= \<const0>\;
  out_i2s2H_sample(9) <= \<const0>\;
  out_i2s2H_sample(8) <= \<const0>\;
  out_i2s2H_sample(7) <= \<const0>\;
  out_i2s2H_sample(6) <= \<const0>\;
  out_i2s2H_sample(5) <= \<const0>\;
  out_i2s2H_sample(4) <= \<const0>\;
  out_i2s2H_sample(3) <= \<const0>\;
  out_i2s2H_sample(2) <= \<const0>\;
  out_i2s2H_sample(1) <= \<const0>\;
  out_i2s2H_sample(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_sample_switch_0_0_sample_switch
     port map (
      fifo_en => fifo_en,
      i2s441kH_en => i2s441kH_en,
      in_clk => in_clk,
      in_fifo_empty => in_fifo_empty,
      in_fifo_prog_empty => in_fifo_prog_empty,
      in_i2s_ready => in_i2s_ready,
      in_mode(1 downto 0) => in_mode(1 downto 0),
      in_sample(15 downto 0) => in_sample(15 downto 0),
      in_sample2uart_ready => in_sample2uart_ready,
      out_i2s441kH_sample(15 downto 0) => out_i2s441kH_sample(15 downto 0),
      out_uart_sample(15 downto 0) => out_uart_sample(15 downto 0),
      sample2uart_en => sample2uart_en
    );
end STRUCTURE;
