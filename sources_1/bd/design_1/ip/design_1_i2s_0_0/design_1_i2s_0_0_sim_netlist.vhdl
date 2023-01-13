-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Jan 12 23:51:16 2023
-- Host        : Dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Foldery/Studia/MGR/SEM2/ZAMPF/projekt/TZ_BO_PRO/TZ_BO_PRO.srcs/sources_1/bd/design_1/ip/design_1_i2s_0_0/design_1_i2s_0_0_sim_netlist.vhdl
-- Design      : design_1_i2s_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_i2s_0_0_i2s is
  port (
    out_ready : out STD_LOGIC;
    UNCONN_OUT : out STD_LOGIC;
    out_PBDAT : out STD_LOGIC;
    UNCONN_OUT_0 : out STD_LOGIC;
    out_MUTE : out STD_LOGIC;
    out_MCLK : out STD_LOGIC;
    in_clk : in STD_LOGIC;
    in_en : in STD_LOGIC;
    sample : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_i2s_0_0_i2s : entity is "i2s";
end design_1_i2s_0_0_i2s;

architecture STRUCTURE of design_1_i2s_0_0_i2s is
  signal BCLK_counter : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \BCLK_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \BCLK_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \BCLK_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \BCLK_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \BCLK_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal BCLK_negedge_i_1_n_0 : STD_LOGIC;
  signal BCLK_negedge_reg_n_0 : STD_LOGIC;
  signal \FSM_sequential_quick_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_quick_state[1]_i_1_n_0\ : STD_LOGIC;
  signal MCLK_counter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \MCLK_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \MCLK_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \MCLK_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal PBLRC_counter : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \PBLRC_counter[10]_i_2_n_0\ : STD_LOGIC;
  signal PBLRC_counter_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^unconn_out\ : STD_LOGIC;
  signal \^unconn_out_0\ : STD_LOGIC;
  signal \^out_mclk\ : STD_LOGIC;
  signal \^out_mute\ : STD_LOGIC;
  signal \^out_pbdat\ : STD_LOGIC;
  signal \^out_ready\ : STD_LOGIC;
  signal \quick_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal quick_state_counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \quick_state_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \quick_state_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_out_BCLK__0_i_1_n_0\ : STD_LOGIC;
  signal \reg_out_BCLK__0_i_2_n_0\ : STD_LOGIC;
  signal reg_out_BCLK_i_1_n_0 : STD_LOGIC;
  signal reg_out_MCLK_i_1_n_0 : STD_LOGIC;
  signal reg_out_MUTE_i_1_n_0 : STD_LOGIC;
  signal reg_out_PBDAT_i_1_n_0 : STD_LOGIC;
  signal \reg_out_PBLRC__0_i_1_n_0\ : STD_LOGIC;
  signal \reg_out_PBLRC__0_i_2_n_0\ : STD_LOGIC;
  signal \reg_out_PBLRC__0_i_3_n_0\ : STD_LOGIC;
  signal reg_out_PBLRC_i_1_n_0 : STD_LOGIC;
  signal reg_out_ready_i_1_n_0 : STD_LOGIC;
  signal \reg_sample[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[23]\ : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal state_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BCLK_counter[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \BCLK_counter[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \BCLK_counter[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \BCLK_counter[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \BCLK_counter[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_quick_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_quick_state[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_quick_state_reg[0]\ : label is "q_STOP_ASKING_FOR_SAMPLE:01,q_LOAD_SAMPLE:10,q_WAIT_FOR_BCLK:11,q_ASK_FOR_SAMPLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_quick_state_reg[1]\ : label is "q_STOP_ASKING_FOR_SAMPLE:01,q_LOAD_SAMPLE:10,q_WAIT_FOR_BCLK:11,q_ASK_FOR_SAMPLE:00";
  attribute SOFT_HLUTNM of \MCLK_counter[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \MCLK_counter[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \PBLRC_counter[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \PBLRC_counter[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \PBLRC_counter[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \PBLRC_counter[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \PBLRC_counter[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \PBLRC_counter[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \PBLRC_counter[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \PBLRC_counter[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \quick_state_counter[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \quick_state_counter[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg_out_BCLK__0_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg_out_PBLRC__0_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg_out_PBLRC__0_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of reg_out_ready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of state_i_1 : label is "soft_lutpair2";
begin
  UNCONN_OUT <= \^unconn_out\;
  UNCONN_OUT_0 <= \^unconn_out_0\;
  out_MCLK <= \^out_mclk\;
  out_MUTE <= \^out_mute\;
  out_PBDAT <= \^out_pbdat\;
  out_ready <= \^out_ready\;
\BCLK_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BCLK_counter(0),
      O => \BCLK_counter[0]_i_1_n_0\
    );
\BCLK_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => BCLK_counter(1),
      I1 => BCLK_counter(0),
      O => \BCLK_counter[1]_i_1_n_0\
    );
\BCLK_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => BCLK_counter(2),
      I1 => BCLK_counter(1),
      I2 => BCLK_counter(0),
      O => \BCLK_counter[2]_i_1_n_0\
    );
\BCLK_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFF4000"
    )
        port map (
      I0 => BCLK_counter(4),
      I1 => BCLK_counter(0),
      I2 => BCLK_counter(1),
      I3 => BCLK_counter(2),
      I4 => BCLK_counter(3),
      O => \BCLK_counter[3]_i_1_n_0\
    );
\BCLK_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F7F8000"
    )
        port map (
      I0 => BCLK_counter(0),
      I1 => BCLK_counter(1),
      I2 => BCLK_counter(2),
      I3 => BCLK_counter(3),
      I4 => BCLK_counter(4),
      O => \BCLK_counter[4]_i_1_n_0\
    );
\BCLK_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => state_reg_n_0,
      D => \BCLK_counter[0]_i_1_n_0\,
      Q => BCLK_counter(0),
      R => '0'
    );
\BCLK_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => state_reg_n_0,
      D => \BCLK_counter[1]_i_1_n_0\,
      Q => BCLK_counter(1),
      R => '0'
    );
\BCLK_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => state_reg_n_0,
      D => \BCLK_counter[2]_i_1_n_0\,
      Q => BCLK_counter(2),
      R => '0'
    );
\BCLK_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => state_reg_n_0,
      D => \BCLK_counter[3]_i_1_n_0\,
      Q => BCLK_counter(3),
      R => '0'
    );
\BCLK_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => state_reg_n_0,
      D => \BCLK_counter[4]_i_1_n_0\,
      Q => BCLK_counter(4),
      R => '0'
    );
BCLK_negedge_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003020AAAAAAAA"
    )
        port map (
      I0 => BCLK_negedge_reg_n_0,
      I1 => \reg_out_BCLK__0_i_2_n_0\,
      I2 => BCLK_counter(4),
      I3 => \^unconn_out\,
      I4 => BCLK_counter(3),
      I5 => state_reg_n_0,
      O => BCLK_negedge_i_1_n_0
    );
BCLK_negedge_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => BCLK_negedge_i_1_n_0,
      Q => BCLK_negedge_reg_n_0,
      R => '0'
    );
\FSM_sequential_quick_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F7FF000"
    )
        port map (
      I0 => quick_state_counter(1),
      I1 => quick_state_counter(0),
      I2 => state_reg_n_0,
      I3 => \quick_state__0\(1),
      I4 => \quick_state__0\(0),
      O => \FSM_sequential_quick_state[0]_i_1_n_0\
    );
\FSM_sequential_quick_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F80FF00"
    )
        port map (
      I0 => quick_state_counter(1),
      I1 => quick_state_counter(0),
      I2 => state_reg_n_0,
      I3 => \quick_state__0\(1),
      I4 => \quick_state__0\(0),
      O => \FSM_sequential_quick_state[1]_i_1_n_0\
    );
\FSM_sequential_quick_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => \FSM_sequential_quick_state[0]_i_1_n_0\,
      Q => \quick_state__0\(0),
      R => '0'
    );
\FSM_sequential_quick_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => \FSM_sequential_quick_state[1]_i_1_n_0\,
      Q => \quick_state__0\(1),
      R => '0'
    );
\MCLK_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => MCLK_counter(1),
      I1 => MCLK_counter(2),
      I2 => MCLK_counter(0),
      O => \MCLK_counter[0]_i_1_n_0\
    );
\MCLK_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => MCLK_counter(2),
      I1 => MCLK_counter(1),
      I2 => MCLK_counter(0),
      O => \MCLK_counter[1]_i_1_n_0\
    );
\MCLK_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => MCLK_counter(2),
      I1 => MCLK_counter(1),
      I2 => MCLK_counter(0),
      O => \MCLK_counter[2]_i_1_n_0\
    );
\MCLK_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => state_reg_n_0,
      D => \MCLK_counter[0]_i_1_n_0\,
      Q => MCLK_counter(0),
      R => '0'
    );
\MCLK_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => state_reg_n_0,
      D => \MCLK_counter[1]_i_1_n_0\,
      Q => MCLK_counter(1),
      R => '0'
    );
\MCLK_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => state_reg_n_0,
      D => \MCLK_counter[2]_i_1_n_0\,
      Q => MCLK_counter(2),
      R => '0'
    );
\PBLRC_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PBLRC_counter(0),
      O => PBLRC_counter_0(0)
    );
\PBLRC_counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA4AAAAAAA"
    )
        port map (
      I0 => PBLRC_counter(10),
      I1 => PBLRC_counter(9),
      I2 => \reg_out_PBLRC__0_i_2_n_0\,
      I3 => PBLRC_counter(7),
      I4 => PBLRC_counter(8),
      I5 => \PBLRC_counter[10]_i_2_n_0\,
      O => PBLRC_counter_0(10)
    );
\PBLRC_counter[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => PBLRC_counter(5),
      I1 => PBLRC_counter(6),
      O => \PBLRC_counter[10]_i_2_n_0\
    );
\PBLRC_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PBLRC_counter(0),
      I1 => PBLRC_counter(1),
      O => PBLRC_counter_0(1)
    );
\PBLRC_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => PBLRC_counter(0),
      I1 => PBLRC_counter(1),
      I2 => PBLRC_counter(2),
      O => PBLRC_counter_0(2)
    );
\PBLRC_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => PBLRC_counter(3),
      I1 => PBLRC_counter(0),
      I2 => PBLRC_counter(1),
      I3 => PBLRC_counter(2),
      O => PBLRC_counter_0(3)
    );
\PBLRC_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => PBLRC_counter(4),
      I1 => PBLRC_counter(2),
      I2 => PBLRC_counter(3),
      I3 => PBLRC_counter(0),
      I4 => PBLRC_counter(1),
      O => PBLRC_counter_0(4)
    );
\PBLRC_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => PBLRC_counter(5),
      I1 => PBLRC_counter(1),
      I2 => PBLRC_counter(0),
      I3 => PBLRC_counter(3),
      I4 => PBLRC_counter(2),
      I5 => PBLRC_counter(4),
      O => PBLRC_counter_0(5)
    );
\PBLRC_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => PBLRC_counter(6),
      I1 => \reg_out_PBLRC__0_i_2_n_0\,
      I2 => PBLRC_counter(5),
      O => PBLRC_counter_0(6)
    );
\PBLRC_counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => PBLRC_counter(7),
      I1 => PBLRC_counter(5),
      I2 => PBLRC_counter(6),
      I3 => \reg_out_PBLRC__0_i_2_n_0\,
      O => PBLRC_counter_0(7)
    );
\PBLRC_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => PBLRC_counter(8),
      I1 => \reg_out_PBLRC__0_i_2_n_0\,
      I2 => PBLRC_counter(6),
      I3 => PBLRC_counter(5),
      I4 => PBLRC_counter(7),
      O => PBLRC_counter_0(8)
    );
\PBLRC_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFFFFFF10000000"
    )
        port map (
      I0 => PBLRC_counter(10),
      I1 => \PBLRC_counter[10]_i_2_n_0\,
      I2 => PBLRC_counter(8),
      I3 => PBLRC_counter(7),
      I4 => \reg_out_PBLRC__0_i_2_n_0\,
      I5 => PBLRC_counter(9),
      O => PBLRC_counter_0(9)
    );
\PBLRC_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => state_reg_n_0,
      D => PBLRC_counter_0(0),
      Q => PBLRC_counter(0),
      R => '0'
    );
\PBLRC_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => state_reg_n_0,
      D => PBLRC_counter_0(10),
      Q => PBLRC_counter(10),
      R => '0'
    );
\PBLRC_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => state_reg_n_0,
      D => PBLRC_counter_0(1),
      Q => PBLRC_counter(1),
      R => '0'
    );
\PBLRC_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => state_reg_n_0,
      D => PBLRC_counter_0(2),
      Q => PBLRC_counter(2),
      R => '0'
    );
\PBLRC_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => state_reg_n_0,
      D => PBLRC_counter_0(3),
      Q => PBLRC_counter(3),
      R => '0'
    );
\PBLRC_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => state_reg_n_0,
      D => PBLRC_counter_0(4),
      Q => PBLRC_counter(4),
      R => '0'
    );
\PBLRC_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => state_reg_n_0,
      D => PBLRC_counter_0(5),
      Q => PBLRC_counter(5),
      R => '0'
    );
\PBLRC_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => state_reg_n_0,
      D => PBLRC_counter_0(6),
      Q => PBLRC_counter(6),
      R => '0'
    );
\PBLRC_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => state_reg_n_0,
      D => PBLRC_counter_0(7),
      Q => PBLRC_counter(7),
      R => '0'
    );
\PBLRC_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => state_reg_n_0,
      D => PBLRC_counter_0(8),
      Q => PBLRC_counter(8),
      R => '0'
    );
\PBLRC_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => state_reg_n_0,
      D => PBLRC_counter_0(9),
      Q => PBLRC_counter(9),
      R => '0'
    );
\quick_state_counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => \quick_state__0\(0),
      I2 => \quick_state__0\(1),
      I3 => quick_state_counter(0),
      O => \quick_state_counter[0]_i_1_n_0\
    );
\quick_state_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => quick_state_counter(0),
      I1 => \quick_state__0\(1),
      I2 => \quick_state__0\(0),
      I3 => state_reg_n_0,
      I4 => quick_state_counter(1),
      O => \quick_state_counter[1]_i_1_n_0\
    );
\quick_state_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => \quick_state_counter[0]_i_1_n_0\,
      Q => quick_state_counter(0),
      R => '0'
    );
\quick_state_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => \quick_state_counter[1]_i_1_n_0\,
      Q => quick_state_counter(1),
      R => '0'
    );
\reg_out_BCLK__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF0200"
    )
        port map (
      I0 => BCLK_counter(4),
      I1 => \reg_out_BCLK__0_i_2_n_0\,
      I2 => BCLK_counter(3),
      I3 => state_reg_n_0,
      I4 => \^unconn_out\,
      O => \reg_out_BCLK__0_i_1_n_0\
    );
\reg_out_BCLK__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => BCLK_counter(0),
      I1 => BCLK_counter(1),
      I2 => BCLK_counter(2),
      O => \reg_out_BCLK__0_i_2_n_0\
    );
reg_out_BCLK_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => in_en,
      I1 => state_reg_n_0,
      I2 => \^unconn_out\,
      O => reg_out_BCLK_i_1_n_0
    );
reg_out_BCLK_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => reg_out_BCLK_i_1_n_0,
      Q => \^unconn_out\,
      R => '0'
    );
\reg_out_BCLK_reg__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => \reg_out_BCLK__0_i_1_n_0\,
      Q => \^unconn_out\,
      R => '0'
    );
reg_out_MCLK_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0400"
    )
        port map (
      I0 => MCLK_counter(0),
      I1 => MCLK_counter(1),
      I2 => MCLK_counter(2),
      I3 => state_reg_n_0,
      I4 => \^out_mclk\,
      O => reg_out_MCLK_i_1_n_0
    );
reg_out_MCLK_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => reg_out_MCLK_i_1_n_0,
      Q => \^out_mclk\,
      R => '0'
    );
reg_out_MUTE_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in_en,
      I1 => state_reg_n_0,
      I2 => \^out_mute\,
      O => reg_out_MUTE_i_1_n_0
    );
reg_out_MUTE_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => reg_out_MUTE_i_1_n_0,
      Q => \^out_mute\,
      R => '0'
    );
reg_out_PBDAT_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB08080"
    )
        port map (
      I0 => \reg_sample_reg_n_0_[23]\,
      I1 => BCLK_negedge_reg_n_0,
      I2 => state_reg_n_0,
      I3 => in_en,
      I4 => \^out_pbdat\,
      O => reg_out_PBDAT_i_1_n_0
    );
reg_out_PBDAT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => reg_out_PBDAT_i_1_n_0,
      Q => \^out_pbdat\,
      R => '0'
    );
\reg_out_PBLRC__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00002000"
    )
        port map (
      I0 => PBLRC_counter(10),
      I1 => PBLRC_counter(9),
      I2 => state_reg_n_0,
      I3 => \reg_out_PBLRC__0_i_2_n_0\,
      I4 => \reg_out_PBLRC__0_i_3_n_0\,
      I5 => \^unconn_out_0\,
      O => \reg_out_PBLRC__0_i_1_n_0\
    );
\reg_out_PBLRC__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => PBLRC_counter(4),
      I1 => PBLRC_counter(2),
      I2 => PBLRC_counter(3),
      I3 => PBLRC_counter(0),
      I4 => PBLRC_counter(1),
      O => \reg_out_PBLRC__0_i_2_n_0\
    );
\reg_out_PBLRC__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => PBLRC_counter(6),
      I1 => PBLRC_counter(5),
      I2 => PBLRC_counter(8),
      I3 => PBLRC_counter(7),
      O => \reg_out_PBLRC__0_i_3_n_0\
    );
reg_out_PBLRC_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => in_en,
      I1 => state_reg_n_0,
      I2 => \^unconn_out_0\,
      O => reg_out_PBLRC_i_1_n_0
    );
reg_out_PBLRC_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => reg_out_PBLRC_i_1_n_0,
      Q => \^unconn_out_0\,
      R => '0'
    );
\reg_out_PBLRC_reg__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => \reg_out_PBLRC__0_i_1_n_0\,
      Q => \^unconn_out_0\,
      R => '0'
    );
reg_out_ready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A008AFF"
    )
        port map (
      I0 => \^out_ready\,
      I1 => \quick_state__0\(1),
      I2 => \quick_state__0\(0),
      I3 => state_reg_n_0,
      I4 => in_en,
      O => reg_out_ready_i_1_n_0
    );
reg_out_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => reg_out_ready_i_1_n_0,
      Q => \^out_ready\,
      R => '0'
    );
\reg_sample[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAAFBFF08AA0800"
    )
        port map (
      I0 => sample(0),
      I1 => \quick_state__0\(1),
      I2 => \quick_state__0\(0),
      I3 => state_reg_n_0,
      I4 => in_en,
      I5 => \reg_sample_reg_n_0_[23]\,
      O => \reg_sample[23]_i_1_n_0\
    );
\reg_sample_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => \reg_sample[23]_i_1_n_0\,
      Q => \reg_sample_reg_n_0_[23]\,
      R => '0'
    );
state_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => in_en,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => state_i_1_n_0,
      Q => state_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_i2s_0_0 is
  port (
    in_clk : in STD_LOGIC;
    sample : in STD_LOGIC_VECTOR ( 23 downto 0 );
    in_en : in STD_LOGIC;
    out_ready : out STD_LOGIC;
    out_BLCK : out STD_LOGIC;
    out_PBDAT : out STD_LOGIC;
    out_PBLRC : out STD_LOGIC;
    out_RECDAT : out STD_LOGIC;
    out_RELCRC : out STD_LOGIC;
    out_MUTE : out STD_LOGIC;
    out_MCLK : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_i2s_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_i2s_0_0 : entity is "design_1_i2s_0_0,i2s,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_i2s_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_i2s_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_i2s_0_0 : entity is "i2s,Vivado 2019.2";
end design_1_i2s_0_0;

architecture STRUCTURE of design_1_i2s_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of in_clk : signal is "xilinx.com:signal:clock:1.0 in_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of in_clk : signal is "XIL_INTERFACENAME in_clk, FREQ_HZ 73727015, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
  out_RECDAT <= \<const0>\;
  out_RELCRC <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_i2s_0_0_i2s
     port map (
      UNCONN_OUT => out_BLCK,
      UNCONN_OUT_0 => out_PBLRC,
      in_clk => in_clk,
      in_en => in_en,
      out_MCLK => out_MCLK,
      out_MUTE => out_MUTE,
      out_PBDAT => out_PBDAT,
      out_ready => out_ready,
      sample(0) => sample(23)
    );
end STRUCTURE;
