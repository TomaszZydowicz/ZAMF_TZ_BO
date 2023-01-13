-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Jan 12 23:50:15 2023
-- Host        : Dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Foldery/Studia/MGR/SEM2/ZAMPF/projekt/TZ_BO_PRO/TZ_BO_PRO.srcs/sources_1/bd/design_1/ip/design_1_bit_changer_seq_0_0/design_1_bit_changer_seq_0_0_sim_netlist.vhdl
-- Design      : design_1_bit_changer_seq_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_bit_changer_seq_0_0_bit_changer_seq is
  port (
    out_frame : out STD_LOGIC_VECTOR ( 23 downto 0 );
    out_ready : out STD_LOGIC;
    in_enable : in STD_LOGIC;
    in_clk : in STD_LOGIC;
    in_frame : in STD_LOGIC_VECTOR ( 22 downto 0 );
    in_message : in STD_LOGIC_VECTOR ( 87 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_bit_changer_seq_0_0_bit_changer_seq : entity is "bit_changer_seq";
end design_1_bit_changer_seq_0_0_bit_changer_seq;

architecture STRUCTURE of design_1_bit_changer_seq_0_0_bit_changer_seq is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \msg_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \msg_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \msg_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \msg_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \msg_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \msg_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \msg_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \msg_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \msg_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \msg_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \msg_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \msg_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \msg_count[9]_i_1_n_0\ : STD_LOGIC;
  signal \msg_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \msg_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \msg_count[9]_i_4_n_0\ : STD_LOGIC;
  signal \msg_count[9]_i_5_n_0\ : STD_LOGIC;
  signal \msg_count[9]_i_6_n_0\ : STD_LOGIC;
  signal \msg_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \msg_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \msg_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \msg_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \msg_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \msg_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \msg_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \msg_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \msg_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \msg_count_reg_n_0_[9]\ : STD_LOGIC;
  signal \^out_ready\ : STD_LOGIC;
  signal r_in_message : STD_LOGIC;
  signal r_in_message_i_19_n_0 : STD_LOGIC;
  signal r_in_message_i_1_n_0 : STD_LOGIC;
  signal r_in_message_i_20_n_0 : STD_LOGIC;
  signal r_in_message_i_21_n_0 : STD_LOGIC;
  signal r_in_message_i_22_n_0 : STD_LOGIC;
  signal r_in_message_i_23_n_0 : STD_LOGIC;
  signal r_in_message_i_24_n_0 : STD_LOGIC;
  signal r_in_message_i_25_n_0 : STD_LOGIC;
  signal r_in_message_i_26_n_0 : STD_LOGIC;
  signal r_in_message_i_27_n_0 : STD_LOGIC;
  signal r_in_message_i_28_n_0 : STD_LOGIC;
  signal r_in_message_i_29_n_0 : STD_LOGIC;
  signal r_in_message_i_30_n_0 : STD_LOGIC;
  signal r_in_message_i_31_n_0 : STD_LOGIC;
  signal r_in_message_i_32_n_0 : STD_LOGIC;
  signal r_in_message_i_33_n_0 : STD_LOGIC;
  signal r_in_message_i_34_n_0 : STD_LOGIC;
  signal r_in_message_i_35_n_0 : STD_LOGIC;
  signal r_in_message_i_36_n_0 : STD_LOGIC;
  signal r_in_message_i_37_n_0 : STD_LOGIC;
  signal r_in_message_i_38_n_0 : STD_LOGIC;
  signal r_in_message_i_39_n_0 : STD_LOGIC;
  signal r_in_message_i_40_n_0 : STD_LOGIC;
  signal r_in_message_i_4_n_0 : STD_LOGIC;
  signal r_in_message_i_5_n_0 : STD_LOGIC;
  signal r_in_message_i_6_n_0 : STD_LOGIC;
  signal r_in_message_i_7_n_0 : STD_LOGIC;
  signal r_in_message_reg_i_10_n_0 : STD_LOGIC;
  signal r_in_message_reg_i_11_n_0 : STD_LOGIC;
  signal r_in_message_reg_i_12_n_0 : STD_LOGIC;
  signal r_in_message_reg_i_13_n_0 : STD_LOGIC;
  signal r_in_message_reg_i_14_n_0 : STD_LOGIC;
  signal r_in_message_reg_i_15_n_0 : STD_LOGIC;
  signal r_in_message_reg_i_16_n_0 : STD_LOGIC;
  signal r_in_message_reg_i_17_n_0 : STD_LOGIC;
  signal r_in_message_reg_i_18_n_0 : STD_LOGIC;
  signal r_in_message_reg_i_2_n_0 : STD_LOGIC;
  signal r_in_message_reg_i_3_n_0 : STD_LOGIC;
  signal r_in_message_reg_i_8_n_0 : STD_LOGIC;
  signal r_in_message_reg_i_9_n_0 : STD_LOGIC;
  signal r_out_frame : STD_LOGIC;
  signal r_out_ready0 : STD_LOGIC;
  signal r_out_ready_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "IDLE:001,CODE:010,STOP:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "IDLE:001,CODE:010,STOP:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "IDLE:001,CODE:010,STOP:100,";
  attribute SOFT_HLUTNM of \msg_count[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \msg_count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \msg_count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \msg_count[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \msg_count[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \msg_count[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of r_out_ready_i_1 : label is "soft_lutpair2";
begin
  out_ready <= \^out_ready\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF10"
    )
        port map (
      I0 => r_out_frame,
      I1 => in_enable,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => r_out_ready0,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => r_out_frame,
      I1 => in_enable,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => r_out_ready0,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => r_out_frame,
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => r_out_frame,
      Q => r_out_ready0,
      R => '0'
    );
\msg_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_enable,
      I1 => \msg_count_reg_n_0_[0]\,
      O => \msg_count[0]_i_1_n_0\
    );
\msg_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \msg_count_reg_n_0_[0]\,
      I1 => \msg_count_reg_n_0_[1]\,
      I2 => in_enable,
      O => \msg_count[1]_i_1_n_0\
    );
\msg_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \msg_count_reg_n_0_[0]\,
      I1 => \msg_count_reg_n_0_[1]\,
      I2 => \msg_count_reg_n_0_[2]\,
      I3 => in_enable,
      O => \msg_count[2]_i_1_n_0\
    );
\msg_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F800000"
    )
        port map (
      I0 => \msg_count_reg_n_0_[2]\,
      I1 => \msg_count_reg_n_0_[0]\,
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => \msg_count_reg_n_0_[3]\,
      I4 => in_enable,
      O => \msg_count[3]_i_1_n_0\
    );
\msg_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800000000000"
    )
        port map (
      I0 => \msg_count_reg_n_0_[3]\,
      I1 => \msg_count_reg_n_0_[1]\,
      I2 => \msg_count_reg_n_0_[0]\,
      I3 => \msg_count_reg_n_0_[2]\,
      I4 => \msg_count_reg_n_0_[4]\,
      I5 => in_enable,
      O => \msg_count[4]_i_1_n_0\
    );
\msg_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800000000000"
    )
        port map (
      I0 => \msg_count_reg_n_0_[4]\,
      I1 => \msg_count_reg_n_0_[2]\,
      I2 => \msg_count[5]_i_2_n_0\,
      I3 => \msg_count_reg_n_0_[3]\,
      I4 => \msg_count_reg_n_0_[5]\,
      I5 => in_enable,
      O => \msg_count[5]_i_1_n_0\
    );
\msg_count[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \msg_count_reg_n_0_[0]\,
      I1 => \msg_count_reg_n_0_[1]\,
      O => \msg_count[5]_i_2_n_0\
    );
\msg_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \msg_count[8]_i_2_n_0\,
      I1 => \msg_count_reg_n_0_[6]\,
      I2 => \msg_count[8]_i_3_n_0\,
      I3 => in_enable,
      O => \msg_count[6]_i_1_n_0\
    );
\msg_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8580000"
    )
        port map (
      I0 => \msg_count_reg_n_0_[6]\,
      I1 => \msg_count[8]_i_2_n_0\,
      I2 => \msg_count_reg_n_0_[7]\,
      I3 => \msg_count[8]_i_3_n_0\,
      I4 => in_enable,
      O => \msg_count[7]_i_1_n_0\
    );
\msg_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF805F8000000000"
    )
        port map (
      I0 => \msg_count_reg_n_0_[7]\,
      I1 => \msg_count[8]_i_2_n_0\,
      I2 => \msg_count_reg_n_0_[6]\,
      I3 => \msg_count_reg_n_0_[8]\,
      I4 => \msg_count[8]_i_3_n_0\,
      I5 => in_enable,
      O => \msg_count[8]_i_1_n_0\
    );
\msg_count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \msg_count_reg_n_0_[4]\,
      I1 => \msg_count_reg_n_0_[2]\,
      I2 => \msg_count_reg_n_0_[0]\,
      I3 => \msg_count_reg_n_0_[1]\,
      I4 => \msg_count_reg_n_0_[3]\,
      I5 => \msg_count_reg_n_0_[5]\,
      O => \msg_count[8]_i_2_n_0\
    );
\msg_count[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \msg_count_reg_n_0_[4]\,
      I1 => \msg_count_reg_n_0_[2]\,
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => \msg_count_reg_n_0_[0]\,
      I4 => \msg_count_reg_n_0_[3]\,
      I5 => \msg_count_reg_n_0_[5]\,
      O => \msg_count[8]_i_3_n_0\
    );
\msg_count[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \msg_count[9]_i_4_n_0\,
      I1 => \msg_count_reg_n_0_[9]\,
      I2 => r_out_ready0,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \msg_count[9]_i_1_n_0\
    );
\msg_count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE0E0E0"
    )
        port map (
      I0 => \msg_count[9]_i_4_n_0\,
      I1 => \msg_count_reg_n_0_[9]\,
      I2 => r_out_ready0,
      I3 => in_enable,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \msg_count[9]_i_2_n_0\
    );
\msg_count[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF805F8000000000"
    )
        port map (
      I0 => \msg_count_reg_n_0_[8]\,
      I1 => \msg_count[9]_i_5_n_0\,
      I2 => \msg_count_reg_n_0_[7]\,
      I3 => \msg_count_reg_n_0_[9]\,
      I4 => \msg_count[9]_i_6_n_0\,
      I5 => in_enable,
      O => \msg_count[9]_i_3_n_0\
    );
\msg_count[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEEAAAA"
    )
        port map (
      I0 => \msg_count_reg_n_0_[7]\,
      I1 => \msg_count_reg_n_0_[5]\,
      I2 => \msg_count_reg_n_0_[3]\,
      I3 => \msg_count_reg_n_0_[4]\,
      I4 => \msg_count_reg_n_0_[6]\,
      I5 => \msg_count_reg_n_0_[8]\,
      O => \msg_count[9]_i_4_n_0\
    );
\msg_count[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \msg_count_reg_n_0_[5]\,
      I1 => \msg_count_reg_n_0_[3]\,
      I2 => \msg_count[5]_i_2_n_0\,
      I3 => \msg_count_reg_n_0_[2]\,
      I4 => \msg_count_reg_n_0_[4]\,
      I5 => \msg_count_reg_n_0_[6]\,
      O => \msg_count[9]_i_5_n_0\
    );
\msg_count[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \msg_count_reg_n_0_[5]\,
      I1 => \msg_count_reg_n_0_[3]\,
      I2 => \msg_count[5]_i_2_n_0\,
      I3 => \msg_count_reg_n_0_[2]\,
      I4 => \msg_count_reg_n_0_[4]\,
      I5 => \msg_count_reg_n_0_[6]\,
      O => \msg_count[9]_i_6_n_0\
    );
\msg_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \msg_count[9]_i_2_n_0\,
      D => \msg_count[0]_i_1_n_0\,
      Q => \msg_count_reg_n_0_[0]\,
      R => \msg_count[9]_i_1_n_0\
    );
\msg_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \msg_count[9]_i_2_n_0\,
      D => \msg_count[1]_i_1_n_0\,
      Q => \msg_count_reg_n_0_[1]\,
      R => \msg_count[9]_i_1_n_0\
    );
\msg_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \msg_count[9]_i_2_n_0\,
      D => \msg_count[2]_i_1_n_0\,
      Q => \msg_count_reg_n_0_[2]\,
      R => \msg_count[9]_i_1_n_0\
    );
\msg_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \msg_count[9]_i_2_n_0\,
      D => \msg_count[3]_i_1_n_0\,
      Q => \msg_count_reg_n_0_[3]\,
      R => \msg_count[9]_i_1_n_0\
    );
\msg_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \msg_count[9]_i_2_n_0\,
      D => \msg_count[4]_i_1_n_0\,
      Q => \msg_count_reg_n_0_[4]\,
      R => \msg_count[9]_i_1_n_0\
    );
\msg_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \msg_count[9]_i_2_n_0\,
      D => \msg_count[5]_i_1_n_0\,
      Q => \msg_count_reg_n_0_[5]\,
      R => \msg_count[9]_i_1_n_0\
    );
\msg_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \msg_count[9]_i_2_n_0\,
      D => \msg_count[6]_i_1_n_0\,
      Q => \msg_count_reg_n_0_[6]\,
      R => \msg_count[9]_i_1_n_0\
    );
\msg_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \msg_count[9]_i_2_n_0\,
      D => \msg_count[7]_i_1_n_0\,
      Q => \msg_count_reg_n_0_[7]\,
      R => \msg_count[9]_i_1_n_0\
    );
\msg_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \msg_count[9]_i_2_n_0\,
      D => \msg_count[8]_i_1_n_0\,
      Q => \msg_count_reg_n_0_[8]\,
      R => \msg_count[9]_i_1_n_0\
    );
\msg_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \msg_count[9]_i_2_n_0\,
      D => \msg_count[9]_i_3_n_0\,
      Q => \msg_count_reg_n_0_[9]\,
      R => \msg_count[9]_i_1_n_0\
    );
r_in_message_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => r_in_message_reg_i_2_n_0,
      I1 => \msg_count_reg_n_0_[6]\,
      I2 => r_in_message_reg_i_3_n_0,
      I3 => in_enable,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => r_in_message,
      O => r_in_message_i_1_n_0
    );
r_in_message_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(84),
      I1 => in_message(85),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(86),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(87),
      O => r_in_message_i_19_n_0
    );
r_in_message_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(80),
      I1 => in_message(81),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(82),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(83),
      O => r_in_message_i_20_n_0
    );
r_in_message_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(4),
      I1 => in_message(5),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(6),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(7),
      O => r_in_message_i_21_n_0
    );
r_in_message_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(0),
      I1 => in_message(1),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(2),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(3),
      O => r_in_message_i_22_n_0
    );
r_in_message_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(12),
      I1 => in_message(13),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(14),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(15),
      O => r_in_message_i_23_n_0
    );
r_in_message_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(8),
      I1 => in_message(9),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(10),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(11),
      O => r_in_message_i_24_n_0
    );
r_in_message_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(20),
      I1 => in_message(21),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(22),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(23),
      O => r_in_message_i_25_n_0
    );
r_in_message_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(16),
      I1 => in_message(17),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(18),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(19),
      O => r_in_message_i_26_n_0
    );
r_in_message_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(68),
      I1 => in_message(69),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(70),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(71),
      O => r_in_message_i_27_n_0
    );
r_in_message_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(64),
      I1 => in_message(65),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(66),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(67),
      O => r_in_message_i_28_n_0
    );
r_in_message_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(76),
      I1 => in_message(77),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(78),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(79),
      O => r_in_message_i_29_n_0
    );
r_in_message_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(72),
      I1 => in_message(73),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(74),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(75),
      O => r_in_message_i_30_n_0
    );
r_in_message_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(60),
      I1 => in_message(61),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(62),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(63),
      O => r_in_message_i_31_n_0
    );
r_in_message_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(56),
      I1 => in_message(57),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(58),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(59),
      O => r_in_message_i_32_n_0
    );
r_in_message_i_33: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(28),
      I1 => in_message(29),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(30),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(31),
      O => r_in_message_i_33_n_0
    );
r_in_message_i_34: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(24),
      I1 => in_message(25),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(26),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(27),
      O => r_in_message_i_34_n_0
    );
r_in_message_i_35: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(36),
      I1 => in_message(37),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(38),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(39),
      O => r_in_message_i_35_n_0
    );
r_in_message_i_36: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(32),
      I1 => in_message(33),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(34),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(35),
      O => r_in_message_i_36_n_0
    );
r_in_message_i_37: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(44),
      I1 => in_message(45),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(46),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(47),
      O => r_in_message_i_37_n_0
    );
r_in_message_i_38: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(40),
      I1 => in_message(41),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(42),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(43),
      O => r_in_message_i_38_n_0
    );
r_in_message_i_39: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(52),
      I1 => in_message(53),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(54),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(55),
      O => r_in_message_i_39_n_0
    );
r_in_message_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_in_message_reg_i_8_n_0,
      I1 => r_in_message_reg_i_9_n_0,
      I2 => \msg_count_reg_n_0_[4]\,
      I3 => r_in_message_reg_i_10_n_0,
      I4 => \msg_count_reg_n_0_[3]\,
      I5 => r_in_message_reg_i_11_n_0,
      O => r_in_message_i_4_n_0
    );
r_in_message_i_40: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_message(48),
      I1 => in_message(49),
      I2 => \msg_count_reg_n_0_[1]\,
      I3 => in_message(50),
      I4 => \msg_count_reg_n_0_[0]\,
      I5 => in_message(51),
      O => r_in_message_i_40_n_0
    );
r_in_message_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => r_in_message_reg_i_12_n_0,
      I1 => \msg_count_reg_n_0_[4]\,
      I2 => r_in_message_reg_i_13_n_0,
      I3 => \msg_count_reg_n_0_[3]\,
      I4 => r_in_message_reg_i_8_n_0,
      O => r_in_message_i_5_n_0
    );
r_in_message_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_in_message_reg_i_14_n_0,
      I1 => r_in_message_reg_i_12_n_0,
      I2 => \msg_count_reg_n_0_[4]\,
      I3 => r_in_message_reg_i_13_n_0,
      I4 => \msg_count_reg_n_0_[3]\,
      I5 => r_in_message_reg_i_8_n_0,
      O => r_in_message_i_6_n_0
    );
r_in_message_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_in_message_reg_i_15_n_0,
      I1 => r_in_message_reg_i_16_n_0,
      I2 => \msg_count_reg_n_0_[4]\,
      I3 => r_in_message_reg_i_17_n_0,
      I4 => \msg_count_reg_n_0_[3]\,
      I5 => r_in_message_reg_i_18_n_0,
      O => r_in_message_i_7_n_0
    );
r_in_message_reg: unisim.vcomponents.FDRE
     port map (
      C => in_clk,
      CE => '1',
      D => r_in_message_i_1_n_0,
      Q => r_in_message,
      R => '0'
    );
r_in_message_reg_i_10: unisim.vcomponents.MUXF7
     port map (
      I0 => r_in_message_i_23_n_0,
      I1 => r_in_message_i_24_n_0,
      O => r_in_message_reg_i_10_n_0,
      S => \msg_count_reg_n_0_[2]\
    );
r_in_message_reg_i_11: unisim.vcomponents.MUXF7
     port map (
      I0 => r_in_message_i_25_n_0,
      I1 => r_in_message_i_26_n_0,
      O => r_in_message_reg_i_11_n_0,
      S => \msg_count_reg_n_0_[2]\
    );
r_in_message_reg_i_12: unisim.vcomponents.MUXF7
     port map (
      I0 => r_in_message_i_27_n_0,
      I1 => r_in_message_i_28_n_0,
      O => r_in_message_reg_i_12_n_0,
      S => \msg_count_reg_n_0_[2]\
    );
r_in_message_reg_i_13: unisim.vcomponents.MUXF7
     port map (
      I0 => r_in_message_i_29_n_0,
      I1 => r_in_message_i_30_n_0,
      O => r_in_message_reg_i_13_n_0,
      S => \msg_count_reg_n_0_[2]\
    );
r_in_message_reg_i_14: unisim.vcomponents.MUXF7
     port map (
      I0 => r_in_message_i_31_n_0,
      I1 => r_in_message_i_32_n_0,
      O => r_in_message_reg_i_14_n_0,
      S => \msg_count_reg_n_0_[2]\
    );
r_in_message_reg_i_15: unisim.vcomponents.MUXF7
     port map (
      I0 => r_in_message_i_33_n_0,
      I1 => r_in_message_i_34_n_0,
      O => r_in_message_reg_i_15_n_0,
      S => \msg_count_reg_n_0_[2]\
    );
r_in_message_reg_i_16: unisim.vcomponents.MUXF7
     port map (
      I0 => r_in_message_i_35_n_0,
      I1 => r_in_message_i_36_n_0,
      O => r_in_message_reg_i_16_n_0,
      S => \msg_count_reg_n_0_[2]\
    );
r_in_message_reg_i_17: unisim.vcomponents.MUXF7
     port map (
      I0 => r_in_message_i_37_n_0,
      I1 => r_in_message_i_38_n_0,
      O => r_in_message_reg_i_17_n_0,
      S => \msg_count_reg_n_0_[2]\
    );
r_in_message_reg_i_18: unisim.vcomponents.MUXF7
     port map (
      I0 => r_in_message_i_39_n_0,
      I1 => r_in_message_i_40_n_0,
      O => r_in_message_reg_i_18_n_0,
      S => \msg_count_reg_n_0_[2]\
    );
r_in_message_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => r_in_message_i_4_n_0,
      I1 => r_in_message_i_5_n_0,
      O => r_in_message_reg_i_2_n_0,
      S => \msg_count_reg_n_0_[5]\
    );
r_in_message_reg_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => r_in_message_i_6_n_0,
      I1 => r_in_message_i_7_n_0,
      O => r_in_message_reg_i_3_n_0,
      S => \msg_count_reg_n_0_[5]\
    );
r_in_message_reg_i_8: unisim.vcomponents.MUXF7
     port map (
      I0 => r_in_message_i_19_n_0,
      I1 => r_in_message_i_20_n_0,
      O => r_in_message_reg_i_8_n_0,
      S => \msg_count_reg_n_0_[2]\
    );
r_in_message_reg_i_9: unisim.vcomponents.MUXF7
     port map (
      I0 => r_in_message_i_21_n_0,
      I1 => r_in_message_i_22_n_0,
      O => r_in_message_reg_i_9_n_0,
      S => \msg_count_reg_n_0_[2]\
    );
\r_out_frame_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => r_in_message,
      Q => out_frame(0),
      R => '0'
    );
\r_out_frame_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(9),
      Q => out_frame(10),
      R => '0'
    );
\r_out_frame_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(10),
      Q => out_frame(11),
      R => '0'
    );
\r_out_frame_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(11),
      Q => out_frame(12),
      R => '0'
    );
\r_out_frame_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(12),
      Q => out_frame(13),
      R => '0'
    );
\r_out_frame_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(13),
      Q => out_frame(14),
      R => '0'
    );
\r_out_frame_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(14),
      Q => out_frame(15),
      R => '0'
    );
\r_out_frame_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(15),
      Q => out_frame(16),
      R => '0'
    );
\r_out_frame_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(16),
      Q => out_frame(17),
      R => '0'
    );
\r_out_frame_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(17),
      Q => out_frame(18),
      R => '0'
    );
\r_out_frame_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(18),
      Q => out_frame(19),
      R => '0'
    );
\r_out_frame_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(0),
      Q => out_frame(1),
      R => '0'
    );
\r_out_frame_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(19),
      Q => out_frame(20),
      R => '0'
    );
\r_out_frame_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(20),
      Q => out_frame(21),
      R => '0'
    );
\r_out_frame_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(21),
      Q => out_frame(22),
      R => '0'
    );
\r_out_frame_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(22),
      Q => out_frame(23),
      R => '0'
    );
\r_out_frame_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(1),
      Q => out_frame(2),
      R => '0'
    );
\r_out_frame_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(2),
      Q => out_frame(3),
      R => '0'
    );
\r_out_frame_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(3),
      Q => out_frame(4),
      R => '0'
    );
\r_out_frame_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(4),
      Q => out_frame(5),
      R => '0'
    );
\r_out_frame_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(5),
      Q => out_frame(6),
      R => '0'
    );
\r_out_frame_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(6),
      Q => out_frame(7),
      R => '0'
    );
\r_out_frame_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(7),
      Q => out_frame(8),
      R => '0'
    );
\r_out_frame_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => r_out_frame,
      D => in_frame(8),
      Q => out_frame(9),
      R => '0'
    );
r_out_ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in_enable,
      I2 => \^out_ready\,
      I3 => r_out_ready0,
      O => r_out_ready_i_1_n_0
    );
r_out_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => r_out_ready_i_1_n_0,
      Q => \^out_ready\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_bit_changer_seq_0_0 is
  port (
    in_clk : in STD_LOGIC;
    in_enable : in STD_LOGIC;
    in_frame : in STD_LOGIC_VECTOR ( 23 downto 0 );
    in_message : in STD_LOGIC_VECTOR ( 87 downto 0 );
    out_frame : out STD_LOGIC_VECTOR ( 23 downto 0 );
    out_ready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_bit_changer_seq_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_bit_changer_seq_0_0 : entity is "design_1_bit_changer_seq_0_0,bit_changer_seq,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_bit_changer_seq_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_bit_changer_seq_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_bit_changer_seq_0_0 : entity is "bit_changer_seq,Vivado 2019.2";
end design_1_bit_changer_seq_0_0;

architecture STRUCTURE of design_1_bit_changer_seq_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of in_clk : signal is "xilinx.com:signal:clock:1.0 in_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of in_clk : signal is "XIL_INTERFACENAME in_clk, FREQ_HZ 73727015, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.design_1_bit_changer_seq_0_0_bit_changer_seq
     port map (
      in_clk => in_clk,
      in_enable => in_enable,
      in_frame(22 downto 0) => in_frame(23 downto 1),
      in_message(87 downto 0) => in_message(87 downto 0),
      out_frame(23 downto 0) => out_frame(23 downto 0),
      out_ready => out_ready
    );
end STRUCTURE;
