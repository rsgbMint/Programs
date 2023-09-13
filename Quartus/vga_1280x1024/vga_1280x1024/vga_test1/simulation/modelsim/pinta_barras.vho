-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/13/2023 00:36:27"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga_simple IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	R : OUT std_logic_vector(9 DOWNTO 0);
	G : OUT std_logic_vector(9 DOWNTO 0);
	B : OUT std_logic_vector(9 DOWNTO 0);
	VGA_BLANK : OUT std_logic;
	VGA_CLK : OUT std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic
	);
END vga_simple;

-- Design Ports Information
-- reset	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R[0]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[3]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[4]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[5]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[6]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[7]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[8]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[9]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- G[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- G[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- G[2]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- G[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- G[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- G[5]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- G[6]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- G[7]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- G[8]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- G[9]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[0]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[4]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[5]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[6]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[8]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[9]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLANK	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_CLK	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_HS	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_VS	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF vga_simple IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_R : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_G : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_BLANK : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL \blique3|altpll_0|sd1|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \blique3|altpll_0|sd1|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \blique3|altpll_0|sd1|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \blique3|altpll_0|sd1|pll~CLK1\ : std_logic;
SIGNAL \blique3|altpll_0|sd1|pll~CLK2\ : std_logic;
SIGNAL \bloque1|cont_pxl[6]~23_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \blique3|altpll_0|sd1|_clk0\ : std_logic;
SIGNAL \blique3|altpll_0|sd1|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \bloque1|cont_pxl[0]~11_combout\ : std_logic;
SIGNAL \bloque1|cont_pxl[5]~21_combout\ : std_logic;
SIGNAL \bloque1|LessThan0~1_combout\ : std_logic;
SIGNAL \bloque1|cont_pxl[3]~17_combout\ : std_logic;
SIGNAL \bloque1|LessThan0~0_combout\ : std_logic;
SIGNAL \bloque1|LessThan0~3_combout\ : std_logic;
SIGNAL \bloque1|cont_pxl[0]~12\ : std_logic;
SIGNAL \bloque1|cont_pxl[1]~13_combout\ : std_logic;
SIGNAL \bloque1|cont_pxl[1]~14\ : std_logic;
SIGNAL \bloque1|cont_pxl[2]~15_combout\ : std_logic;
SIGNAL \bloque1|cont_pxl[2]~16\ : std_logic;
SIGNAL \bloque1|cont_pxl[3]~18\ : std_logic;
SIGNAL \bloque1|cont_pxl[4]~19_combout\ : std_logic;
SIGNAL \bloque1|cont_pxl[4]~20\ : std_logic;
SIGNAL \bloque1|cont_pxl[5]~22\ : std_logic;
SIGNAL \bloque1|cont_pxl[6]~24\ : std_logic;
SIGNAL \bloque1|cont_pxl[7]~25_combout\ : std_logic;
SIGNAL \bloque1|cont_pxl[7]~26\ : std_logic;
SIGNAL \bloque1|cont_pxl[8]~27_combout\ : std_logic;
SIGNAL \bloque1|cont_pxl[8]~28\ : std_logic;
SIGNAL \bloque1|cont_pxl[9]~29_combout\ : std_logic;
SIGNAL \bloque1|LessThan0~2_combout\ : std_logic;
SIGNAL \bloque1|visible_pxl~0_combout\ : std_logic;
SIGNAL \bloque1|cont_pxl[9]~30\ : std_logic;
SIGNAL \bloque1|cont_pxl[10]~31_combout\ : std_logic;
SIGNAL \bloque1|visible_pxl~1_combout\ : std_logic;
SIGNAL \bloque1|visible_pxl~regout\ : std_logic;
SIGNAL \bloque1|cont_pxl\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \bloque1|ALT_INV_visible_pxl~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
R <= ww_R;
G <= ww_G;
B <= ww_B;
VGA_BLANK <= ww_VGA_BLANK;
VGA_CLK <= ww_VGA_CLK;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\blique3|altpll_0|sd1|pll_INCLK_bus\ <= (gnd & \clk~combout\);

\blique3|altpll_0|sd1|_clk0\ <= \blique3|altpll_0|sd1|pll_CLK_bus\(0);
\blique3|altpll_0|sd1|pll~CLK1\ <= \blique3|altpll_0|sd1|pll_CLK_bus\(1);
\blique3|altpll_0|sd1|pll~CLK2\ <= \blique3|altpll_0|sd1|pll_CLK_bus\(2);

\blique3|altpll_0|sd1|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \blique3|altpll_0|sd1|_clk0\);
\bloque1|ALT_INV_visible_pxl~regout\ <= NOT \bloque1|visible_pxl~regout\;

-- Location: LCFF_X25_Y35_N13
\bloque1|cont_pxl[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \blique3|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \bloque1|cont_pxl[6]~23_combout\,
	sclr => \bloque1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloque1|cont_pxl\(6));

-- Location: LCCOMB_X25_Y35_N12
\bloque1|cont_pxl[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloque1|cont_pxl[6]~23_combout\ = (\bloque1|cont_pxl\(6) & (\bloque1|cont_pxl[5]~22\ $ (GND))) # (!\bloque1|cont_pxl\(6) & (!\bloque1|cont_pxl[5]~22\ & VCC))
-- \bloque1|cont_pxl[6]~24\ = CARRY((\bloque1|cont_pxl\(6) & !\bloque1|cont_pxl[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloque1|cont_pxl\(6),
	datad => VCC,
	cin => \bloque1|cont_pxl[5]~22\,
	combout => \bloque1|cont_pxl[6]~23_combout\,
	cout => \bloque1|cont_pxl[6]~24\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PLL_3
\blique3|altpll_0|sd1|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 4,
	c0_initial => 1,
	c0_low => 3,
	c0_mode => "odd",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 4,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 37037,
	inclk1_input_frequency => 37037,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 28,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 5370,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "functional",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	areset => GND,
	inclk => \blique3|altpll_0|sd1|pll_INCLK_bus\,
	clk => \blique3|altpll_0|sd1|pll_CLK_bus\);

-- Location: CLKCTRL_G11
\blique3|altpll_0|sd1|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \blique3|altpll_0|sd1|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \blique3|altpll_0|sd1|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y35_N0
\bloque1|cont_pxl[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloque1|cont_pxl[0]~11_combout\ = \bloque1|cont_pxl\(0) $ (VCC)
-- \bloque1|cont_pxl[0]~12\ = CARRY(\bloque1|cont_pxl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloque1|cont_pxl\(0),
	datad => VCC,
	combout => \bloque1|cont_pxl[0]~11_combout\,
	cout => \bloque1|cont_pxl[0]~12\);

-- Location: LCCOMB_X25_Y35_N10
\bloque1|cont_pxl[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloque1|cont_pxl[5]~21_combout\ = (\bloque1|cont_pxl\(5) & (!\bloque1|cont_pxl[4]~20\)) # (!\bloque1|cont_pxl\(5) & ((\bloque1|cont_pxl[4]~20\) # (GND)))
-- \bloque1|cont_pxl[5]~22\ = CARRY((!\bloque1|cont_pxl[4]~20\) # (!\bloque1|cont_pxl\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloque1|cont_pxl\(5),
	datad => VCC,
	cin => \bloque1|cont_pxl[4]~20\,
	combout => \bloque1|cont_pxl[5]~21_combout\,
	cout => \bloque1|cont_pxl[5]~22\);

-- Location: LCFF_X25_Y35_N11
\bloque1|cont_pxl[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \blique3|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \bloque1|cont_pxl[5]~21_combout\,
	sclr => \bloque1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloque1|cont_pxl\(5));

-- Location: LCCOMB_X25_Y35_N24
\bloque1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloque1|LessThan0~1_combout\ = (!\bloque1|cont_pxl\(6) & (!\bloque1|cont_pxl\(4) & !\bloque1|cont_pxl\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloque1|cont_pxl\(6),
	datac => \bloque1|cont_pxl\(4),
	datad => \bloque1|cont_pxl\(5),
	combout => \bloque1|LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y35_N6
\bloque1|cont_pxl[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloque1|cont_pxl[3]~17_combout\ = (\bloque1|cont_pxl\(3) & (!\bloque1|cont_pxl[2]~16\)) # (!\bloque1|cont_pxl\(3) & ((\bloque1|cont_pxl[2]~16\) # (GND)))
-- \bloque1|cont_pxl[3]~18\ = CARRY((!\bloque1|cont_pxl[2]~16\) # (!\bloque1|cont_pxl\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloque1|cont_pxl\(3),
	datad => VCC,
	cin => \bloque1|cont_pxl[2]~16\,
	combout => \bloque1|cont_pxl[3]~17_combout\,
	cout => \bloque1|cont_pxl[3]~18\);

-- Location: LCFF_X25_Y35_N7
\bloque1|cont_pxl[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \blique3|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \bloque1|cont_pxl[3]~17_combout\,
	sclr => \bloque1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloque1|cont_pxl\(3));

-- Location: LCCOMB_X25_Y35_N22
\bloque1|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloque1|LessThan0~0_combout\ = (!\bloque1|cont_pxl\(8) & (((!\bloque1|cont_pxl\(3)) # (!\bloque1|cont_pxl\(2))) # (!\bloque1|cont_pxl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloque1|cont_pxl\(8),
	datab => \bloque1|cont_pxl\(1),
	datac => \bloque1|cont_pxl\(2),
	datad => \bloque1|cont_pxl\(3),
	combout => \bloque1|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y35_N30
\bloque1|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloque1|LessThan0~3_combout\ = (!\bloque1|LessThan0~2_combout\ & ((!\bloque1|LessThan0~0_combout\) # (!\bloque1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloque1|LessThan0~2_combout\,
	datac => \bloque1|LessThan0~1_combout\,
	datad => \bloque1|LessThan0~0_combout\,
	combout => \bloque1|LessThan0~3_combout\);

-- Location: LCFF_X25_Y35_N1
\bloque1|cont_pxl[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \blique3|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \bloque1|cont_pxl[0]~11_combout\,
	sclr => \bloque1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloque1|cont_pxl\(0));

-- Location: LCCOMB_X25_Y35_N2
\bloque1|cont_pxl[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloque1|cont_pxl[1]~13_combout\ = (\bloque1|cont_pxl\(1) & (!\bloque1|cont_pxl[0]~12\)) # (!\bloque1|cont_pxl\(1) & ((\bloque1|cont_pxl[0]~12\) # (GND)))
-- \bloque1|cont_pxl[1]~14\ = CARRY((!\bloque1|cont_pxl[0]~12\) # (!\bloque1|cont_pxl\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloque1|cont_pxl\(1),
	datad => VCC,
	cin => \bloque1|cont_pxl[0]~12\,
	combout => \bloque1|cont_pxl[1]~13_combout\,
	cout => \bloque1|cont_pxl[1]~14\);

-- Location: LCFF_X25_Y35_N3
\bloque1|cont_pxl[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \blique3|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \bloque1|cont_pxl[1]~13_combout\,
	sclr => \bloque1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloque1|cont_pxl\(1));

-- Location: LCCOMB_X25_Y35_N4
\bloque1|cont_pxl[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloque1|cont_pxl[2]~15_combout\ = (\bloque1|cont_pxl\(2) & (\bloque1|cont_pxl[1]~14\ $ (GND))) # (!\bloque1|cont_pxl\(2) & (!\bloque1|cont_pxl[1]~14\ & VCC))
-- \bloque1|cont_pxl[2]~16\ = CARRY((\bloque1|cont_pxl\(2) & !\bloque1|cont_pxl[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloque1|cont_pxl\(2),
	datad => VCC,
	cin => \bloque1|cont_pxl[1]~14\,
	combout => \bloque1|cont_pxl[2]~15_combout\,
	cout => \bloque1|cont_pxl[2]~16\);

-- Location: LCFF_X25_Y35_N5
\bloque1|cont_pxl[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \blique3|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \bloque1|cont_pxl[2]~15_combout\,
	sclr => \bloque1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloque1|cont_pxl\(2));

-- Location: LCCOMB_X25_Y35_N8
\bloque1|cont_pxl[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloque1|cont_pxl[4]~19_combout\ = (\bloque1|cont_pxl\(4) & (\bloque1|cont_pxl[3]~18\ $ (GND))) # (!\bloque1|cont_pxl\(4) & (!\bloque1|cont_pxl[3]~18\ & VCC))
-- \bloque1|cont_pxl[4]~20\ = CARRY((\bloque1|cont_pxl\(4) & !\bloque1|cont_pxl[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloque1|cont_pxl\(4),
	datad => VCC,
	cin => \bloque1|cont_pxl[3]~18\,
	combout => \bloque1|cont_pxl[4]~19_combout\,
	cout => \bloque1|cont_pxl[4]~20\);

-- Location: LCFF_X25_Y35_N9
\bloque1|cont_pxl[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \blique3|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \bloque1|cont_pxl[4]~19_combout\,
	sclr => \bloque1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloque1|cont_pxl\(4));

-- Location: LCCOMB_X25_Y35_N14
\bloque1|cont_pxl[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloque1|cont_pxl[7]~25_combout\ = (\bloque1|cont_pxl\(7) & (!\bloque1|cont_pxl[6]~24\)) # (!\bloque1|cont_pxl\(7) & ((\bloque1|cont_pxl[6]~24\) # (GND)))
-- \bloque1|cont_pxl[7]~26\ = CARRY((!\bloque1|cont_pxl[6]~24\) # (!\bloque1|cont_pxl\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloque1|cont_pxl\(7),
	datad => VCC,
	cin => \bloque1|cont_pxl[6]~24\,
	combout => \bloque1|cont_pxl[7]~25_combout\,
	cout => \bloque1|cont_pxl[7]~26\);

-- Location: LCFF_X25_Y35_N15
\bloque1|cont_pxl[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \blique3|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \bloque1|cont_pxl[7]~25_combout\,
	sclr => \bloque1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloque1|cont_pxl\(7));

-- Location: LCCOMB_X25_Y35_N16
\bloque1|cont_pxl[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloque1|cont_pxl[8]~27_combout\ = (\bloque1|cont_pxl\(8) & (\bloque1|cont_pxl[7]~26\ $ (GND))) # (!\bloque1|cont_pxl\(8) & (!\bloque1|cont_pxl[7]~26\ & VCC))
-- \bloque1|cont_pxl[8]~28\ = CARRY((\bloque1|cont_pxl\(8) & !\bloque1|cont_pxl[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloque1|cont_pxl\(8),
	datad => VCC,
	cin => \bloque1|cont_pxl[7]~26\,
	combout => \bloque1|cont_pxl[8]~27_combout\,
	cout => \bloque1|cont_pxl[8]~28\);

-- Location: LCFF_X25_Y35_N17
\bloque1|cont_pxl[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \blique3|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \bloque1|cont_pxl[8]~27_combout\,
	sclr => \bloque1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloque1|cont_pxl\(8));

-- Location: LCCOMB_X25_Y35_N18
\bloque1|cont_pxl[9]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloque1|cont_pxl[9]~29_combout\ = (\bloque1|cont_pxl\(9) & (!\bloque1|cont_pxl[8]~28\)) # (!\bloque1|cont_pxl\(9) & ((\bloque1|cont_pxl[8]~28\) # (GND)))
-- \bloque1|cont_pxl[9]~30\ = CARRY((!\bloque1|cont_pxl[8]~28\) # (!\bloque1|cont_pxl\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloque1|cont_pxl\(9),
	datad => VCC,
	cin => \bloque1|cont_pxl[8]~28\,
	combout => \bloque1|cont_pxl[9]~29_combout\,
	cout => \bloque1|cont_pxl[9]~30\);

-- Location: LCFF_X25_Y35_N19
\bloque1|cont_pxl[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \blique3|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \bloque1|cont_pxl[9]~29_combout\,
	sclr => \bloque1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloque1|cont_pxl\(9));

-- Location: LCCOMB_X25_Y35_N26
\bloque1|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloque1|LessThan0~2_combout\ = (((!\bloque1|cont_pxl\(7) & !\bloque1|cont_pxl\(8))) # (!\bloque1|cont_pxl\(9))) # (!\bloque1|cont_pxl\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloque1|cont_pxl\(10),
	datab => \bloque1|cont_pxl\(7),
	datac => \bloque1|cont_pxl\(8),
	datad => \bloque1|cont_pxl\(9),
	combout => \bloque1|LessThan0~2_combout\);

-- Location: LCCOMB_X25_Y35_N28
\bloque1|visible_pxl~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloque1|visible_pxl~0_combout\ = (!\bloque1|visible_pxl~regout\ & (!\bloque1|LessThan0~2_combout\ & ((!\bloque1|LessThan0~0_combout\) # (!\bloque1|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloque1|visible_pxl~regout\,
	datab => \bloque1|LessThan0~2_combout\,
	datac => \bloque1|LessThan0~1_combout\,
	datad => \bloque1|LessThan0~0_combout\,
	combout => \bloque1|visible_pxl~0_combout\);

-- Location: LCCOMB_X25_Y35_N20
\bloque1|cont_pxl[10]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloque1|cont_pxl[10]~31_combout\ = \bloque1|cont_pxl\(10) $ (!\bloque1|cont_pxl[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloque1|cont_pxl\(10),
	cin => \bloque1|cont_pxl[9]~30\,
	combout => \bloque1|cont_pxl[10]~31_combout\);

-- Location: LCFF_X25_Y35_N21
\bloque1|cont_pxl[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \blique3|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \bloque1|cont_pxl[10]~31_combout\,
	sclr => \bloque1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloque1|cont_pxl\(10));

-- Location: LCCOMB_X24_Y35_N16
\bloque1|visible_pxl~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloque1|visible_pxl~1_combout\ = (!\bloque1|visible_pxl~0_combout\ & (\bloque1|cont_pxl\(10) & ((\bloque1|cont_pxl\(9)) # (\bloque1|cont_pxl\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloque1|cont_pxl\(9),
	datab => \bloque1|visible_pxl~0_combout\,
	datac => \bloque1|cont_pxl\(8),
	datad => \bloque1|cont_pxl\(10),
	combout => \bloque1|visible_pxl~1_combout\);

-- Location: LCFF_X24_Y35_N17
\bloque1|visible_pxl\ : cycloneii_lcell_ff
PORT MAP (
	clk => \blique3|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \bloque1|visible_pxl~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloque1|visible_pxl~regout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset);

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(0));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(1));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(2));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(3));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(4));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(5));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(6));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(7));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(8));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(9));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\G[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_G(0));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\G[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_G(1));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\G[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_G(2));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\G[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_G(3));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\G[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_G(4));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\G[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_G(5));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\G[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_G(6));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\G[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_G(7));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\G[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_G(8));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\G[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_G(9));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(0));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(2));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(3));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(4));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(5));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(6));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(7));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(8));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(9));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLANK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloque1|ALT_INV_visible_pxl~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLANK);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \blique3|altpll_0|sd1|_clk0~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_CLK);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_HS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_HS);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_VS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_VS);
END structure;


