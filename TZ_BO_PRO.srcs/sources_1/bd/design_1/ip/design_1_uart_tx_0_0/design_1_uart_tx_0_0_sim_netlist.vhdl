-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat Jan 21 14:46:43 2023
-- Host        : Dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Foldery/Studia/MGR/SEM2/ZAMPF/projekt/TZ_BO_PRO/TZ_BO_PRO.srcs/sources_1/bd/design_1/ip/design_1_uart_tx_0_0/design_1_uart_tx_0_0_sim_netlist.vhdl
-- Design      : design_1_uart_tx_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_tx_0_0_uart_tx is
  port (
    out_Tx_Active : out STD_LOGIC;
    out_Tx_Serial : out STD_LOGIC;
    out_Tx_Done : out STD_LOGIC;
    in_Tx_DV : in STD_LOGIC;
    in_Clock : in STD_LOGIC;
    in_Tx_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_tx_0_0_uart_tx : entity is "uart_tx";
end design_1_uart_tx_0_0_uart_tx;

architecture STRUCTURE of design_1_uart_tx_0_0_uart_tx is
  signal \Bit_Index_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \Bit_Index_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \Bit_Index_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \Bit_Index_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \Bit_Index_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \Bit_Index_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \Bit_Index_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal Clock_Count_reg : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal Clock_Count_reg0 : STD_LOGIC;
  signal \Clock_Count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[9]_i_4_n_0\ : STD_LOGIC;
  signal Clock_Count_reg_0 : STD_LOGIC;
  signal Clock_Count_reg_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal Tx_Active_reg_i_1_n_0 : STD_LOGIC;
  signal Tx_Active_reg_i_2_n_0 : STD_LOGIC;
  signal Tx_Active_reg_i_3_n_0 : STD_LOGIC;
  signal Tx_Data_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Tx_Data_reg_1 : STD_LOGIC;
  signal Tx_Done_reg_i_1_n_0 : STD_LOGIC;
  signal \^out_tx_active\ : STD_LOGIC;
  signal \^out_tx_done\ : STD_LOGIC;
  signal \^out_tx_serial\ : STD_LOGIC;
  signal out_Tx_Serial_i_1_n_0 : STD_LOGIC;
  signal out_Tx_Serial_i_3_n_0 : STD_LOGIC;
  signal out_Tx_Serial_i_4_n_0 : STD_LOGIC;
  signal out_Tx_Serial_reg_i_2_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Bit_Index_reg[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Clock_Count_reg[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Clock_Count_reg[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Clock_Count_reg[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Clock_Count_reg[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Clock_Count_reg[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Clock_Count_reg[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Clock_Count_reg[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Clock_Count_reg[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "IDLE:000,TX_START_BIT:001,TX_DATA_BITS:010,CLEANUP:100,TX_STOP_BIT:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "IDLE:000,TX_START_BIT:001,TX_DATA_BITS:010,CLEANUP:100,TX_STOP_BIT:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "IDLE:000,TX_START_BIT:001,TX_DATA_BITS:010,CLEANUP:100,TX_STOP_BIT:011";
  attribute SOFT_HLUTNM of Tx_Done_reg_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of out_Tx_Serial_i_1 : label is "soft_lutpair3";
begin
  out_Tx_Active <= \^out_tx_active\;
  out_Tx_Done <= \^out_tx_done\;
  out_Tx_Serial <= \^out_tx_serial\;
\Bit_Index_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA98AAAAAA00"
    )
        port map (
      I0 => \Bit_Index_reg_reg_n_0_[0]\,
      I1 => Tx_Active_reg_i_2_n_0,
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => state(2),
      I4 => state(0),
      I5 => state(1),
      O => \Bit_Index_reg[0]_i_1_n_0\
    );
\Bit_Index_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA9AAA00"
    )
        port map (
      I0 => \Bit_Index_reg_reg_n_0_[1]\,
      I1 => Tx_Active_reg_i_2_n_0,
      I2 => \Bit_Index_reg_reg_n_0_[0]\,
      I3 => \Bit_Index_reg[2]_i_2_n_0\,
      I4 => state(1),
      O => \Bit_Index_reg[1]_i_1_n_0\
    );
\Bit_Index_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA9AAAAAAA0000"
    )
        port map (
      I0 => \Bit_Index_reg_reg_n_0_[2]\,
      I1 => Tx_Active_reg_i_2_n_0,
      I2 => \Bit_Index_reg_reg_n_0_[0]\,
      I3 => \Bit_Index_reg_reg_n_0_[1]\,
      I4 => \Bit_Index_reg[2]_i_2_n_0\,
      I5 => state(1),
      O => \Bit_Index_reg[2]_i_1_n_0\
    );
\Bit_Index_reg[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      O => \Bit_Index_reg[2]_i_2_n_0\
    );
\Bit_Index_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => \Bit_Index_reg[0]_i_1_n_0\,
      Q => \Bit_Index_reg_reg_n_0_[0]\,
      R => '0'
    );
\Bit_Index_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => \Bit_Index_reg[1]_i_1_n_0\,
      Q => \Bit_Index_reg_reg_n_0_[1]\,
      R => '0'
    );
\Bit_Index_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => \Bit_Index_reg[2]_i_1_n_0\,
      Q => \Bit_Index_reg_reg_n_0_[2]\,
      R => '0'
    );
\Clock_Count_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Tx_Active_reg_i_2_n_0,
      I1 => Clock_Count_reg_reg(0),
      O => \Clock_Count_reg[0]_i_1_n_0\
    );
\Clock_Count_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => Clock_Count_reg_reg(1),
      I1 => Clock_Count_reg_reg(0),
      I2 => Tx_Active_reg_i_2_n_0,
      O => Clock_Count_reg(1)
    );
\Clock_Count_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => Clock_Count_reg_reg(2),
      I1 => Clock_Count_reg_reg(1),
      I2 => Clock_Count_reg_reg(0),
      I3 => Tx_Active_reg_i_2_n_0,
      O => Clock_Count_reg(2)
    );
\Clock_Count_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => Clock_Count_reg_reg(3),
      I1 => Clock_Count_reg_reg(2),
      I2 => Clock_Count_reg_reg(0),
      I3 => Clock_Count_reg_reg(1),
      I4 => Tx_Active_reg_i_2_n_0,
      O => Clock_Count_reg(3)
    );
\Clock_Count_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => Clock_Count_reg_reg(4),
      I1 => Clock_Count_reg_reg(3),
      I2 => Clock_Count_reg_reg(1),
      I3 => Clock_Count_reg_reg(0),
      I4 => Clock_Count_reg_reg(2),
      I5 => Tx_Active_reg_i_2_n_0,
      O => Clock_Count_reg(4)
    );
\Clock_Count_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => Clock_Count_reg_reg(5),
      I1 => \Clock_Count_reg[5]_i_2_n_0\,
      I2 => Tx_Active_reg_i_2_n_0,
      O => Clock_Count_reg(5)
    );
\Clock_Count_reg[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => Clock_Count_reg_reg(4),
      I1 => Clock_Count_reg_reg(2),
      I2 => Clock_Count_reg_reg(0),
      I3 => Clock_Count_reg_reg(1),
      I4 => Clock_Count_reg_reg(3),
      O => \Clock_Count_reg[5]_i_2_n_0\
    );
\Clock_Count_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => Clock_Count_reg_reg(6),
      I1 => \Clock_Count_reg[9]_i_4_n_0\,
      I2 => Tx_Active_reg_i_2_n_0,
      O => Clock_Count_reg(6)
    );
\Clock_Count_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => Clock_Count_reg_reg(7),
      I1 => Clock_Count_reg_reg(6),
      I2 => \Clock_Count_reg[9]_i_4_n_0\,
      I3 => Tx_Active_reg_i_2_n_0,
      O => Clock_Count_reg(7)
    );
\Clock_Count_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => Clock_Count_reg_reg(8),
      I1 => Clock_Count_reg_reg(7),
      I2 => \Clock_Count_reg[9]_i_4_n_0\,
      I3 => Clock_Count_reg_reg(6),
      I4 => Tx_Active_reg_i_2_n_0,
      O => Clock_Count_reg(8)
    );
\Clock_Count_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => Clock_Count_reg0
    );
\Clock_Count_reg[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => Clock_Count_reg_0
    );
\Clock_Count_reg[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => Clock_Count_reg_reg(9),
      I1 => Clock_Count_reg_reg(8),
      I2 => Clock_Count_reg_reg(6),
      I3 => \Clock_Count_reg[9]_i_4_n_0\,
      I4 => Clock_Count_reg_reg(7),
      I5 => Tx_Active_reg_i_2_n_0,
      O => Clock_Count_reg(9)
    );
\Clock_Count_reg[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => Clock_Count_reg_reg(5),
      I1 => Clock_Count_reg_reg(3),
      I2 => Clock_Count_reg_reg(1),
      I3 => Clock_Count_reg_reg(0),
      I4 => Clock_Count_reg_reg(2),
      I5 => Clock_Count_reg_reg(4),
      O => \Clock_Count_reg[9]_i_4_n_0\
    );
\Clock_Count_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => Clock_Count_reg_0,
      D => \Clock_Count_reg[0]_i_1_n_0\,
      Q => Clock_Count_reg_reg(0),
      R => Clock_Count_reg0
    );
\Clock_Count_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => Clock_Count_reg_0,
      D => Clock_Count_reg(1),
      Q => Clock_Count_reg_reg(1),
      R => Clock_Count_reg0
    );
\Clock_Count_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => Clock_Count_reg_0,
      D => Clock_Count_reg(2),
      Q => Clock_Count_reg_reg(2),
      R => Clock_Count_reg0
    );
\Clock_Count_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => Clock_Count_reg_0,
      D => Clock_Count_reg(3),
      Q => Clock_Count_reg_reg(3),
      R => Clock_Count_reg0
    );
\Clock_Count_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => Clock_Count_reg_0,
      D => Clock_Count_reg(4),
      Q => Clock_Count_reg_reg(4),
      R => Clock_Count_reg0
    );
\Clock_Count_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => Clock_Count_reg_0,
      D => Clock_Count_reg(5),
      Q => Clock_Count_reg_reg(5),
      R => Clock_Count_reg0
    );
\Clock_Count_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => Clock_Count_reg_0,
      D => Clock_Count_reg(6),
      Q => Clock_Count_reg_reg(6),
      R => Clock_Count_reg0
    );
\Clock_Count_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => Clock_Count_reg_0,
      D => Clock_Count_reg(7),
      Q => Clock_Count_reg_reg(7),
      R => Clock_Count_reg0
    );
\Clock_Count_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => Clock_Count_reg_0,
      D => Clock_Count_reg(8),
      Q => Clock_Count_reg_reg(8),
      R => Clock_Count_reg0
    );
\Clock_Count_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => Clock_Count_reg_0,
      D => Clock_Count_reg(9),
      Q => Clock_Count_reg_reg(9),
      R => Clock_Count_reg0
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0E2C3E2"
    )
        port map (
      I0 => in_Tx_DV,
      I1 => state(0),
      I2 => Tx_Active_reg_i_2_n_0,
      I3 => state(1),
      I4 => \FSM_sequential_state[0]_i_2_n_0\,
      I5 => state(2),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \Bit_Index_reg_reg_n_0_[2]\,
      I1 => \Bit_Index_reg_reg_n_0_[1]\,
      I2 => \Bit_Index_reg_reg_n_0_[0]\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D2"
    )
        port map (
      I0 => state(0),
      I1 => Tx_Active_reg_i_2_n_0,
      I2 => state(1),
      I3 => state(2),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => state(0),
      I1 => Tx_Active_reg_i_2_n_0,
      I2 => state(1),
      I3 => state(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
Tx_Active_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBFF00000030"
    )
        port map (
      I0 => Tx_Active_reg_i_2_n_0,
      I1 => state(0),
      I2 => in_Tx_DV,
      I3 => state(1),
      I4 => state(2),
      I5 => \^out_tx_active\,
      O => Tx_Active_reg_i_1_n_0
    );
Tx_Active_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0111FFFF"
    )
        port map (
      I0 => Clock_Count_reg_reg(7),
      I1 => Clock_Count_reg_reg(8),
      I2 => Tx_Active_reg_i_3_n_0,
      I3 => Clock_Count_reg_reg(0),
      I4 => Clock_Count_reg_reg(9),
      O => Tx_Active_reg_i_2_n_0
    );
Tx_Active_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => Clock_Count_reg_reg(2),
      I1 => Clock_Count_reg_reg(1),
      I2 => Clock_Count_reg_reg(5),
      I3 => Clock_Count_reg_reg(6),
      I4 => Clock_Count_reg_reg(3),
      I5 => Clock_Count_reg_reg(4),
      O => Tx_Active_reg_i_3_n_0
    );
Tx_Active_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => Tx_Active_reg_i_1_n_0,
      Q => \^out_tx_active\,
      R => '0'
    );
\Tx_Data_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => in_Tx_DV,
      I3 => state(1),
      O => Tx_Data_reg_1
    );
\Tx_Data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => Tx_Data_reg_1,
      D => in_Tx_Byte(0),
      Q => Tx_Data_reg(0),
      R => '0'
    );
\Tx_Data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => Tx_Data_reg_1,
      D => in_Tx_Byte(1),
      Q => Tx_Data_reg(1),
      R => '0'
    );
\Tx_Data_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => Tx_Data_reg_1,
      D => in_Tx_Byte(2),
      Q => Tx_Data_reg(2),
      R => '0'
    );
\Tx_Data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => Tx_Data_reg_1,
      D => in_Tx_Byte(3),
      Q => Tx_Data_reg(3),
      R => '0'
    );
\Tx_Data_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => Tx_Data_reg_1,
      D => in_Tx_Byte(4),
      Q => Tx_Data_reg(4),
      R => '0'
    );
\Tx_Data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => Tx_Data_reg_1,
      D => in_Tx_Byte(5),
      Q => Tx_Data_reg(5),
      R => '0'
    );
\Tx_Data_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => Tx_Data_reg_1,
      D => in_Tx_Byte(6),
      Q => Tx_Data_reg(6),
      R => '0'
    );
\Tx_Data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => Tx_Data_reg_1,
      D => in_Tx_Byte(7),
      Q => Tx_Data_reg(7),
      R => '0'
    );
Tx_Done_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFA100A"
    )
        port map (
      I0 => state(2),
      I1 => Tx_Active_reg_i_2_n_0,
      I2 => state(0),
      I3 => state(1),
      I4 => \^out_tx_done\,
      O => Tx_Done_reg_i_1_n_0
    );
Tx_Done_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => Tx_Done_reg_i_1_n_0,
      Q => \^out_tx_done\,
      R => '0'
    );
out_Tx_Serial_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB8BB88B"
    )
        port map (
      I0 => \^out_tx_serial\,
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      I4 => out_Tx_Serial_reg_i_2_n_0,
      O => out_Tx_Serial_i_1_n_0
    );
out_Tx_Serial_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Tx_Data_reg(3),
      I1 => Tx_Data_reg(2),
      I2 => \Bit_Index_reg_reg_n_0_[1]\,
      I3 => Tx_Data_reg(1),
      I4 => \Bit_Index_reg_reg_n_0_[0]\,
      I5 => Tx_Data_reg(0),
      O => out_Tx_Serial_i_3_n_0
    );
out_Tx_Serial_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Tx_Data_reg(7),
      I1 => Tx_Data_reg(6),
      I2 => \Bit_Index_reg_reg_n_0_[1]\,
      I3 => Tx_Data_reg(5),
      I4 => \Bit_Index_reg_reg_n_0_[0]\,
      I5 => Tx_Data_reg(4),
      O => out_Tx_Serial_i_4_n_0
    );
out_Tx_Serial_reg: unisim.vcomponents.FDRE
     port map (
      C => in_Clock,
      CE => '1',
      D => out_Tx_Serial_i_1_n_0,
      Q => \^out_tx_serial\,
      R => '0'
    );
out_Tx_Serial_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => out_Tx_Serial_i_3_n_0,
      I1 => out_Tx_Serial_i_4_n_0,
      O => out_Tx_Serial_reg_i_2_n_0,
      S => \Bit_Index_reg_reg_n_0_[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_tx_0_0 is
  port (
    in_Clock : in STD_LOGIC;
    in_Tx_DV : in STD_LOGIC;
    in_Tx_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out_Tx_Active : out STD_LOGIC;
    out_Tx_Serial : out STD_LOGIC;
    out_Tx_Done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_uart_tx_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_uart_tx_0_0 : entity is "design_1_uart_tx_0_0,uart_tx,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_uart_tx_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_uart_tx_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_uart_tx_0_0 : entity is "uart_tx,Vivado 2019.2";
end design_1_uart_tx_0_0;

architecture STRUCTURE of design_1_uart_tx_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of in_Clock : signal is "xilinx.com:signal:clock:1.0 in_Clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of in_Clock : signal is "XIL_INTERFACENAME in_Clock, FREQ_HZ 73727015, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.design_1_uart_tx_0_0_uart_tx
     port map (
      in_Clock => in_Clock,
      in_Tx_Byte(7 downto 0) => in_Tx_Byte(7 downto 0),
      in_Tx_DV => in_Tx_DV,
      out_Tx_Active => out_Tx_Active,
      out_Tx_Done => out_Tx_Done,
      out_Tx_Serial => out_Tx_Serial
    );
end STRUCTURE;
