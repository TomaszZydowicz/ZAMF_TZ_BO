
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# bit_changer_seq, i2s, sample2uart, sample_switch, uart2sample, uart_rx, uart_tx

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z010clg400-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]

  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]


  # Create ports
  set ac_bclk [ create_bd_port -dir O ac_bclk ]
  set ac_mclk [ create_bd_port -dir O ac_mclk ]
  set ac_muten [ create_bd_port -dir O ac_muten ]
  set ac_pbdat [ create_bd_port -dir O ac_pbdat ]
  set ac_pblrc [ create_bd_port -dir O ac_pblrc ]
  set eth_rst_b [ create_bd_port -dir O -from 0 -to 0 eth_rst_b ]
  set rx_pmode [ create_bd_port -dir I -type data rx_pmode ]
  set sysclk [ create_bd_port -dir I -type clk -freq_hz 125000000 sysclk ]
  set tx_pmode [ create_bd_port -dir O -type data tx_pmode ]

  # Create instance: bit_changer_seq_0, and set properties
  set block_name bit_changer_seq
  set block_cell_name bit_changer_seq_0
  if { [catch {set bit_changer_seq_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $bit_changer_seq_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {80.0} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {289.367} \
   CONFIG.CLKOUT1_PHASE_ERROR {351.367} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {73.728} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.JITTER_SEL {No_Jitter} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {52.125} \
   CONFIG.MMCM_CLKIN1_PERIOD {8.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {12.625} \
   CONFIG.MMCM_CLKOUT0_DUTY_CYCLE {0.500} \
   CONFIG.MMCM_DIVCLK_DIVIDE {7} \
   CONFIG.PRIM_IN_FREQ {125} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_MIN_POWER {false} \
   CONFIG.USE_RESET {false} \
   CONFIG.USE_SAFE_CLOCK_STARTUP {false} \
 ] $clk_wiz_0

  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Data_Count_Width {9} \
   CONFIG.Empty_Threshold_Assert_Value {509} \
   CONFIG.Empty_Threshold_Negate_Value {510} \
   CONFIG.Full_Threshold_Assert_Value {510} \
   CONFIG.Full_Threshold_Negate_Value {509} \
   CONFIG.Input_Data_Width {24} \
   CONFIG.Input_Depth {512} \
   CONFIG.Output_Data_Width {24} \
   CONFIG.Output_Depth {512} \
   CONFIG.Programmable_Empty_Type {Single_Programmable_Empty_Threshold_Constant} \
   CONFIG.Read_Data_Count_Width {9} \
   CONFIG.Reset_Pin {false} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Use_Dout_Reset {false} \
   CONFIG.Write_Data_Count_Width {9} \
 ] $fifo_generator_0

  # Create instance: i2s_0, and set properties
  set block_name i2s
  set block_cell_name i2s_0
  if { [catch {set i2s_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $i2s_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_EN_EMIO_I2C1 {1} \
   CONFIG.PCW_EN_I2C1 {1} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_GRP_INT_ENABLE {1} \
   CONFIG.PCW_I2C1_GRP_INT_IO {EMIO} \
   CONFIG.PCW_I2C1_I2C1_IO {EMIO} \
   CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {111.111115} \
 ] $processing_system7_0

  # Create instance: sample2uart_0, and set properties
  set block_name sample2uart
  set block_cell_name sample2uart_0
  if { [catch {set sample2uart_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sample2uart_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: sample_switch_0, and set properties
  set block_name sample_switch
  set block_cell_name sample_switch_0
  if { [catch {set sample_switch_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sample_switch_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: uart2sample_0, and set properties
  set block_name uart2sample
  set block_cell_name uart2sample_0
  if { [catch {set uart2sample_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $uart2sample_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: uart_rx_0, and set properties
  set block_name uart_rx
  set block_cell_name uart_rx_0
  if { [catch {set uart_rx_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $uart_rx_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: uart_tx_0, and set properties
  set block_name uart_tx
  set block_cell_name uart_tx_0
  if { [catch {set uart_tx_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $uart_tx_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {91195452899772103062802502} \
   CONFIG.CONST_WIDTH {88} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
   CONFIG.CONST_WIDTH {2} \
 ] $xlconstant_1

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_2

  # Create interface connections
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]

  # Create port connections
  connect_bd_net -net bit_changer_seq_0_out_frame [get_bd_pins bit_changer_seq_0/out_frame] [get_bd_pins fifo_generator_0/din]
  connect_bd_net -net bit_changer_seq_0_out_ready [get_bd_pins bit_changer_seq_0/out_ready] [get_bd_pins fifo_generator_0/wr_en]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins bit_changer_seq_0/in_clk] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins fifo_generator_0/clk] [get_bd_pins i2s_0/in_clk] [get_bd_pins sample2uart_0/in_clk] [get_bd_pins sample_switch_0/in_clk] [get_bd_pins uart2sample_0/in_clk] [get_bd_pins uart_rx_0/in_Clock] [get_bd_pins uart_tx_0/in_Clock]
  connect_bd_net -net fifo_generator_0_dout [get_bd_pins fifo_generator_0/dout] [get_bd_pins sample_switch_0/in_sample]
  connect_bd_net -net fifo_generator_0_empty [get_bd_pins fifo_generator_0/empty] [get_bd_pins sample_switch_0/in_fifo_empty]
  connect_bd_net -net fifo_generator_0_prog_empty [get_bd_pins fifo_generator_0/prog_empty] [get_bd_pins sample_switch_0/in_fifo_prog_empty]
  connect_bd_net -net i2s_0_out_BLCK [get_bd_ports ac_bclk] [get_bd_pins i2s_0/out_BLCK]
  connect_bd_net -net i2s_0_out_MCLK [get_bd_ports ac_mclk] [get_bd_pins i2s_0/out_MCLK]
  connect_bd_net -net i2s_0_out_MUTE [get_bd_ports ac_muten] [get_bd_pins i2s_0/out_MUTE]
  connect_bd_net -net i2s_0_out_PBDAT [get_bd_ports ac_pbdat] [get_bd_pins i2s_0/out_PBDAT]
  connect_bd_net -net i2s_0_out_PBLRC [get_bd_ports ac_pblrc] [get_bd_pins i2s_0/out_PBLRC]
  connect_bd_net -net i2s_0_out_ready [get_bd_pins i2s_0/out_ready] [get_bd_pins sample_switch_0/in_i2s_ready]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK]
  connect_bd_net -net rx_pmode_1 [get_bd_ports rx_pmode] [get_bd_pins uart_rx_0/in_Rx_Serial]
  connect_bd_net -net sample2uart_0_out_ready_sample_switch [get_bd_pins sample2uart_0/out_ready_sample_switch] [get_bd_pins sample_switch_0/in_sample2uart_ready]
  connect_bd_net -net sample2uart_0_out_ready_uart [get_bd_pins sample2uart_0/out_ready_uart] [get_bd_pins uart_tx_0/in_Tx_DV]
  connect_bd_net -net sample2uart_0_out_uart_frame [get_bd_pins sample2uart_0/out_uart_frame] [get_bd_pins uart_tx_0/in_Tx_Byte]
  connect_bd_net -net sample_switch_0_fifo_en [get_bd_pins fifo_generator_0/rd_en] [get_bd_pins sample_switch_0/fifo_en]
  connect_bd_net -net sample_switch_0_i2s441kH_en [get_bd_pins i2s_0/in_en] [get_bd_pins sample_switch_0/i2s441kH_en]
  connect_bd_net -net sample_switch_0_out_i2s441kH_sample [get_bd_pins i2s_0/sample] [get_bd_pins sample_switch_0/out_i2s441kH_sample]
  connect_bd_net -net sample_switch_0_out_uart_sample [get_bd_pins sample2uart_0/in_sample] [get_bd_pins sample_switch_0/out_uart_sample]
  connect_bd_net -net sample_switch_0_sample2uart_en [get_bd_pins sample2uart_0/in_en] [get_bd_pins sample_switch_0/sample2uart_en]
  connect_bd_net -net sysclk_1 [get_bd_ports sysclk] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net uart2sample_0_out_frame [get_bd_pins bit_changer_seq_0/in_frame] [get_bd_pins uart2sample_0/out_frame]
  connect_bd_net -net uart2sample_0_out_ready [get_bd_pins bit_changer_seq_0/in_enable] [get_bd_pins uart2sample_0/out_ready]
  connect_bd_net -net uart_rx_0_out_Rx_Byte [get_bd_pins uart2sample_0/in_uart_frame] [get_bd_pins uart_rx_0/out_Rx_Byte]
  connect_bd_net -net uart_rx_0_out_Rx_DV [get_bd_pins uart2sample_0/in_uart_ready] [get_bd_pins uart_rx_0/out_Rx_DV]
  connect_bd_net -net uart_tx_0_out_Tx_Active [get_bd_pins sample2uart_0/tx_busy] [get_bd_pins uart_tx_0/out_Tx_Active]
  connect_bd_net -net uart_tx_0_out_Tx_Serial [get_bd_ports tx_pmode] [get_bd_pins uart_tx_0/out_Tx_Serial]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins bit_changer_seq_0/in_message] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins sample_switch_0/in_mode] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_ports eth_rst_b] [get_bd_pins xlconstant_2/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


