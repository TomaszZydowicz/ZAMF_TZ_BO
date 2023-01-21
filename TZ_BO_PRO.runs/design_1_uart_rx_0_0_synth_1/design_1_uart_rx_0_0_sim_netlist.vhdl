-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat Jan 21 14:46:01 2023
-- Host        : Dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_uart_rx_0_0_sim_netlist.vhdl
-- Design      : design_1_uart_rx_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx is
  port (
    out_Rx_Byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_Rx_DV : out STD_LOGIC;
    in_Rx_Serial : in STD_LOGIC;
    in_Clock : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx is
  signal \Bit_Index_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \Bit_Index_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \Bit_Index_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \Bit_Index_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \Bit_Index_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \Bit_Index_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \Bit_Index_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \Clock_Count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[10]_i_5_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[10]_i_6_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[10]_i_7_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[9]_i_4_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[9]_i_5_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[9]_i_6_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg[9]_i_7_n_0\ : STD_LOGIC;
  signal \Clock_Count_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \Clock_Count_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \Clock_Count_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \Clock_Count_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \Clock_Count_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \Clock_Count_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \Clock_Count_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \Clock_Count_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \Clock_Count_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \Clock_Count_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \Clock_Count_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \Rx_Byte_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \Rx_Byte_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \Rx_Byte_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \Rx_Byte_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \Rx_Byte_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Rx_Byte_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \Rx_Byte_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \Rx_Byte_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \Rx_Byte_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \Rx_Byte_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \Rx_Byte_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \Rx_Byte_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal Rx_DV_reg_i_1_n_0 : STD_LOGIC;
  signal Rx_DV_reg_i_2_n_0 : STD_LOGIC;
  signal Rx_DV_reg_i_3_n_0 : STD_LOGIC;
  signal Rx_Data_R_reg : STD_LOGIC;
  signal Rx_Data_reg : STD_LOGIC;
  signal \^out_rx_byte\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^out_rx_dv\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 10 downto 2 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Bit_Index_reg[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Bit_Index_reg[2]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Clock_Count_reg[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Clock_Count_reg[10]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Clock_Count_reg[10]_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Clock_Count_reg[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Clock_Count_reg[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Clock_Count_reg[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Clock_Count_reg[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Clock_Count_reg[7]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Clock_Count_reg[7]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Clock_Count_reg[8]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Clock_Count_reg[9]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Clock_Count_reg[9]_i_7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Rx_Byte_reg[7]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Rx_Byte_reg[7]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of Rx_DV_reg_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state[0]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \state[0]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[2]_i_1\ : label is "soft_lutpair4";
begin
  out_Rx_Byte(7 downto 0) <= \^out_rx_byte\(7 downto 0);
  out_Rx_DV <= \^out_rx_dv\;
\Bit_Index_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA90"
    )
        port map (
      I0 => \Bit_Index_reg_reg_n_0_[0]\,
      I1 => Rx_DV_reg_i_2_n_0,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[2]\,
      O => \Bit_Index_reg[0]_i_1_n_0\
    );
\Bit_Index_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA9A00"
    )
        port map (
      I0 => \Bit_Index_reg_reg_n_0_[1]\,
      I1 => Rx_DV_reg_i_2_n_0,
      I2 => \Bit_Index_reg_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[2]\,
      O => \Bit_Index_reg[1]_i_1_n_0\
    );
\Bit_Index_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA900"
    )
        port map (
      I0 => \Bit_Index_reg_reg_n_0_[2]\,
      I1 => Rx_DV_reg_i_2_n_0,
      I2 => \Bit_Index_reg[2]_i_2_n_0\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[2]\,
      O => \Bit_Index_reg[2]_i_1_n_0\
    );
\Bit_Index_reg[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \Bit_Index_reg_reg_n_0_[0]\,
      I1 => \Bit_Index_reg_reg_n_0_[1]\,
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
      INIT => X"7"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[0]\,
      I1 => \Clock_Count_reg[9]_i_6_n_0\,
      O => \Clock_Count_reg[0]_i_1_n_0\
    );
\Clock_Count_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555155555555555"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \Clock_Count_reg_reg_n_0_[2]\,
      I2 => \Clock_Count_reg_reg_n_0_[1]\,
      I3 => \Clock_Count_reg_reg_n_0_[0]\,
      I4 => \Clock_Count_reg[10]_i_3_n_0\,
      I5 => \Clock_Count_reg[10]_i_4_n_0\,
      O => \Clock_Count_reg[10]_i_1_n_0\
    );
\Clock_Count_reg[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0022E2E20000E2C0"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => Rx_DV_reg_i_2_n_0,
      I3 => \Clock_Count_reg[10]_i_5_n_0\,
      I4 => \Clock_Count_reg[10]_i_6_n_0\,
      I5 => Rx_Data_reg,
      O => p_1_in(10)
    );
\Clock_Count_reg[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF7F"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[4]\,
      I1 => \Clock_Count_reg_reg_n_0_[5]\,
      I2 => \Clock_Count_reg_reg_n_0_[8]\,
      I3 => \Clock_Count_reg_reg_n_0_[6]\,
      I4 => \Clock_Count_reg_reg_n_0_[7]\,
      O => \Clock_Count_reg[10]_i_3_n_0\
    );
\Clock_Count_reg[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[9]\,
      I1 => \Clock_Count_reg_reg_n_0_[10]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => Rx_Data_reg,
      I4 => \state_reg_n_0_[1]\,
      I5 => \Clock_Count_reg_reg_n_0_[3]\,
      O => \Clock_Count_reg[10]_i_4_n_0\
    );
\Clock_Count_reg[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[6]\,
      I1 => \Clock_Count_reg_reg_n_0_[10]\,
      I2 => \Clock_Count_reg_reg_n_0_[9]\,
      I3 => \Clock_Count_reg[10]_i_7_n_0\,
      I4 => \Clock_Count_reg[3]_i_2_n_0\,
      I5 => \Clock_Count_reg_reg_n_0_[3]\,
      O => \Clock_Count_reg[10]_i_5_n_0\
    );
\Clock_Count_reg[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5595555555555555"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[10]\,
      I1 => \Clock_Count_reg_reg_n_0_[9]\,
      I2 => \Clock_Count_reg_reg_n_0_[0]\,
      I3 => Rx_DV_reg_i_3_n_0,
      I4 => \Clock_Count_reg_reg_n_0_[7]\,
      I5 => \Clock_Count_reg_reg_n_0_[8]\,
      O => \Clock_Count_reg[10]_i_6_n_0\
    );
\Clock_Count_reg[10]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[5]\,
      I1 => \Clock_Count_reg_reg_n_0_[4]\,
      I2 => \Clock_Count_reg_reg_n_0_[8]\,
      I3 => \Clock_Count_reg_reg_n_0_[7]\,
      O => \Clock_Count_reg[10]_i_7_n_0\
    );
\Clock_Count_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[0]\,
      I1 => \Clock_Count_reg_reg_n_0_[1]\,
      I2 => \Clock_Count_reg[9]_i_6_n_0\,
      O => \Clock_Count_reg[1]_i_1_n_0\
    );
\Clock_Count_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2888AAAA"
    )
        port map (
      I0 => \Clock_Count_reg[2]_i_2_n_0\,
      I1 => \Clock_Count_reg_reg_n_0_[2]\,
      I2 => \Clock_Count_reg_reg_n_0_[0]\,
      I3 => \Clock_Count_reg_reg_n_0_[1]\,
      I4 => \Clock_Count_reg[9]_i_6_n_0\,
      O => p_1_in(2)
    );
\Clock_Count_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F300FFFFAAAAAAAA"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \Clock_Count_reg_reg_n_0_[0]\,
      I2 => Rx_DV_reg_i_3_n_0,
      I3 => \Rx_Byte_reg[7]_i_4_n_0\,
      I4 => \Rx_Byte_reg[7]_i_5_n_0\,
      I5 => \state_reg_n_0_[1]\,
      O => \Clock_Count_reg[2]_i_2_n_0\
    );
\Clock_Count_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D80000D8D8D8D8D8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => Rx_DV_reg_i_2_n_0,
      I2 => \state_reg_n_0_[0]\,
      I3 => \Clock_Count_reg_reg_n_0_[3]\,
      I4 => \Clock_Count_reg[3]_i_2_n_0\,
      I5 => \Clock_Count_reg[9]_i_6_n_0\,
      O => p_1_in(3)
    );
\Clock_Count_reg[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[0]\,
      I1 => \Clock_Count_reg_reg_n_0_[1]\,
      I2 => \Clock_Count_reg_reg_n_0_[2]\,
      O => \Clock_Count_reg[3]_i_2_n_0\
    );
\Clock_Count_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FFFFFFFF"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[3]\,
      I1 => \Clock_Count_reg_reg_n_0_[2]\,
      I2 => \Clock_Count_reg_reg_n_0_[1]\,
      I3 => \Clock_Count_reg_reg_n_0_[0]\,
      I4 => \Clock_Count_reg_reg_n_0_[4]\,
      I5 => \Clock_Count_reg[9]_i_6_n_0\,
      O => \Clock_Count_reg[4]_i_1_n_0\
    );
\Clock_Count_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF7555"
    )
        port map (
      I0 => \Clock_Count_reg[9]_i_6_n_0\,
      I1 => \Clock_Count_reg[3]_i_2_n_0\,
      I2 => \Clock_Count_reg_reg_n_0_[3]\,
      I3 => \Clock_Count_reg_reg_n_0_[4]\,
      I4 => \Clock_Count_reg_reg_n_0_[5]\,
      O => \Clock_Count_reg[5]_i_1_n_0\
    );
\Clock_Count_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[6]\,
      I1 => \Clock_Count_reg[3]_i_2_n_0\,
      I2 => \Clock_Count_reg_reg_n_0_[3]\,
      I3 => \Clock_Count_reg_reg_n_0_[4]\,
      I4 => \Clock_Count_reg_reg_n_0_[5]\,
      O => \Clock_Count_reg[6]_i_1_n_0\
    );
\Clock_Count_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000200AAAA02AAAA"
    )
        port map (
      I0 => \Clock_Count_reg[10]_i_1_n_0\,
      I1 => Rx_Data_reg,
      I2 => \Clock_Count_reg[10]_i_5_n_0\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => Rx_DV_reg_i_2_n_0,
      O => \Clock_Count_reg[7]_i_1_n_0\
    );
\Clock_Count_reg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \Clock_Count_reg[7]_i_3_n_0\,
      I1 => \Clock_Count_reg_reg_n_0_[7]\,
      I2 => \Clock_Count_reg[9]_i_6_n_0\,
      O => \Clock_Count_reg[7]_i_2_n_0\
    );
\Clock_Count_reg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[0]\,
      I1 => \Clock_Count_reg[7]_i_4_n_0\,
      I2 => \Clock_Count_reg_reg_n_0_[6]\,
      I3 => \Clock_Count_reg_reg_n_0_[5]\,
      I4 => \Clock_Count_reg_reg_n_0_[2]\,
      I5 => \Clock_Count_reg_reg_n_0_[1]\,
      O => \Clock_Count_reg[7]_i_3_n_0\
    );
\Clock_Count_reg[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[4]\,
      I1 => \Clock_Count_reg_reg_n_0_[3]\,
      O => \Clock_Count_reg[7]_i_4_n_0\
    );
\Clock_Count_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20000020AAAAAAAA"
    )
        port map (
      I0 => \Clock_Count_reg[9]_i_2_n_0\,
      I1 => \Clock_Count_reg[9]_i_3_n_0\,
      I2 => \Clock_Count_reg[9]_i_4_n_0\,
      I3 => \Clock_Count_reg[8]_i_2_n_0\,
      I4 => \Clock_Count_reg_reg_n_0_[8]\,
      I5 => \Clock_Count_reg[9]_i_6_n_0\,
      O => p_1_in(8)
    );
\Clock_Count_reg[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[7]\,
      I1 => Rx_DV_reg_i_3_n_0,
      I2 => \Clock_Count_reg_reg_n_0_[0]\,
      O => \Clock_Count_reg[8]_i_2_n_0\
    );
\Clock_Count_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20000020AAAAAAAA"
    )
        port map (
      I0 => \Clock_Count_reg[9]_i_2_n_0\,
      I1 => \Clock_Count_reg[9]_i_3_n_0\,
      I2 => \Clock_Count_reg[9]_i_4_n_0\,
      I3 => \Clock_Count_reg[9]_i_5_n_0\,
      I4 => \Clock_Count_reg_reg_n_0_[9]\,
      I5 => \Clock_Count_reg[9]_i_6_n_0\,
      O => p_1_in(9)
    );
\Clock_Count_reg[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      O => \Clock_Count_reg[9]_i_2_n_0\
    );
\Clock_Count_reg[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A8A8A800A800A8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \Clock_Count_reg_reg_n_0_[9]\,
      I2 => \Clock_Count_reg_reg_n_0_[10]\,
      I3 => \Rx_Byte_reg[7]_i_4_n_0\,
      I4 => Rx_DV_reg_i_3_n_0,
      I5 => \Clock_Count_reg_reg_n_0_[0]\,
      O => \Clock_Count_reg[9]_i_3_n_0\
    );
\Clock_Count_reg[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \Clock_Count_reg[9]_i_7_n_0\,
      I2 => \Clock_Count_reg[10]_i_7_n_0\,
      I3 => \Clock_Count_reg_reg_n_0_[9]\,
      I4 => \Clock_Count_reg_reg_n_0_[10]\,
      I5 => \Clock_Count_reg_reg_n_0_[6]\,
      O => \Clock_Count_reg[9]_i_4_n_0\
    );
\Clock_Count_reg[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[0]\,
      I1 => Rx_DV_reg_i_3_n_0,
      I2 => \Clock_Count_reg_reg_n_0_[7]\,
      I3 => \Clock_Count_reg_reg_n_0_[8]\,
      O => \Clock_Count_reg[9]_i_5_n_0\
    );
\Clock_Count_reg[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFFFF"
    )
        port map (
      I0 => \Clock_Count_reg[9]_i_7_n_0\,
      I1 => \Clock_Count_reg[10]_i_7_n_0\,
      I2 => \Rx_Byte_reg[7]_i_5_n_0\,
      I3 => \Clock_Count_reg_reg_n_0_[6]\,
      I4 => Rx_Data_reg,
      I5 => \state_reg_n_0_[1]\,
      O => \Clock_Count_reg[9]_i_6_n_0\
    );
\Clock_Count_reg[9]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[3]\,
      I1 => \Clock_Count_reg_reg_n_0_[2]\,
      I2 => \Clock_Count_reg_reg_n_0_[1]\,
      I3 => \Clock_Count_reg_reg_n_0_[0]\,
      O => \Clock_Count_reg[9]_i_7_n_0\
    );
\Clock_Count_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => \Clock_Count_reg[10]_i_1_n_0\,
      D => \Clock_Count_reg[0]_i_1_n_0\,
      Q => \Clock_Count_reg_reg_n_0_[0]\,
      R => \Clock_Count_reg[7]_i_1_n_0\
    );
\Clock_Count_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => \Clock_Count_reg[10]_i_1_n_0\,
      D => p_1_in(10),
      Q => \Clock_Count_reg_reg_n_0_[10]\,
      R => '0'
    );
\Clock_Count_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => \Clock_Count_reg[10]_i_1_n_0\,
      D => \Clock_Count_reg[1]_i_1_n_0\,
      Q => \Clock_Count_reg_reg_n_0_[1]\,
      R => \Clock_Count_reg[7]_i_1_n_0\
    );
\Clock_Count_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => \Clock_Count_reg[10]_i_1_n_0\,
      D => p_1_in(2),
      Q => \Clock_Count_reg_reg_n_0_[2]\,
      R => '0'
    );
\Clock_Count_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => \Clock_Count_reg[10]_i_1_n_0\,
      D => p_1_in(3),
      Q => \Clock_Count_reg_reg_n_0_[3]\,
      R => '0'
    );
\Clock_Count_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => \Clock_Count_reg[10]_i_1_n_0\,
      D => \Clock_Count_reg[4]_i_1_n_0\,
      Q => \Clock_Count_reg_reg_n_0_[4]\,
      R => \Clock_Count_reg[7]_i_1_n_0\
    );
\Clock_Count_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => \Clock_Count_reg[10]_i_1_n_0\,
      D => \Clock_Count_reg[5]_i_1_n_0\,
      Q => \Clock_Count_reg_reg_n_0_[5]\,
      R => \Clock_Count_reg[7]_i_1_n_0\
    );
\Clock_Count_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => \Clock_Count_reg[10]_i_1_n_0\,
      D => \Clock_Count_reg[6]_i_1_n_0\,
      Q => \Clock_Count_reg_reg_n_0_[6]\,
      R => \Clock_Count_reg[7]_i_1_n_0\
    );
\Clock_Count_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => \Clock_Count_reg[10]_i_1_n_0\,
      D => \Clock_Count_reg[7]_i_2_n_0\,
      Q => \Clock_Count_reg_reg_n_0_[7]\,
      R => \Clock_Count_reg[7]_i_1_n_0\
    );
\Clock_Count_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => \Clock_Count_reg[10]_i_1_n_0\,
      D => p_1_in(8),
      Q => \Clock_Count_reg_reg_n_0_[8]\,
      R => '0'
    );
\Clock_Count_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => \Clock_Count_reg[10]_i_1_n_0\,
      D => p_1_in(9),
      Q => \Clock_Count_reg_reg_n_0_[9]\,
      R => '0'
    );
\Rx_Byte_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => Rx_Data_reg,
      I1 => \Bit_Index_reg_reg_n_0_[1]\,
      I2 => \Bit_Index_reg_reg_n_0_[0]\,
      I3 => \Rx_Byte_reg[7]_i_2_n_0\,
      I4 => \Bit_Index_reg_reg_n_0_[2]\,
      I5 => \^out_rx_byte\(0),
      O => \Rx_Byte_reg[0]_i_1_n_0\
    );
\Rx_Byte_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => Rx_Data_reg,
      I1 => \Bit_Index_reg_reg_n_0_[1]\,
      I2 => \Bit_Index_reg_reg_n_0_[0]\,
      I3 => \Rx_Byte_reg[7]_i_2_n_0\,
      I4 => \Bit_Index_reg_reg_n_0_[2]\,
      I5 => \^out_rx_byte\(1),
      O => \Rx_Byte_reg[1]_i_1_n_0\
    );
\Rx_Byte_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => Rx_Data_reg,
      I1 => \Bit_Index_reg_reg_n_0_[0]\,
      I2 => \Bit_Index_reg_reg_n_0_[1]\,
      I3 => \Rx_Byte_reg[7]_i_2_n_0\,
      I4 => \Bit_Index_reg_reg_n_0_[2]\,
      I5 => \^out_rx_byte\(2),
      O => \Rx_Byte_reg[2]_i_1_n_0\
    );
\Rx_Byte_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => Rx_Data_reg,
      I1 => \Bit_Index_reg_reg_n_0_[1]\,
      I2 => \Bit_Index_reg_reg_n_0_[0]\,
      I3 => \Rx_Byte_reg[7]_i_2_n_0\,
      I4 => \Bit_Index_reg_reg_n_0_[2]\,
      I5 => \^out_rx_byte\(3),
      O => \Rx_Byte_reg[3]_i_1_n_0\
    );
\Rx_Byte_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => Rx_Data_reg,
      I1 => \Bit_Index_reg_reg_n_0_[1]\,
      I2 => \Bit_Index_reg_reg_n_0_[0]\,
      I3 => \Bit_Index_reg_reg_n_0_[2]\,
      I4 => \Rx_Byte_reg[7]_i_2_n_0\,
      I5 => \^out_rx_byte\(4),
      O => \Rx_Byte_reg[4]_i_1_n_0\
    );
\Rx_Byte_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Rx_Data_reg,
      I1 => \Bit_Index_reg_reg_n_0_[1]\,
      I2 => \Bit_Index_reg_reg_n_0_[0]\,
      I3 => \Bit_Index_reg_reg_n_0_[2]\,
      I4 => \Rx_Byte_reg[7]_i_2_n_0\,
      I5 => \^out_rx_byte\(5),
      O => \Rx_Byte_reg[5]_i_1_n_0\
    );
\Rx_Byte_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Rx_Data_reg,
      I1 => \Bit_Index_reg_reg_n_0_[0]\,
      I2 => \Bit_Index_reg_reg_n_0_[1]\,
      I3 => \Bit_Index_reg_reg_n_0_[2]\,
      I4 => \Rx_Byte_reg[7]_i_2_n_0\,
      I5 => \^out_rx_byte\(6),
      O => \Rx_Byte_reg[6]_i_1_n_0\
    );
\Rx_Byte_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => Rx_Data_reg,
      I1 => \Bit_Index_reg_reg_n_0_[1]\,
      I2 => \Bit_Index_reg_reg_n_0_[0]\,
      I3 => \Bit_Index_reg_reg_n_0_[2]\,
      I4 => \Rx_Byte_reg[7]_i_2_n_0\,
      I5 => \^out_rx_byte\(7),
      O => \Rx_Byte_reg[7]_i_1_n_0\
    );
\Rx_Byte_reg[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F755FFFFFFFFFFFF"
    )
        port map (
      I0 => \Rx_Byte_reg[7]_i_3_n_0\,
      I1 => \Clock_Count_reg_reg_n_0_[0]\,
      I2 => Rx_DV_reg_i_3_n_0,
      I3 => \Rx_Byte_reg[7]_i_4_n_0\,
      I4 => \Rx_Byte_reg[7]_i_5_n_0\,
      I5 => \state_reg_n_0_[1]\,
      O => \Rx_Byte_reg[7]_i_2_n_0\
    );
\Rx_Byte_reg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      O => \Rx_Byte_reg[7]_i_3_n_0\
    );
\Rx_Byte_reg[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[10]\,
      I1 => \Clock_Count_reg_reg_n_0_[8]\,
      I2 => \Clock_Count_reg_reg_n_0_[7]\,
      O => \Rx_Byte_reg[7]_i_4_n_0\
    );
\Rx_Byte_reg[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[9]\,
      I1 => \Clock_Count_reg_reg_n_0_[10]\,
      O => \Rx_Byte_reg[7]_i_5_n_0\
    );
\Rx_Byte_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => \Rx_Byte_reg[0]_i_1_n_0\,
      Q => \^out_rx_byte\(0),
      R => '0'
    );
\Rx_Byte_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => \Rx_Byte_reg[1]_i_1_n_0\,
      Q => \^out_rx_byte\(1),
      R => '0'
    );
\Rx_Byte_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => \Rx_Byte_reg[2]_i_1_n_0\,
      Q => \^out_rx_byte\(2),
      R => '0'
    );
\Rx_Byte_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => \Rx_Byte_reg[3]_i_1_n_0\,
      Q => \^out_rx_byte\(3),
      R => '0'
    );
\Rx_Byte_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => \Rx_Byte_reg[4]_i_1_n_0\,
      Q => \^out_rx_byte\(4),
      R => '0'
    );
\Rx_Byte_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => \Rx_Byte_reg[5]_i_1_n_0\,
      Q => \^out_rx_byte\(5),
      R => '0'
    );
\Rx_Byte_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => \Rx_Byte_reg[6]_i_1_n_0\,
      Q => \^out_rx_byte\(6),
      R => '0'
    );
\Rx_Byte_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => \Rx_Byte_reg[7]_i_1_n_0\,
      Q => \^out_rx_byte\(7),
      R => '0'
    );
Rx_DV_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF01000"
    )
        port map (
      I0 => Rx_DV_reg_i_2_n_0,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \^out_rx_dv\,
      O => Rx_DV_reg_i_1_n_0
    );
Rx_DV_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000D0000FFFF"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[0]\,
      I1 => Rx_DV_reg_i_3_n_0,
      I2 => \Clock_Count_reg_reg_n_0_[8]\,
      I3 => \Clock_Count_reg_reg_n_0_[7]\,
      I4 => \Clock_Count_reg_reg_n_0_[10]\,
      I5 => \Clock_Count_reg_reg_n_0_[9]\,
      O => Rx_DV_reg_i_2_n_0
    );
Rx_DV_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[1]\,
      I1 => \Clock_Count_reg_reg_n_0_[2]\,
      I2 => \Clock_Count_reg_reg_n_0_[5]\,
      I3 => \Clock_Count_reg_reg_n_0_[6]\,
      I4 => \Clock_Count_reg_reg_n_0_[4]\,
      I5 => \Clock_Count_reg_reg_n_0_[3]\,
      O => Rx_DV_reg_i_3_n_0
    );
Rx_DV_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => Rx_DV_reg_i_1_n_0,
      Q => \^out_rx_dv\,
      R => '0'
    );
Rx_Data_R_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => in_Rx_Serial,
      Q => Rx_Data_R_reg,
      R => '0'
    );
Rx_Data_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => Rx_Data_R_reg,
      Q => Rx_Data_reg,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5444444454444454"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state[0]_i_2_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => Rx_DV_reg_i_2_n_0,
      I5 => \state[0]_i_3_n_0\,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FBFB00FB"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[6]\,
      I1 => \state[1]_i_3_n_0\,
      I2 => \state[0]_i_4_n_0\,
      I3 => Rx_Data_reg,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[1]\,
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \Bit_Index_reg_reg_n_0_[1]\,
      I1 => \Bit_Index_reg_reg_n_0_[0]\,
      I2 => \Bit_Index_reg_reg_n_0_[2]\,
      O => \state[0]_i_3_n_0\
    );
\state[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDFFFF"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[8]\,
      I1 => \Clock_Count_reg_reg_n_0_[7]\,
      I2 => \Clock_Count_reg_reg_n_0_[9]\,
      I3 => \Clock_Count_reg_reg_n_0_[10]\,
      I4 => \state_reg_n_0_[0]\,
      O => \state[0]_i_4_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D0DFD0D0"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => Rx_DV_reg_i_2_n_0,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state[1]_i_2_n_0\,
      I4 => \state[1]_i_3_n_0\,
      I5 => \state_reg_n_0_[2]\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFFFF"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \Rx_Byte_reg[7]_i_5_n_0\,
      I2 => \Clock_Count_reg_reg_n_0_[7]\,
      I3 => \Clock_Count_reg_reg_n_0_[6]\,
      I4 => \Clock_Count_reg_reg_n_0_[8]\,
      I5 => Rx_Data_reg,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \Clock_Count_reg_reg_n_0_[5]\,
      I1 => \Clock_Count_reg_reg_n_0_[4]\,
      I2 => \Clock_Count_reg_reg_n_0_[3]\,
      I3 => \Clock_Count_reg_reg_n_0_[0]\,
      I4 => \Clock_Count_reg_reg_n_0_[1]\,
      I5 => \Clock_Count_reg_reg_n_0_[2]\,
      O => \state[1]_i_3_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => Rx_DV_reg_i_2_n_0,
      I3 => \state_reg_n_0_[1]\,
      O => \state[2]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_Clock,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    in_Clock : in STD_LOGIC;
    in_Rx_Serial : in STD_LOGIC;
    out_Rx_DV : out STD_LOGIC;
    out_Rx_Byte : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_uart_rx_0_0,uart_rx,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uart_rx,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of in_Clock : signal is "xilinx.com:signal:clock:1.0 in_Clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of in_Clock : signal is "XIL_INTERFACENAME in_Clock, FREQ_HZ 73727015, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx
     port map (
      in_Clock => in_Clock,
      in_Rx_Serial => in_Rx_Serial,
      out_Rx_Byte(7 downto 0) => out_Rx_Byte(7 downto 0),
      out_Rx_DV => out_Rx_DV
    );
end STRUCTURE;
