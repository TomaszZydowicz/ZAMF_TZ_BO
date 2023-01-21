-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri Jan 20 18:13:16 2023
-- Host        : Dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Foldery/Studia/MGR/SEM2/ZAMPF/projekt/TZ_BO_PRO/TZ_BO_PRO.srcs/sources_1/bd/design_1/ip/design_1_sample2uart_0_0/design_1_sample2uart_0_0_sim_netlist.vhdl
-- Design      : design_1_sample2uart_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sample2uart_0_0_sample2uart is
  port (
    out_ready_sample_switch_reg_reg_0 : out STD_LOGIC;
    out_uart_frame : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_ready_uart : out STD_LOGIC;
    in_en : in STD_LOGIC;
    tx_busy : in STD_LOGIC;
    in_clk : in STD_LOGIC;
    in_sample : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_sample2uart_0_0_sample2uart : entity is "sample2uart";
end design_1_sample2uart_0_0_sample2uart;

architecture STRUCTURE of design_1_sample2uart_0_0_sample2uart is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal in_sample_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \in_sample_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal one_cykle_delay_couner_i_1_n_0 : STD_LOGIC;
  signal one_cykle_delay_couner_reg_n_0 : STD_LOGIC;
  signal \out_ready__uart_reg_i_1_n_0\ : STD_LOGIC;
  signal \out_ready_sample_switch_reg1__1\ : STD_LOGIC;
  signal out_ready_sample_switch_reg_i_1_n_0 : STD_LOGIC;
  signal out_ready_sample_switch_reg_i_2_n_0 : STD_LOGIC;
  signal \^out_ready_sample_switch_reg_reg_0\ : STD_LOGIC;
  signal \^out_ready_uart\ : STD_LOGIC;
  signal \out_uart_frame_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \out_uart_frame_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \out_uart_frame_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \out_uart_frame_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \out_uart_frame_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \out_uart_frame_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \out_uart_frame_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \out_uart_frame_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \out_uart_frame_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "FIRST_HALF_SAMPLE:001,SECOND_HALF_SAMPLE:011,FIRST_HALF_SAMPLE_WAIT:010,IDLE:000,SECOND_HALF_SAMPLE_WAIT:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "FIRST_HALF_SAMPLE:001,SECOND_HALF_SAMPLE:011,FIRST_HALF_SAMPLE_WAIT:010,IDLE:000,SECOND_HALF_SAMPLE_WAIT:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "FIRST_HALF_SAMPLE:001,SECOND_HALF_SAMPLE:011,FIRST_HALF_SAMPLE_WAIT:010,IDLE:000,SECOND_HALF_SAMPLE_WAIT:100";
  attribute SOFT_HLUTNM of one_cykle_delay_couner_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \out_ready__uart_reg_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of out_ready_sample_switch_reg_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \out_uart_frame_reg[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \out_uart_frame_reg[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \out_uart_frame_reg[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \out_uart_frame_reg[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \out_uart_frame_reg[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \out_uart_frame_reg[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \out_uart_frame_reg[6]_i_1\ : label is "soft_lutpair5";
begin
  out_ready_sample_switch_reg_reg_0 <= \^out_ready_sample_switch_reg_reg_0\;
  out_ready_uart <= \^out_ready_uart\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00003000AA"
    )
        port map (
      I0 => \out_ready_sample_switch_reg1__1\,
      I1 => tx_busy,
      I2 => one_cykle_delay_couner_reg_n_0,
      I3 => state(0),
      I4 => state(1),
      I5 => state(2),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => in_en,
      I1 => tx_busy,
      I2 => \^out_ready_sample_switch_reg_reg_0\,
      O => \out_ready_sample_switch_reg1__1\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C6"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDF000"
    )
        port map (
      I0 => one_cykle_delay_couner_reg_n_0,
      I1 => tx_busy,
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
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
      C => in_clk,
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
      C => in_clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
\in_sample_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => in_en,
      I3 => tx_busy,
      I4 => \^out_ready_sample_switch_reg_reg_0\,
      I5 => state(1),
      O => \in_sample_reg[15]_i_1_n_0\
    );
\in_sample_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \in_sample_reg[15]_i_1_n_0\,
      D => in_sample(0),
      Q => in_sample_reg(0),
      R => '0'
    );
\in_sample_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \in_sample_reg[15]_i_1_n_0\,
      D => in_sample(10),
      Q => in_sample_reg(10),
      R => '0'
    );
\in_sample_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \in_sample_reg[15]_i_1_n_0\,
      D => in_sample(11),
      Q => in_sample_reg(11),
      R => '0'
    );
\in_sample_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \in_sample_reg[15]_i_1_n_0\,
      D => in_sample(12),
      Q => in_sample_reg(12),
      R => '0'
    );
\in_sample_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \in_sample_reg[15]_i_1_n_0\,
      D => in_sample(13),
      Q => in_sample_reg(13),
      R => '0'
    );
\in_sample_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \in_sample_reg[15]_i_1_n_0\,
      D => in_sample(14),
      Q => in_sample_reg(14),
      R => '0'
    );
\in_sample_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \in_sample_reg[15]_i_1_n_0\,
      D => in_sample(15),
      Q => in_sample_reg(15),
      R => '0'
    );
\in_sample_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \in_sample_reg[15]_i_1_n_0\,
      D => in_sample(1),
      Q => in_sample_reg(1),
      R => '0'
    );
\in_sample_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \in_sample_reg[15]_i_1_n_0\,
      D => in_sample(2),
      Q => in_sample_reg(2),
      R => '0'
    );
\in_sample_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \in_sample_reg[15]_i_1_n_0\,
      D => in_sample(3),
      Q => in_sample_reg(3),
      R => '0'
    );
\in_sample_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \in_sample_reg[15]_i_1_n_0\,
      D => in_sample(4),
      Q => in_sample_reg(4),
      R => '0'
    );
\in_sample_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \in_sample_reg[15]_i_1_n_0\,
      D => in_sample(5),
      Q => in_sample_reg(5),
      R => '0'
    );
\in_sample_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \in_sample_reg[15]_i_1_n_0\,
      D => in_sample(6),
      Q => in_sample_reg(6),
      R => '0'
    );
\in_sample_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \in_sample_reg[15]_i_1_n_0\,
      D => in_sample(7),
      Q => in_sample_reg(7),
      R => '0'
    );
\in_sample_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \in_sample_reg[15]_i_1_n_0\,
      D => in_sample(8),
      Q => in_sample_reg(8),
      R => '0'
    );
\in_sample_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \in_sample_reg[15]_i_1_n_0\,
      D => in_sample(9),
      Q => in_sample_reg(9),
      R => '0'
    );
one_cykle_delay_couner_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0014"
    )
        port map (
      I0 => tx_busy,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => one_cykle_delay_couner_reg_n_0,
      O => one_cykle_delay_couner_i_1_n_0
    );
one_cykle_delay_couner_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => one_cykle_delay_couner_i_1_n_0,
      Q => one_cykle_delay_couner_reg_n_0,
      R => '0'
    );
\out_ready__uart_reg_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB0A"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => \^out_ready_uart\,
      O => \out_ready__uart_reg_i_1_n_0\
    );
\out_ready__uart_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => \out_ready__uart_reg_i_1_n_0\,
      Q => \^out_ready_uart\,
      R => '0'
    );
out_ready_sample_switch_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDDFFFF33F30000"
    )
        port map (
      I0 => in_en,
      I1 => state(2),
      I2 => one_cykle_delay_couner_reg_n_0,
      I3 => tx_busy,
      I4 => out_ready_sample_switch_reg_i_2_n_0,
      I5 => \^out_ready_sample_switch_reg_reg_0\,
      O => out_ready_sample_switch_reg_i_1_n_0
    );
out_ready_sample_switch_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => out_ready_sample_switch_reg_i_2_n_0
    );
out_ready_sample_switch_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => out_ready_sample_switch_reg_i_1_n_0,
      Q => \^out_ready_sample_switch_reg_reg_0\,
      R => '0'
    );
\out_uart_frame_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_sample_reg(8),
      I1 => state(1),
      I2 => in_sample_reg(0),
      O => \out_uart_frame_reg[0]_i_1_n_0\
    );
\out_uart_frame_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_sample_reg(9),
      I1 => state(1),
      I2 => in_sample_reg(1),
      O => \out_uart_frame_reg[1]_i_1_n_0\
    );
\out_uart_frame_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_sample_reg(10),
      I1 => state(1),
      I2 => in_sample_reg(2),
      O => \out_uart_frame_reg[2]_i_1_n_0\
    );
\out_uart_frame_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_sample_reg(11),
      I1 => state(1),
      I2 => in_sample_reg(3),
      O => \out_uart_frame_reg[3]_i_1_n_0\
    );
\out_uart_frame_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_sample_reg(12),
      I1 => state(1),
      I2 => in_sample_reg(4),
      O => \out_uart_frame_reg[4]_i_1_n_0\
    );
\out_uart_frame_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_sample_reg(13),
      I1 => state(1),
      I2 => in_sample_reg(5),
      O => \out_uart_frame_reg[5]_i_1_n_0\
    );
\out_uart_frame_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_sample_reg(14),
      I1 => state(1),
      I2 => in_sample_reg(6),
      O => \out_uart_frame_reg[6]_i_1_n_0\
    );
\out_uart_frame_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      O => \out_uart_frame_reg[7]_i_1_n_0\
    );
\out_uart_frame_reg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_sample_reg(15),
      I1 => state(1),
      I2 => in_sample_reg(7),
      O => \out_uart_frame_reg[7]_i_2_n_0\
    );
\out_uart_frame_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \out_uart_frame_reg[7]_i_1_n_0\,
      D => \out_uart_frame_reg[0]_i_1_n_0\,
      Q => out_uart_frame(0),
      R => '0'
    );
\out_uart_frame_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \out_uart_frame_reg[7]_i_1_n_0\,
      D => \out_uart_frame_reg[1]_i_1_n_0\,
      Q => out_uart_frame(1),
      R => '0'
    );
\out_uart_frame_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \out_uart_frame_reg[7]_i_1_n_0\,
      D => \out_uart_frame_reg[2]_i_1_n_0\,
      Q => out_uart_frame(2),
      R => '0'
    );
\out_uart_frame_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \out_uart_frame_reg[7]_i_1_n_0\,
      D => \out_uart_frame_reg[3]_i_1_n_0\,
      Q => out_uart_frame(3),
      R => '0'
    );
\out_uart_frame_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \out_uart_frame_reg[7]_i_1_n_0\,
      D => \out_uart_frame_reg[4]_i_1_n_0\,
      Q => out_uart_frame(4),
      R => '0'
    );
\out_uart_frame_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \out_uart_frame_reg[7]_i_1_n_0\,
      D => \out_uart_frame_reg[5]_i_1_n_0\,
      Q => out_uart_frame(5),
      R => '0'
    );
\out_uart_frame_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \out_uart_frame_reg[7]_i_1_n_0\,
      D => \out_uart_frame_reg[6]_i_1_n_0\,
      Q => out_uart_frame(6),
      R => '0'
    );
\out_uart_frame_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => \out_uart_frame_reg[7]_i_1_n_0\,
      D => \out_uart_frame_reg[7]_i_2_n_0\,
      Q => out_uart_frame(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sample2uart_0_0 is
  port (
    in_clk : in STD_LOGIC;
    tx_busy : in STD_LOGIC;
    in_en : in STD_LOGIC;
    in_sample : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_uart_frame : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_ready_uart : out STD_LOGIC;
    out_ready_sample_switch : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_sample2uart_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_sample2uart_0_0 : entity is "design_1_sample2uart_0_0,sample2uart,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_sample2uart_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_sample2uart_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_sample2uart_0_0 : entity is "sample2uart,Vivado 2019.2";
end design_1_sample2uart_0_0;

architecture STRUCTURE of design_1_sample2uart_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of in_clk : signal is "xilinx.com:signal:clock:1.0 in_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of in_clk : signal is "XIL_INTERFACENAME in_clk, FREQ_HZ 73727015, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.design_1_sample2uart_0_0_sample2uart
     port map (
      in_clk => in_clk,
      in_en => in_en,
      in_sample(15 downto 0) => in_sample(15 downto 0),
      out_ready_sample_switch_reg_reg_0 => out_ready_sample_switch,
      out_ready_uart => out_ready_uart,
      out_uart_frame(7 downto 0) => out_uart_frame(7 downto 0),
      tx_busy => tx_busy
    );
end STRUCTURE;
