-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed Jan 18 12:55:52 2023
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
    out_BLCK : out STD_LOGIC;
    out_PBDAT : out STD_LOGIC;
    out_PBLRC : out STD_LOGIC;
    out_MUTE : out STD_LOGIC;
    out_MCLK : out STD_LOGIC;
    in_clk : in STD_LOGIC;
    sample : in STD_LOGIC_VECTOR ( 23 downto 0 );
    in_en : in STD_LOGIC
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
  signal \FSM_sequential_quick_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_quick_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_quick_state[1]_i_4_n_0\ : STD_LOGIC;
  signal MCLK_counter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \MCLK_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \MCLK_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \MCLK_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal PBLRC_counter : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \PBLRC_counter[10]_i_2_n_0\ : STD_LOGIC;
  signal \PBLRC_counter[10]_i_3_n_0\ : STD_LOGIC;
  signal \PBLRC_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \PBLRC_counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \PBLRC_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal PBLRC_counter_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal bit_counter0 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal \bit_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[23]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[23]_i_2_n_0\ : STD_LOGIC;
  signal \bit_counter[23]_i_4_n_0\ : STD_LOGIC;
  signal \bit_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \bit_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \bit_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \bit_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \bit_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \bit_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \bit_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \bit_counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \bit_counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \bit_counter_reg[23]_i_3_n_2\ : STD_LOGIC;
  signal \bit_counter_reg[23]_i_3_n_3\ : STD_LOGIC;
  signal \bit_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \bit_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \bit_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \bit_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \bit_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \bit_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[18]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[19]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[20]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[21]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[22]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[23]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal canal_counter_i_1_n_0 : STD_LOGIC;
  signal canal_counter_i_2_n_0 : STD_LOGIC;
  signal canal_counter_i_3_n_0 : STD_LOGIC;
  signal canal_counter_reg_n_0 : STD_LOGIC;
  signal \^out_blck\ : STD_LOGIC;
  signal \^out_mclk\ : STD_LOGIC;
  signal \^out_mute\ : STD_LOGIC;
  signal \^out_pbdat\ : STD_LOGIC;
  signal \^out_pblrc\ : STD_LOGIC;
  signal \^out_ready\ : STD_LOGIC;
  signal \quick_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \quick_state_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \quick_state_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \quick_state_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \quick_state_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal reg_out_BCLK_i_1_n_0 : STD_LOGIC;
  signal reg_out_BCLK_i_2_n_0 : STD_LOGIC;
  signal reg_out_MCLK_i_1_n_0 : STD_LOGIC;
  signal reg_out_MUTE_i_1_n_0 : STD_LOGIC;
  signal reg_out_PBDAT_i_10_n_0 : STD_LOGIC;
  signal reg_out_PBDAT_i_11_n_0 : STD_LOGIC;
  signal reg_out_PBDAT_i_12_n_0 : STD_LOGIC;
  signal reg_out_PBDAT_i_13_n_0 : STD_LOGIC;
  signal reg_out_PBDAT_i_14_n_0 : STD_LOGIC;
  signal reg_out_PBDAT_i_15_n_0 : STD_LOGIC;
  signal reg_out_PBDAT_i_16_n_0 : STD_LOGIC;
  signal reg_out_PBDAT_i_1_n_0 : STD_LOGIC;
  signal reg_out_PBDAT_i_2_n_0 : STD_LOGIC;
  signal reg_out_PBDAT_i_5_n_0 : STD_LOGIC;
  signal reg_out_PBDAT_i_8_n_0 : STD_LOGIC;
  signal reg_out_PBDAT_i_9_n_0 : STD_LOGIC;
  signal reg_out_PBDAT_reg_i_3_n_0 : STD_LOGIC;
  signal reg_out_PBDAT_reg_i_4_n_0 : STD_LOGIC;
  signal reg_out_PBDAT_reg_i_6_n_0 : STD_LOGIC;
  signal reg_out_PBDAT_reg_i_7_n_0 : STD_LOGIC;
  signal reg_out_PBLRC_i_1_n_0 : STD_LOGIC;
  signal reg_out_PBLRC_i_2_n_0 : STD_LOGIC;
  signal reg_out_ready_i_1_n_0 : STD_LOGIC;
  signal reg_out_ready_i_2_n_0 : STD_LOGIC;
  signal reg_out_ready_i_3_n_0 : STD_LOGIC;
  signal reg_out_ready_i_4_n_0 : STD_LOGIC;
  signal reg_out_ready_i_5_n_0 : STD_LOGIC;
  signal reg_out_ready_i_6_n_0 : STD_LOGIC;
  signal reg_out_ready_i_7_n_0 : STD_LOGIC;
  signal reg_out_ready_i_8_n_0 : STD_LOGIC;
  signal \reg_sample[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[12]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[13]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[14]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[15]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[16]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[17]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[18]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[19]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[20]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[21]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[22]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[23]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg_sample_reg_n_0_[9]\ : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal state_i_2_n_0 : STD_LOGIC;
  signal state_reg_n_0 : STD_LOGIC;
  signal \NLW_bit_counter_reg[23]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bit_counter_reg[23]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BCLK_counter[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \BCLK_counter[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \BCLK_counter[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \BCLK_counter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \BCLK_counter[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_quick_state[1]_i_4\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_quick_state_reg[0]\ : label is "q_STOP_ASKING_FOR_SAMPLE:01,q_LOAD_SAMPLE:10,q_WAIT_FOR_BCLK:11,q_ASK_FOR_SAMPLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_quick_state_reg[1]\ : label is "q_STOP_ASKING_FOR_SAMPLE:01,q_LOAD_SAMPLE:10,q_WAIT_FOR_BCLK:11,q_ASK_FOR_SAMPLE:00";
  attribute SOFT_HLUTNM of \MCLK_counter[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \MCLK_counter[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \PBLRC_counter[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \PBLRC_counter[10]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \PBLRC_counter[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \PBLRC_counter[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \PBLRC_counter[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \PBLRC_counter[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \PBLRC_counter[6]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \PBLRC_counter[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \PBLRC_counter[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bit_counter[23]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \quick_state_counter[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \quick_state_counter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of reg_out_BCLK_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of reg_out_MUTE_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of reg_out_PBDAT_i_10 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of reg_out_PBDAT_i_11 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of reg_out_PBDAT_i_12 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of reg_out_PBLRC_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of reg_out_ready_i_3 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of reg_out_ready_i_4 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of reg_out_ready_i_5 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of reg_out_ready_i_7 : label is "soft_lutpair7";
begin
  out_BLCK <= \^out_blck\;
  out_MCLK <= \^out_mclk\;
  out_MUTE <= \^out_mute\;
  out_PBDAT <= \^out_pbdat\;
  out_PBLRC <= \^out_pblrc\;
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
      INIT => X"222E2222222A2222"
    )
        port map (
      I0 => BCLK_negedge_reg_n_0,
      I1 => state_reg_n_0,
      I2 => BCLK_counter(3),
      I3 => reg_out_BCLK_i_2_n_0,
      I4 => BCLK_counter(4),
      I5 => \^out_blck\,
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
\FSM_sequential_quick_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAF8FA000A0A0"
    )
        port map (
      I0 => \FSM_sequential_quick_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_quick_state[1]_i_3_n_0\,
      I2 => state_reg_n_0,
      I3 => \quick_state__0\(1),
      I4 => reg_out_ready_i_2_n_0,
      I5 => \quick_state__0\(0),
      O => \FSM_sequential_quick_state[0]_i_1_n_0\
    );
\FSM_sequential_quick_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFF0000AAFF0800"
    )
        port map (
      I0 => \FSM_sequential_quick_state[1]_i_2_n_0\,
      I1 => \quick_state__0\(0),
      I2 => \FSM_sequential_quick_state[1]_i_3_n_0\,
      I3 => state_reg_n_0,
      I4 => \quick_state__0\(1),
      I5 => reg_out_ready_i_2_n_0,
      O => \FSM_sequential_quick_state[1]_i_1_n_0\
    );
\FSM_sequential_quick_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => reg_out_PBDAT_i_5_n_0,
      I1 => \bit_counter_reg_n_0_[4]\,
      I2 => \quick_state__0\(1),
      I3 => \quick_state__0\(0),
      I4 => \FSM_sequential_quick_state[1]_i_4_n_0\,
      O => \FSM_sequential_quick_state[1]_i_2_n_0\
    );
\FSM_sequential_quick_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \quick_state_counter_reg_n_0_[1]\,
      I1 => \quick_state_counter_reg_n_0_[0]\,
      O => \FSM_sequential_quick_state[1]_i_3_n_0\
    );
\FSM_sequential_quick_state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[0]\,
      I1 => \bit_counter_reg_n_0_[2]\,
      I2 => \bit_counter_reg_n_0_[1]\,
      I3 => \bit_counter_reg_n_0_[3]\,
      O => \FSM_sequential_quick_state[1]_i_4_n_0\
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
      INIT => X"45"
    )
        port map (
      I0 => MCLK_counter(0),
      I1 => MCLK_counter(2),
      I2 => MCLK_counter(1),
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
\PBLRC_counter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => \PBLRC_counter[10]_i_2_n_0\,
      I1 => \PBLRC_counter[10]_i_3_n_0\,
      I2 => PBLRC_counter(10),
      O => PBLRC_counter_0(10)
    );
\PBLRC_counter[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => canal_counter_i_3_n_0,
      I1 => PBLRC_counter(10),
      I2 => PBLRC_counter(8),
      I3 => PBLRC_counter(9),
      I4 => PBLRC_counter(3),
      I5 => PBLRC_counter(2),
      O => \PBLRC_counter[10]_i_2_n_0\
    );
\PBLRC_counter[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => PBLRC_counter(9),
      I1 => PBLRC_counter(8),
      I2 => \PBLRC_counter[9]_i_2_n_0\,
      I3 => PBLRC_counter(6),
      I4 => PBLRC_counter(7),
      O => \PBLRC_counter[10]_i_3_n_0\
    );
\PBLRC_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PBLRC_counter(1),
      I1 => PBLRC_counter(0),
      O => PBLRC_counter_0(1)
    );
\PBLRC_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => PBLRC_counter(1),
      I1 => PBLRC_counter(0),
      I2 => PBLRC_counter(2),
      O => PBLRC_counter_0(2)
    );
\PBLRC_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => PBLRC_counter(3),
      I1 => PBLRC_counter(1),
      I2 => PBLRC_counter(0),
      I3 => PBLRC_counter(2),
      O => PBLRC_counter_0(3)
    );
\PBLRC_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => PBLRC_counter(0),
      I1 => PBLRC_counter(1),
      I2 => PBLRC_counter(3),
      I3 => PBLRC_counter(2),
      I4 => PBLRC_counter(4),
      O => PBLRC_counter_0(4)
    );
\PBLRC_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => PBLRC_counter(5),
      I1 => PBLRC_counter(0),
      I2 => PBLRC_counter(1),
      I3 => PBLRC_counter(3),
      I4 => PBLRC_counter(2),
      I5 => PBLRC_counter(4),
      O => PBLRC_counter_0(5)
    );
\PBLRC_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => PBLRC_counter(6),
      I1 => \PBLRC_counter[6]_i_2_n_0\,
      I2 => PBLRC_counter(3),
      I3 => PBLRC_counter(2),
      I4 => PBLRC_counter(5),
      I5 => PBLRC_counter(4),
      O => \PBLRC_counter[6]_i_1_n_0\
    );
\PBLRC_counter[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => PBLRC_counter(1),
      I1 => PBLRC_counter(0),
      O => \PBLRC_counter[6]_i_2_n_0\
    );
\PBLRC_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => PBLRC_counter(7),
      I1 => \PBLRC_counter[9]_i_2_n_0\,
      I2 => PBLRC_counter(6),
      O => PBLRC_counter_0(7)
    );
\PBLRC_counter[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => PBLRC_counter(8),
      I1 => \PBLRC_counter[9]_i_2_n_0\,
      I2 => PBLRC_counter(6),
      I3 => PBLRC_counter(7),
      O => PBLRC_counter_0(8)
    );
\PBLRC_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5515555500400000"
    )
        port map (
      I0 => \PBLRC_counter[10]_i_2_n_0\,
      I1 => PBLRC_counter(7),
      I2 => PBLRC_counter(6),
      I3 => \PBLRC_counter[9]_i_2_n_0\,
      I4 => PBLRC_counter(8),
      I5 => PBLRC_counter(9),
      O => PBLRC_counter_0(9)
    );
\PBLRC_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => PBLRC_counter(4),
      I1 => PBLRC_counter(5),
      I2 => PBLRC_counter(2),
      I3 => PBLRC_counter(3),
      I4 => PBLRC_counter(1),
      I5 => PBLRC_counter(0),
      O => \PBLRC_counter[9]_i_2_n_0\
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
      D => \PBLRC_counter[6]_i_1_n_0\,
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
\bit_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[0]\,
      O => \bit_counter[0]_i_1_n_0\
    );
\bit_counter[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => BCLK_negedge_reg_n_0,
      I1 => \bit_counter[23]_i_4_n_0\,
      I2 => PBLRC_counter(8),
      I3 => PBLRC_counter(9),
      I4 => PBLRC_counter(10),
      I5 => state_reg_n_0,
      O => \bit_counter[23]_i_1_n_0\
    );
\bit_counter[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAAAA00000000"
    )
        port map (
      I0 => BCLK_negedge_reg_n_0,
      I1 => \bit_counter[23]_i_4_n_0\,
      I2 => PBLRC_counter(8),
      I3 => PBLRC_counter(9),
      I4 => PBLRC_counter(10),
      I5 => state_reg_n_0,
      O => \bit_counter[23]_i_2_n_0\
    );
\bit_counter[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \PBLRC_counter[9]_i_2_n_0\,
      I1 => PBLRC_counter(6),
      I2 => PBLRC_counter(7),
      O => \bit_counter[23]_i_4_n_0\
    );
\bit_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \bit_counter[0]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[0]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(10),
      Q => \bit_counter_reg_n_0_[10]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(11),
      Q => \bit_counter_reg_n_0_[11]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(12),
      Q => \bit_counter_reg_n_0_[12]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_counter_reg[8]_i_1_n_0\,
      CO(3) => \bit_counter_reg[12]_i_1_n_0\,
      CO(2) => \bit_counter_reg[12]_i_1_n_1\,
      CO(1) => \bit_counter_reg[12]_i_1_n_2\,
      CO(0) => \bit_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => bit_counter0(12 downto 9),
      S(3) => \bit_counter_reg_n_0_[12]\,
      S(2) => \bit_counter_reg_n_0_[11]\,
      S(1) => \bit_counter_reg_n_0_[10]\,
      S(0) => \bit_counter_reg_n_0_[9]\
    );
\bit_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(13),
      Q => \bit_counter_reg_n_0_[13]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(14),
      Q => \bit_counter_reg_n_0_[14]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(15),
      Q => \bit_counter_reg_n_0_[15]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(16),
      Q => \bit_counter_reg_n_0_[16]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_counter_reg[12]_i_1_n_0\,
      CO(3) => \bit_counter_reg[16]_i_1_n_0\,
      CO(2) => \bit_counter_reg[16]_i_1_n_1\,
      CO(1) => \bit_counter_reg[16]_i_1_n_2\,
      CO(0) => \bit_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => bit_counter0(16 downto 13),
      S(3) => \bit_counter_reg_n_0_[16]\,
      S(2) => \bit_counter_reg_n_0_[15]\,
      S(1) => \bit_counter_reg_n_0_[14]\,
      S(0) => \bit_counter_reg_n_0_[13]\
    );
\bit_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(17),
      Q => \bit_counter_reg_n_0_[17]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(18),
      Q => \bit_counter_reg_n_0_[18]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(19),
      Q => \bit_counter_reg_n_0_[19]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(1),
      Q => \bit_counter_reg_n_0_[1]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(20),
      Q => \bit_counter_reg_n_0_[20]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_counter_reg[16]_i_1_n_0\,
      CO(3) => \bit_counter_reg[20]_i_1_n_0\,
      CO(2) => \bit_counter_reg[20]_i_1_n_1\,
      CO(1) => \bit_counter_reg[20]_i_1_n_2\,
      CO(0) => \bit_counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => bit_counter0(20 downto 17),
      S(3) => \bit_counter_reg_n_0_[20]\,
      S(2) => \bit_counter_reg_n_0_[19]\,
      S(1) => \bit_counter_reg_n_0_[18]\,
      S(0) => \bit_counter_reg_n_0_[17]\
    );
\bit_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(21),
      Q => \bit_counter_reg_n_0_[21]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(22),
      Q => \bit_counter_reg_n_0_[22]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(23),
      Q => \bit_counter_reg_n_0_[23]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[23]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_counter_reg[20]_i_1_n_0\,
      CO(3 downto 2) => \NLW_bit_counter_reg[23]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \bit_counter_reg[23]_i_3_n_2\,
      CO(0) => \bit_counter_reg[23]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_bit_counter_reg[23]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => bit_counter0(23 downto 21),
      S(3) => '0',
      S(2) => \bit_counter_reg_n_0_[23]\,
      S(1) => \bit_counter_reg_n_0_[22]\,
      S(0) => \bit_counter_reg_n_0_[21]\
    );
\bit_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(2),
      Q => \bit_counter_reg_n_0_[2]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(3),
      Q => \bit_counter_reg_n_0_[3]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(4),
      Q => \bit_counter_reg_n_0_[4]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bit_counter_reg[4]_i_1_n_0\,
      CO(2) => \bit_counter_reg[4]_i_1_n_1\,
      CO(1) => \bit_counter_reg[4]_i_1_n_2\,
      CO(0) => \bit_counter_reg[4]_i_1_n_3\,
      CYINIT => \bit_counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => bit_counter0(4 downto 1),
      S(3) => \bit_counter_reg_n_0_[4]\,
      S(2) => \bit_counter_reg_n_0_[3]\,
      S(1) => \bit_counter_reg_n_0_[2]\,
      S(0) => \bit_counter_reg_n_0_[1]\
    );
\bit_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(5),
      Q => \bit_counter_reg_n_0_[5]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(6),
      Q => \bit_counter_reg_n_0_[6]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(7),
      Q => \bit_counter_reg_n_0_[7]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(8),
      Q => \bit_counter_reg_n_0_[8]\,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_counter_reg[4]_i_1_n_0\,
      CO(3) => \bit_counter_reg[8]_i_1_n_0\,
      CO(2) => \bit_counter_reg[8]_i_1_n_1\,
      CO(1) => \bit_counter_reg[8]_i_1_n_2\,
      CO(0) => \bit_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => bit_counter0(8 downto 5),
      S(3) => \bit_counter_reg_n_0_[8]\,
      S(2) => \bit_counter_reg_n_0_[7]\,
      S(1) => \bit_counter_reg_n_0_[6]\,
      S(0) => \bit_counter_reg_n_0_[5]\
    );
\bit_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => bit_counter0(9),
      Q => \bit_counter_reg_n_0_[9]\,
      R => \bit_counter[23]_i_1_n_0\
    );
canal_counter_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => canal_counter_reg_n_0,
      I1 => canal_counter_i_2_n_0,
      I2 => PBLRC_counter(10),
      I3 => state_reg_n_0,
      I4 => canal_counter_i_3_n_0,
      O => canal_counter_i_1_n_0
    );
canal_counter_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => PBLRC_counter(8),
      I1 => PBLRC_counter(9),
      I2 => PBLRC_counter(3),
      I3 => PBLRC_counter(2),
      O => canal_counter_i_2_n_0
    );
canal_counter_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => PBLRC_counter(6),
      I1 => PBLRC_counter(7),
      I2 => PBLRC_counter(1),
      I3 => PBLRC_counter(0),
      I4 => PBLRC_counter(5),
      I5 => PBLRC_counter(4),
      O => canal_counter_i_3_n_0
    );
canal_counter_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => canal_counter_i_1_n_0,
      Q => canal_counter_reg_n_0,
      R => '0'
    );
\quick_state_counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \quick_state__0\(1),
      I1 => \quick_state__0\(0),
      I2 => state_reg_n_0,
      I3 => \quick_state_counter_reg_n_0_[0]\,
      O => \quick_state_counter[0]_i_1_n_0\
    );
\quick_state_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0080"
    )
        port map (
      I0 => \quick_state_counter_reg_n_0_[0]\,
      I1 => state_reg_n_0,
      I2 => \quick_state__0\(0),
      I3 => \quick_state__0\(1),
      I4 => \quick_state_counter_reg_n_0_[1]\,
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
      Q => \quick_state_counter_reg_n_0_[0]\,
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
      Q => \quick_state_counter_reg_n_0_[1]\,
      R => '0'
    );
reg_out_BCLK_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF0200"
    )
        port map (
      I0 => BCLK_counter(4),
      I1 => reg_out_BCLK_i_2_n_0,
      I2 => BCLK_counter(3),
      I3 => state_reg_n_0,
      I4 => \^out_blck\,
      O => reg_out_BCLK_i_1_n_0
    );
reg_out_BCLK_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => BCLK_counter(0),
      I1 => BCLK_counter(1),
      I2 => BCLK_counter(2),
      O => reg_out_BCLK_i_2_n_0
    );
reg_out_BCLK_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => reg_out_BCLK_i_1_n_0,
      Q => \^out_blck\,
      R => '0'
    );
reg_out_MCLK_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF1000"
    )
        port map (
      I0 => MCLK_counter(0),
      I1 => MCLK_counter(2),
      I2 => MCLK_counter(1),
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
      INIT => X"B8"
    )
        port map (
      I0 => \^out_mute\,
      I1 => state_reg_n_0,
      I2 => in_en,
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
      INIT => X"BBFA880A"
    )
        port map (
      I0 => reg_out_PBDAT_i_2_n_0,
      I1 => BCLK_negedge_reg_n_0,
      I2 => in_en,
      I3 => state_reg_n_0,
      I4 => \^out_pbdat\,
      O => reg_out_PBDAT_i_1_n_0
    );
reg_out_PBDAT_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[6]\,
      I1 => \bit_counter_reg_n_0_[7]\,
      O => reg_out_PBDAT_i_10_n_0
    );
reg_out_PBDAT_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[17]\,
      I1 => \bit_counter_reg_n_0_[16]\,
      I2 => \bit_counter_reg_n_0_[19]\,
      I3 => \bit_counter_reg_n_0_[18]\,
      O => reg_out_PBDAT_i_11_n_0
    );
reg_out_PBDAT_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[9]\,
      I1 => \bit_counter_reg_n_0_[8]\,
      I2 => \bit_counter_reg_n_0_[11]\,
      I3 => \bit_counter_reg_n_0_[10]\,
      O => reg_out_PBDAT_i_12_n_0
    );
reg_out_PBDAT_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_sample_reg_n_0_[4]\,
      I1 => \reg_sample_reg_n_0_[5]\,
      I2 => \bit_counter_reg_n_0_[1]\,
      I3 => \reg_sample_reg_n_0_[6]\,
      I4 => \bit_counter_reg_n_0_[0]\,
      I5 => \reg_sample_reg_n_0_[7]\,
      O => reg_out_PBDAT_i_13_n_0
    );
reg_out_PBDAT_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_sample_reg_n_0_[0]\,
      I1 => \reg_sample_reg_n_0_[1]\,
      I2 => \bit_counter_reg_n_0_[1]\,
      I3 => \reg_sample_reg_n_0_[2]\,
      I4 => \bit_counter_reg_n_0_[0]\,
      I5 => \reg_sample_reg_n_0_[3]\,
      O => reg_out_PBDAT_i_14_n_0
    );
reg_out_PBDAT_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_sample_reg_n_0_[12]\,
      I1 => \reg_sample_reg_n_0_[13]\,
      I2 => \bit_counter_reg_n_0_[1]\,
      I3 => \reg_sample_reg_n_0_[14]\,
      I4 => \bit_counter_reg_n_0_[0]\,
      I5 => \reg_sample_reg_n_0_[15]\,
      O => reg_out_PBDAT_i_15_n_0
    );
reg_out_PBDAT_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_sample_reg_n_0_[8]\,
      I1 => \reg_sample_reg_n_0_[9]\,
      I2 => \bit_counter_reg_n_0_[1]\,
      I3 => \reg_sample_reg_n_0_[10]\,
      I4 => \bit_counter_reg_n_0_[0]\,
      I5 => \reg_sample_reg_n_0_[11]\,
      O => reg_out_PBDAT_i_16_n_0
    );
reg_out_PBDAT_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000005050C0"
    )
        port map (
      I0 => reg_out_PBDAT_reg_i_3_n_0,
      I1 => reg_out_PBDAT_reg_i_4_n_0,
      I2 => state_reg_n_0,
      I3 => \bit_counter_reg_n_0_[3]\,
      I4 => \bit_counter_reg_n_0_[4]\,
      I5 => reg_out_PBDAT_i_5_n_0,
      O => reg_out_PBDAT_i_2_n_0
    );
reg_out_PBDAT_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => reg_out_PBDAT_i_10_n_0,
      I1 => \bit_counter_reg_n_0_[5]\,
      I2 => reg_out_PBDAT_i_11_n_0,
      I3 => reg_out_ready_i_8_n_0,
      I4 => reg_out_PBDAT_i_12_n_0,
      I5 => reg_out_ready_i_6_n_0,
      O => reg_out_PBDAT_i_5_n_0
    );
reg_out_PBDAT_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_sample_reg_n_0_[20]\,
      I1 => \reg_sample_reg_n_0_[21]\,
      I2 => \bit_counter_reg_n_0_[1]\,
      I3 => \reg_sample_reg_n_0_[22]\,
      I4 => \bit_counter_reg_n_0_[0]\,
      I5 => \reg_sample_reg_n_0_[23]\,
      O => reg_out_PBDAT_i_8_n_0
    );
reg_out_PBDAT_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_sample_reg_n_0_[16]\,
      I1 => \reg_sample_reg_n_0_[17]\,
      I2 => \bit_counter_reg_n_0_[1]\,
      I3 => \reg_sample_reg_n_0_[18]\,
      I4 => \bit_counter_reg_n_0_[0]\,
      I5 => \reg_sample_reg_n_0_[19]\,
      O => reg_out_PBDAT_i_9_n_0
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
reg_out_PBDAT_reg_i_3: unisim.vcomponents.MUXF8
     port map (
      I0 => reg_out_PBDAT_reg_i_6_n_0,
      I1 => reg_out_PBDAT_reg_i_7_n_0,
      O => reg_out_PBDAT_reg_i_3_n_0,
      S => \bit_counter_reg_n_0_[3]\
    );
reg_out_PBDAT_reg_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_out_PBDAT_i_8_n_0,
      I1 => reg_out_PBDAT_i_9_n_0,
      O => reg_out_PBDAT_reg_i_4_n_0,
      S => \bit_counter_reg_n_0_[2]\
    );
reg_out_PBDAT_reg_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_out_PBDAT_i_13_n_0,
      I1 => reg_out_PBDAT_i_14_n_0,
      O => reg_out_PBDAT_reg_i_6_n_0,
      S => \bit_counter_reg_n_0_[2]\
    );
reg_out_PBDAT_reg_i_7: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_out_PBDAT_i_15_n_0,
      I1 => reg_out_PBDAT_i_16_n_0,
      O => reg_out_PBDAT_reg_i_7_n_0,
      S => \bit_counter_reg_n_0_[2]\
    );
reg_out_PBLRC_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FF1"
    )
        port map (
      I0 => in_en,
      I1 => state_reg_n_0,
      I2 => reg_out_PBLRC_i_2_n_0,
      I3 => \^out_pblrc\,
      O => reg_out_PBLRC_i_1_n_0
    );
reg_out_PBLRC_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => PBLRC_counter(10),
      I2 => PBLRC_counter(9),
      I3 => PBLRC_counter(8),
      I4 => \bit_counter[23]_i_4_n_0\,
      O => reg_out_PBLRC_i_2_n_0
    );
reg_out_PBLRC_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => reg_out_PBLRC_i_1_n_0,
      Q => \^out_pblrc\,
      R => '0'
    );
reg_out_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AB0000A8A8FFFF"
    )
        port map (
      I0 => \^out_ready\,
      I1 => reg_out_ready_i_2_n_0,
      I2 => \quick_state__0\(1),
      I3 => \quick_state__0\(0),
      I4 => state_reg_n_0,
      I5 => in_en,
      O => reg_out_ready_i_1_n_0
    );
reg_out_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555155555555"
    )
        port map (
      I0 => \quick_state__0\(0),
      I1 => canal_counter_i_1_n_0,
      I2 => reg_out_ready_i_3_n_0,
      I3 => reg_out_ready_i_4_n_0,
      I4 => reg_out_ready_i_5_n_0,
      I5 => in_en,
      O => reg_out_ready_i_2_n_0
    );
reg_out_ready_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[10]\,
      I1 => \bit_counter_reg_n_0_[11]\,
      I2 => \bit_counter_reg_n_0_[8]\,
      I3 => \bit_counter_reg_n_0_[9]\,
      I4 => reg_out_ready_i_6_n_0,
      O => reg_out_ready_i_3_n_0
    );
reg_out_ready_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[2]\,
      I1 => \bit_counter_reg_n_0_[3]\,
      I2 => \bit_counter_reg_n_0_[0]\,
      I3 => \bit_counter_reg_n_0_[1]\,
      I4 => reg_out_ready_i_7_n_0,
      O => reg_out_ready_i_4_n_0
    );
reg_out_ready_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[18]\,
      I1 => \bit_counter_reg_n_0_[19]\,
      I2 => \bit_counter_reg_n_0_[16]\,
      I3 => \bit_counter_reg_n_0_[17]\,
      I4 => reg_out_ready_i_8_n_0,
      O => reg_out_ready_i_5_n_0
    );
reg_out_ready_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[13]\,
      I1 => \bit_counter_reg_n_0_[12]\,
      I2 => \bit_counter_reg_n_0_[15]\,
      I3 => \bit_counter_reg_n_0_[14]\,
      O => reg_out_ready_i_6_n_0
    );
reg_out_ready_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[7]\,
      I1 => \bit_counter_reg_n_0_[6]\,
      I2 => \bit_counter_reg_n_0_[4]\,
      I3 => \bit_counter_reg_n_0_[5]\,
      O => reg_out_ready_i_7_n_0
    );
reg_out_ready_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[21]\,
      I1 => \bit_counter_reg_n_0_[20]\,
      I2 => \bit_counter_reg_n_0_[22]\,
      I3 => \bit_counter_reg_n_0_[23]\,
      O => reg_out_ready_i_8_n_0
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
\reg_sample[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \quick_state__0\(1),
      I1 => \quick_state__0\(0),
      I2 => state_reg_n_0,
      I3 => in_en,
      O => \reg_sample[23]_i_1_n_0\
    );
\reg_sample_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(0),
      Q => \reg_sample_reg_n_0_[0]\,
      R => '0'
    );
\reg_sample_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(10),
      Q => \reg_sample_reg_n_0_[10]\,
      R => '0'
    );
\reg_sample_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(11),
      Q => \reg_sample_reg_n_0_[11]\,
      R => '0'
    );
\reg_sample_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(12),
      Q => \reg_sample_reg_n_0_[12]\,
      R => '0'
    );
\reg_sample_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(13),
      Q => \reg_sample_reg_n_0_[13]\,
      R => '0'
    );
\reg_sample_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(14),
      Q => \reg_sample_reg_n_0_[14]\,
      R => '0'
    );
\reg_sample_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(15),
      Q => \reg_sample_reg_n_0_[15]\,
      R => '0'
    );
\reg_sample_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(16),
      Q => \reg_sample_reg_n_0_[16]\,
      R => '0'
    );
\reg_sample_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(17),
      Q => \reg_sample_reg_n_0_[17]\,
      R => '0'
    );
\reg_sample_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(18),
      Q => \reg_sample_reg_n_0_[18]\,
      R => '0'
    );
\reg_sample_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(19),
      Q => \reg_sample_reg_n_0_[19]\,
      R => '0'
    );
\reg_sample_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(1),
      Q => \reg_sample_reg_n_0_[1]\,
      R => '0'
    );
\reg_sample_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(20),
      Q => \reg_sample_reg_n_0_[20]\,
      R => '0'
    );
\reg_sample_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(21),
      Q => \reg_sample_reg_n_0_[21]\,
      R => '0'
    );
\reg_sample_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(22),
      Q => \reg_sample_reg_n_0_[22]\,
      R => '0'
    );
\reg_sample_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(23),
      Q => \reg_sample_reg_n_0_[23]\,
      R => '0'
    );
\reg_sample_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(2),
      Q => \reg_sample_reg_n_0_[2]\,
      R => '0'
    );
\reg_sample_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(3),
      Q => \reg_sample_reg_n_0_[3]\,
      R => '0'
    );
\reg_sample_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(4),
      Q => \reg_sample_reg_n_0_[4]\,
      R => '0'
    );
\reg_sample_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(5),
      Q => \reg_sample_reg_n_0_[5]\,
      R => '0'
    );
\reg_sample_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(6),
      Q => \reg_sample_reg_n_0_[6]\,
      R => '0'
    );
\reg_sample_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(7),
      Q => \reg_sample_reg_n_0_[7]\,
      R => '0'
    );
\reg_sample_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(8),
      Q => \reg_sample_reg_n_0_[8]\,
      R => '0'
    );
\reg_sample_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \reg_sample[23]_i_1_n_0\,
      D => sample(9),
      Q => \reg_sample_reg_n_0_[9]\,
      R => '0'
    );
state_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEAAAA"
    )
        port map (
      I0 => in_en,
      I1 => state_i_2_n_0,
      I2 => \quick_state__0\(0),
      I3 => \quick_state__0\(1),
      I4 => state_reg_n_0,
      O => state_i_1_n_0
    );
state_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => canal_counter_i_1_n_0,
      I1 => reg_out_ready_i_3_n_0,
      I2 => reg_out_ready_i_4_n_0,
      I3 => reg_out_ready_i_5_n_0,
      O => state_i_2_n_0
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
      in_clk => in_clk,
      in_en => in_en,
      out_BLCK => out_BLCK,
      out_MCLK => out_MCLK,
      out_MUTE => out_MUTE,
      out_PBDAT => out_PBDAT,
      out_PBLRC => out_PBLRC,
      out_ready => out_ready,
      sample(23 downto 0) => sample(23 downto 0)
    );
end STRUCTURE;
