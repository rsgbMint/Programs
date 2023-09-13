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

-- DATE "09/11/2023 08:01:36"

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

ENTITY 	sincro_vga IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	pxl_num : OUT std_logic_vector(1 DOWNTO 0);
	line_num : OUT std_logic_vector(1 DOWNTO 0);
	visible : OUT std_logic;
	hsynch : OUT std_logic;
	vsynch : OUT std_logic;
	pxl_clk : OUT std_logic;
	comp_synch : OUT std_logic
	);
END sincro_vga;

-- Design Ports Information
-- rst	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pxl_num[0]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pxl_num[1]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- line_num[0]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- line_num[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- visible	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hsynch	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vsynch	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pxl_clk	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- comp_synch	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF sincro_vga IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_pxl_num : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_line_num : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_visible : std_logic;
SIGNAL ww_hsynch : std_logic;
SIGNAL ww_vsynch : std_logic;
SIGNAL ww_pxl_clk : std_logic;
SIGNAL ww_comp_synch : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \visible_pxl~2_combout\ : std_logic;
SIGNAL \visible_pxl~3_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \new_pxl~feeder_combout\ : std_logic;
SIGNAL \cont_clk~0_combout\ : std_logic;
SIGNAL \cont_clk~regout\ : std_logic;
SIGNAL \new_pxl~regout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~27_combout\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \new_line~0_combout\ : std_logic;
SIGNAL \cont_line[0]~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \visible_pxl~4_combout\ : std_logic;
SIGNAL \visible_pxl~combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \visible_line~2_combout\ : std_logic;
SIGNAL \visible_line~3_combout\ : std_logic;
SIGNAL \visible_line~0_combout\ : std_logic;
SIGNAL \visible_line~1_combout\ : std_logic;
SIGNAL \visible_line~4_combout\ : std_logic;
SIGNAL \visible_line~combout\ : std_logic;
SIGNAL \visible~0_combout\ : std_logic;
SIGNAL \aux_hsynch~0_combout\ : std_logic;
SIGNAL \aux_hsynch~1_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \aux_hsynch~combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \aux_vsynch~0_combout\ : std_logic;
SIGNAL \aux_vsynch~1_combout\ : std_logic;
SIGNAL \aux_vsynch~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \clk_aux~0_combout\ : std_logic;
SIGNAL \clk_aux~regout\ : std_logic;
SIGNAL cont_line : std_logic_vector(9 DOWNTO 0);
SIGNAL cont_pxl : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
pxl_num <= ww_pxl_num;
line_num <= ww_line_num;
visible <= ww_visible;
hsynch <= ww_hsynch;
vsynch <= ww_vsynch;
pxl_clk <= ww_pxl_clk;
comp_synch <= ww_comp_synch;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X33_Y34_N6
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = cont_pxl(0) $ (VCC)
-- \Add1~1\ = CARRY(cont_pxl(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont_pxl(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X33_Y34_N10
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (cont_pxl(2) & (\Add1~4\ $ (GND))) # (!cont_pxl(2) & (!\Add1~4\ & VCC))
-- \Add1~7\ = CARRY((cont_pxl(2) & !\Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont_pxl(2),
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X33_Y34_N12
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (cont_pxl(3) & (!\Add1~7\)) # (!cont_pxl(3) & ((\Add1~7\) # (GND)))
-- \Add1~9\ = CARRY((!\Add1~7\) # (!cont_pxl(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont_pxl(3),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X33_Y34_N14
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (cont_pxl(4) & (\Add1~9\ $ (GND))) # (!cont_pxl(4) & (!\Add1~9\ & VCC))
-- \Add1~11\ = CARRY((cont_pxl(4) & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont_pxl(4),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X33_Y34_N22
\Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (cont_pxl(8) & (\Add1~17\ $ (GND))) # (!cont_pxl(8) & (!\Add1~17\ & VCC))
-- \Add1~19\ = CARRY((cont_pxl(8) & !\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont_pxl(8),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X34_Y35_N6
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (cont_line(2) & (!\Add2~1\)) # (!cont_line(2) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!cont_line(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont_line(2),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X34_Y34_N14
\LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (cont_pxl(8)) # ((cont_pxl(7) & ((cont_pxl(5)) # (cont_pxl(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_pxl(5),
	datab => cont_pxl(7),
	datac => cont_pxl(6),
	datad => cont_pxl(8),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X34_Y34_N30
\visible_pxl~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \visible_pxl~2_combout\ = (cont_pxl(5)) # (((cont_pxl(8)) # (cont_pxl(6))) # (!cont_pxl(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_pxl(5),
	datab => cont_pxl(7),
	datac => cont_pxl(8),
	datad => cont_pxl(6),
	combout => \visible_pxl~2_combout\);

-- Location: LCCOMB_X35_Y34_N6
\visible_pxl~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \visible_pxl~3_combout\ = (\visible_pxl~2_combout\) # (((\LessThan2~1_combout\ & cont_pxl(4))) # (!cont_pxl(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \visible_pxl~2_combout\,
	datab => \LessThan2~1_combout\,
	datac => cont_pxl(4),
	datad => cont_pxl(9),
	combout => \visible_pxl~3_combout\);

-- Location: LCCOMB_X33_Y34_N30
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\Add1~18_combout\ & (((\LessThan0~0_combout\) # (!\LessThan2~2_combout\)) # (!cont_pxl(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_pxl(9),
	datab => \LessThan2~2_combout\,
	datac => \LessThan0~0_combout\,
	datad => \Add1~18_combout\,
	combout => \Add1~20_combout\);

-- Location: LCCOMB_X33_Y34_N2
\Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\Add1~10_combout\ & (((\LessThan0~0_combout\) # (!\LessThan2~2_combout\)) # (!cont_pxl(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_pxl(9),
	datab => \LessThan0~0_combout\,
	datac => \Add1~10_combout\,
	datad => \LessThan2~2_combout\,
	combout => \Add1~24_combout\);

-- Location: LCCOMB_X35_Y34_N10
\Add1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~25_combout\ = (\Add1~6_combout\ & ((\LessThan0~0_combout\) # ((!\LessThan2~2_combout\) # (!cont_pxl(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => cont_pxl(9),
	datac => \Add1~6_combout\,
	datad => \LessThan2~2_combout\,
	combout => \Add1~25_combout\);

-- Location: LCCOMB_X35_Y34_N16
\Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\Add1~8_combout\ & ((\LessThan0~0_combout\) # ((!\LessThan2~2_combout\) # (!cont_pxl(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => cont_pxl(9),
	datac => \Add1~8_combout\,
	datad => \LessThan2~2_combout\,
	combout => \Add1~26_combout\);

-- Location: LCCOMB_X33_Y34_N8
\Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (cont_pxl(1) & (!\Add1~1\)) # (!cont_pxl(1) & ((\Add1~1\) # (GND)))
-- \Add1~4\ = CARRY((!\Add1~1\) # (!cont_pxl(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont_pxl(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X34_Y34_N18
\Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (\Add1~3_combout\ & (((\LessThan0~0_combout\) # (!cont_pxl(9))) # (!\LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datab => \LessThan0~0_combout\,
	datac => cont_pxl(9),
	datad => \Add1~3_combout\,
	combout => \Add1~5_combout\);

-- Location: LCCOMB_X34_Y35_N28
\new_pxl~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \new_pxl~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \new_pxl~feeder_combout\);

-- Location: LCCOMB_X35_Y35_N16
\cont_clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_clk~0_combout\ = !\cont_clk~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont_clk~regout\,
	combout => \cont_clk~0_combout\);

-- Location: LCFF_X35_Y35_N17
cont_clk : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cont_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_clk~regout\);

-- Location: LCFF_X34_Y35_N29
new_pxl : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \new_pxl~feeder_combout\,
	ena => \cont_clk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \new_pxl~regout\);

-- Location: LCCOMB_X35_Y34_N30
\cont_pxl[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- cont_pxl(1) = (\new_pxl~regout\ & (\Add1~5_combout\)) # (!\new_pxl~regout\ & ((cont_pxl(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~5_combout\,
	datac => cont_pxl(1),
	datad => \new_pxl~regout\,
	combout => cont_pxl(1));

-- Location: LCCOMB_X35_Y34_N18
\cont_pxl[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- cont_pxl(2) = (\new_pxl~regout\ & (\Add1~25_combout\)) # (!\new_pxl~regout\ & ((cont_pxl(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~25_combout\,
	datab => cont_pxl(2),
	datad => \new_pxl~regout\,
	combout => cont_pxl(2));

-- Location: LCCOMB_X35_Y34_N20
\LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (cont_pxl(3)) # ((cont_pxl(0)) # ((cont_pxl(1)) # (cont_pxl(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_pxl(3),
	datab => cont_pxl(0),
	datac => cont_pxl(1),
	datad => cont_pxl(2),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X34_Y34_N2
\cont_pxl[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- cont_pxl(4) = (\new_pxl~regout\ & (\Add1~24_combout\)) # (!\new_pxl~regout\ & ((cont_pxl(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => cont_pxl(4),
	datad => \new_pxl~regout\,
	combout => cont_pxl(4));

-- Location: LCCOMB_X34_Y34_N20
\LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (\LessThan2~0_combout\) # ((\LessThan2~1_combout\ & (cont_pxl(4) & cont_pxl(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \LessThan2~1_combout\,
	datac => cont_pxl(4),
	datad => cont_pxl(7),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X35_Y34_N24
\cont_pxl[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- cont_pxl(3) = (\new_pxl~regout\ & (\Add1~26_combout\)) # (!\new_pxl~regout\ & ((cont_pxl(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datac => cont_pxl(3),
	datad => \new_pxl~regout\,
	combout => cont_pxl(3));

-- Location: LCCOMB_X33_Y34_N16
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (cont_pxl(5) & (!\Add1~11\)) # (!cont_pxl(5) & ((\Add1~11\) # (GND)))
-- \Add1~13\ = CARRY((!\Add1~11\) # (!cont_pxl(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont_pxl(5),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X33_Y34_N28
\Add1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (\Add1~12_combout\ & (((\LessThan0~0_combout\) # (!\LessThan2~2_combout\)) # (!cont_pxl(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_pxl(9),
	datab => \LessThan0~0_combout\,
	datac => \Add1~12_combout\,
	datad => \LessThan2~2_combout\,
	combout => \Add1~23_combout\);

-- Location: LCCOMB_X34_Y34_N16
\cont_pxl[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- cont_pxl(5) = (\new_pxl~regout\ & ((\Add1~23_combout\))) # (!\new_pxl~regout\ & (cont_pxl(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_pxl(5),
	datab => \Add1~23_combout\,
	datad => \new_pxl~regout\,
	combout => cont_pxl(5));

-- Location: LCCOMB_X33_Y34_N18
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (cont_pxl(6) & (\Add1~13\ $ (GND))) # (!cont_pxl(6) & (!\Add1~13\ & VCC))
-- \Add1~15\ = CARRY((cont_pxl(6) & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont_pxl(6),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X33_Y34_N26
\Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\Add1~14_combout\ & (((\LessThan0~0_combout\) # (!\LessThan2~2_combout\)) # (!cont_pxl(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_pxl(9),
	datab => \LessThan2~2_combout\,
	datac => \LessThan0~0_combout\,
	datad => \Add1~14_combout\,
	combout => \Add1~22_combout\);

-- Location: LCCOMB_X34_Y34_N24
\cont_pxl[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- cont_pxl(6) = (\new_pxl~regout\ & ((\Add1~22_combout\))) # (!\new_pxl~regout\ & (cont_pxl(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_pxl(6),
	datab => \Add1~22_combout\,
	datad => \new_pxl~regout\,
	combout => cont_pxl(6));

-- Location: LCCOMB_X33_Y34_N20
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (cont_pxl(7) & (!\Add1~15\)) # (!cont_pxl(7) & ((\Add1~15\) # (GND)))
-- \Add1~17\ = CARRY((!\Add1~15\) # (!cont_pxl(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont_pxl(7),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X33_Y34_N0
\Add1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (\Add1~16_combout\ & (((\LessThan0~0_combout\) # (!\LessThan2~2_combout\)) # (!cont_pxl(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_pxl(9),
	datab => \LessThan0~0_combout\,
	datac => \Add1~16_combout\,
	datad => \LessThan2~2_combout\,
	combout => \Add1~21_combout\);

-- Location: LCCOMB_X34_Y34_N4
\cont_pxl[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- cont_pxl(7) = (\new_pxl~regout\ & (\Add1~21_combout\)) # (!\new_pxl~regout\ & ((cont_pxl(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~21_combout\,
	datac => cont_pxl(7),
	datad => \new_pxl~regout\,
	combout => cont_pxl(7));

-- Location: LCCOMB_X34_Y34_N10
\cont_pxl[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- cont_pxl(8) = (\new_pxl~regout\ & (\Add1~20_combout\)) # (!\new_pxl~regout\ & ((cont_pxl(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datac => cont_pxl(8),
	datad => \new_pxl~regout\,
	combout => cont_pxl(8));

-- Location: LCCOMB_X34_Y34_N0
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (cont_pxl(8) & ((cont_pxl(5)) # ((cont_pxl(7)) # (cont_pxl(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_pxl(5),
	datab => cont_pxl(7),
	datac => cont_pxl(6),
	datad => cont_pxl(8),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y34_N24
\Add1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~27_combout\ = \Add1~19\ $ (cont_pxl(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cont_pxl(9),
	cin => \Add1~19\,
	combout => \Add1~27_combout\);

-- Location: LCCOMB_X34_Y34_N8
\Add1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~29_combout\ = (\Add1~27_combout\ & (((\LessThan0~0_combout\) # (!cont_pxl(9))) # (!\LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datab => \LessThan0~0_combout\,
	datac => cont_pxl(9),
	datad => \Add1~27_combout\,
	combout => \Add1~29_combout\);

-- Location: LCCOMB_X35_Y34_N14
\cont_pxl[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- cont_pxl(9) = (\new_pxl~regout\ & ((\Add1~29_combout\))) # (!\new_pxl~regout\ & (cont_pxl(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \new_pxl~regout\,
	datac => cont_pxl(9),
	datad => \Add1~29_combout\,
	combout => cont_pxl(9));

-- Location: LCCOMB_X35_Y34_N22
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add1~0_combout\ & (((\LessThan0~0_combout\) # (!\LessThan2~2_combout\)) # (!cont_pxl(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => cont_pxl(9),
	datac => \LessThan0~0_combout\,
	datad => \LessThan2~2_combout\,
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X35_Y34_N28
\cont_pxl[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- cont_pxl(0) = (\new_pxl~regout\ & (\Add1~2_combout\)) # (!\new_pxl~regout\ & ((cont_pxl(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~2_combout\,
	datac => cont_pxl(0),
	datad => \new_pxl~regout\,
	combout => cont_pxl(0));

-- Location: LCCOMB_X34_Y35_N30
\new_line~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \new_line~0_combout\ = \new_line~0_combout\ $ (((\LessThan0~0_combout\ & (cont_pxl(9) & \new_pxl~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \new_line~0_combout\,
	datab => \LessThan0~0_combout\,
	datac => cont_pxl(9),
	datad => \new_pxl~regout\,
	combout => \new_line~0_combout\);

-- Location: LCCOMB_X34_Y35_N2
\cont_line[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_line[0]~0_combout\ = \cont_line[0]~0_combout\ $ (\new_line~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_line[0]~0_combout\,
	datad => \new_line~0_combout\,
	combout => \cont_line[0]~0_combout\);

-- Location: LCCOMB_X34_Y35_N4
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (cont_line(1) & (\cont_line[0]~0_combout\ $ (VCC))) # (!cont_line(1) & (\cont_line[0]~0_combout\ & VCC))
-- \Add2~1\ = CARRY((cont_line(1) & \cont_line[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_line(1),
	datab => \cont_line[0]~0_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X33_Y35_N24
\cont_line[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- cont_line(1) = (\new_line~0_combout\ & ((\Add2~0_combout\))) # (!\new_line~0_combout\ & (cont_line(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_line(1),
	datab => \new_line~0_combout\,
	datad => \Add2~0_combout\,
	combout => cont_line(1));

-- Location: LCCOMB_X34_Y34_N26
\LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ((!cont_pxl(8) & !cont_pxl(7))) # (!cont_pxl(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_pxl(9),
	datab => cont_pxl(8),
	datac => cont_pxl(7),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X35_Y34_N12
\visible_pxl~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \visible_pxl~4_combout\ = (\visible_pxl~3_combout\ & (\new_pxl~regout\ & ((!cont_pxl(9)) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \visible_pxl~3_combout\,
	datab => \LessThan0~0_combout\,
	datac => cont_pxl(9),
	datad => \new_pxl~regout\,
	combout => \visible_pxl~4_combout\);

-- Location: LCCOMB_X35_Y34_N26
visible_pxl : cycloneii_lcell_comb
-- Equation(s):
-- \visible_pxl~combout\ = (\visible_pxl~4_combout\ & (\LessThan1~0_combout\)) # (!\visible_pxl~4_combout\ & ((\visible_pxl~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~0_combout\,
	datac => \visible_pxl~4_combout\,
	datad => \visible_pxl~combout\,
	combout => \visible_pxl~combout\);

-- Location: LCCOMB_X34_Y35_N0
\cont_line[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- cont_line(2) = (\new_line~0_combout\ & (\Add2~2_combout\)) # (!\new_line~0_combout\ & ((cont_line(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => cont_line(2),
	datad => \new_line~0_combout\,
	combout => cont_line(2));

-- Location: LCCOMB_X34_Y35_N8
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (cont_line(3) & (\Add2~3\ $ (GND))) # (!cont_line(3) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((cont_line(3) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont_line(3),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X33_Y35_N18
\cont_line[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- cont_line(3) = (\new_line~0_combout\ & (\Add2~4_combout\)) # (!\new_line~0_combout\ & ((cont_line(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \new_line~0_combout\,
	datac => \Add2~4_combout\,
	datad => cont_line(3),
	combout => cont_line(3));

-- Location: LCCOMB_X34_Y35_N10
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (cont_line(4) & (!\Add2~5\)) # (!cont_line(4) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!cont_line(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont_line(4),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X34_Y35_N12
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (cont_line(5) & (\Add2~7\ $ (GND))) # (!cont_line(5) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((cont_line(5) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont_line(5),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X33_Y35_N6
\cont_line[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- cont_line(5) = (\new_line~0_combout\ & ((\Add2~8_combout\))) # (!\new_line~0_combout\ & (cont_line(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_line(5),
	datac => \Add2~8_combout\,
	datad => \new_line~0_combout\,
	combout => cont_line(5));

-- Location: LCCOMB_X34_Y35_N14
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (cont_line(6) & (!\Add2~9\)) # (!cont_line(6) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!cont_line(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont_line(6),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X33_Y35_N4
\cont_line[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- cont_line(6) = (\new_line~0_combout\ & ((\Add2~10_combout\))) # (!\new_line~0_combout\ & (cont_line(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont_line(6),
	datac => \Add2~10_combout\,
	datad => \new_line~0_combout\,
	combout => cont_line(6));

-- Location: LCCOMB_X34_Y35_N16
\Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (cont_line(7) & (\Add2~11\ $ (GND))) # (!cont_line(7) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((cont_line(7) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont_line(7),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X34_Y35_N22
\cont_line[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- cont_line(7) = (\new_line~0_combout\ & ((\Add2~12_combout\))) # (!\new_line~0_combout\ & (cont_line(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont_line(7),
	datac => \Add2~12_combout\,
	datad => \new_line~0_combout\,
	combout => cont_line(7));

-- Location: LCCOMB_X34_Y35_N18
\Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (cont_line(8) & (!\Add2~13\)) # (!cont_line(8) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!cont_line(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont_line(8),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X34_Y35_N26
\cont_line[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- cont_line(8) = (\new_line~0_combout\ & ((\Add2~14_combout\))) # (!\new_line~0_combout\ & (cont_line(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \new_line~0_combout\,
	datac => cont_line(8),
	datad => \Add2~14_combout\,
	combout => cont_line(8));

-- Location: LCCOMB_X33_Y35_N28
\LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (cont_line(5) & (cont_line(8) & (cont_line(6) & cont_line(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_line(5),
	datab => cont_line(8),
	datac => cont_line(6),
	datad => cont_line(7),
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X34_Y35_N20
\Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = \Add2~15\ $ (!cont_line(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cont_line(9),
	cin => \Add2~15\,
	combout => \Add2~16_combout\);

-- Location: LCCOMB_X34_Y35_N24
\cont_line[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- cont_line(9) = (\new_line~0_combout\ & ((\Add2~16_combout\))) # (!\new_line~0_combout\ & (cont_line(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont_line(9),
	datac => \Add2~16_combout\,
	datad => \new_line~0_combout\,
	combout => cont_line(9));

-- Location: LCCOMB_X32_Y35_N24
\LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!\LessThan7~0_combout\ & !cont_line(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan7~0_combout\,
	datac => cont_line(9),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X33_Y35_N30
\cont_line[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- cont_line(4) = (\new_line~0_combout\ & ((\Add2~6_combout\))) # (!\new_line~0_combout\ & (cont_line(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \new_line~0_combout\,
	datac => cont_line(4),
	datad => \Add2~6_combout\,
	combout => cont_line(4));

-- Location: LCCOMB_X33_Y35_N22
\visible_line~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \visible_line~2_combout\ = (!cont_line(5) & (!cont_line(3) & (!cont_line(6) & !cont_line(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_line(5),
	datab => cont_line(3),
	datac => cont_line(6),
	datad => cont_line(4),
	combout => \visible_line~2_combout\);

-- Location: LCCOMB_X33_Y35_N14
\visible_line~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \visible_line~3_combout\ = (!cont_line(8) & (!cont_line(7) & \visible_line~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont_line(8),
	datac => cont_line(7),
	datad => \visible_line~2_combout\,
	combout => \visible_line~3_combout\);

-- Location: LCCOMB_X33_Y35_N8
\visible_line~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \visible_line~0_combout\ = (!cont_line(4) & (((!cont_line(2) & !cont_line(1))) # (!cont_line(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_line(4),
	datab => cont_line(2),
	datac => cont_line(1),
	datad => cont_line(3),
	combout => \visible_line~0_combout\);

-- Location: LCCOMB_X33_Y35_N10
\visible_line~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \visible_line~1_combout\ = (!cont_line(9) & ((!\LessThan7~0_combout\) # (!\visible_line~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont_line(9),
	datac => \visible_line~0_combout\,
	datad => \LessThan7~0_combout\,
	combout => \visible_line~1_combout\);

-- Location: LCCOMB_X33_Y35_N2
\visible_line~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \visible_line~4_combout\ = (\new_line~0_combout\ & ((\visible_line~3_combout\) # (\visible_line~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \new_line~0_combout\,
	datac => \visible_line~3_combout\,
	datad => \visible_line~1_combout\,
	combout => \visible_line~4_combout\);

-- Location: LCCOMB_X33_Y35_N12
visible_line : cycloneii_lcell_comb
-- Equation(s):
-- \visible_line~combout\ = (\visible_line~4_combout\ & (\LessThan5~0_combout\)) # (!\visible_line~4_combout\ & ((\visible_line~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan5~0_combout\,
	datac => \visible_line~combout\,
	datad => \visible_line~4_combout\,
	combout => \visible_line~combout\);

-- Location: LCCOMB_X35_Y35_N0
\visible~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \visible~0_combout\ = (\visible_pxl~combout\ & \visible_line~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \visible_pxl~combout\,
	datad => \visible_line~combout\,
	combout => \visible~0_combout\);

-- Location: LCCOMB_X34_Y34_N28
\aux_hsynch~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux_hsynch~0_combout\ = (\new_pxl~regout\ & ((!\LessThan0~0_combout\) # (!cont_pxl(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_pxl(9),
	datab => \LessThan0~0_combout\,
	datad => \new_pxl~regout\,
	combout => \aux_hsynch~0_combout\);

-- Location: LCCOMB_X34_Y34_N12
\aux_hsynch~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux_hsynch~1_combout\ = (\LessThan2~2_combout\ & (!\LessThan1~0_combout\ & \aux_hsynch~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datab => \LessThan1~0_combout\,
	datac => \aux_hsynch~0_combout\,
	combout => \aux_hsynch~1_combout\);

-- Location: LCCOMB_X33_Y34_N4
\LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (cont_pxl(7) & (cont_pxl(5) & cont_pxl(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_pxl(7),
	datab => cont_pxl(5),
	datad => cont_pxl(6),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X34_Y34_N22
\LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (cont_pxl(8)) # ((\LessThan2~1_combout\ & (\LessThan3~0_combout\ & cont_pxl(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_pxl(8),
	datab => \LessThan2~1_combout\,
	datac => \LessThan3~0_combout\,
	datad => cont_pxl(4),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X34_Y34_N6
aux_hsynch : cycloneii_lcell_comb
-- Equation(s):
-- \aux_hsynch~combout\ = (\aux_hsynch~1_combout\ & (\LessThan3~1_combout\)) # (!\aux_hsynch~1_combout\ & ((\aux_hsynch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_hsynch~1_combout\,
	datab => \LessThan3~1_combout\,
	datad => \aux_hsynch~combout\,
	combout => \aux_hsynch~combout\);

-- Location: LCCOMB_X33_Y35_N0
\LessThan7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (cont_line(4)) # ((cont_line(2) & cont_line(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_line(2),
	datab => cont_line(4),
	datac => cont_line(3),
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X32_Y35_N14
\LessThan7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = (cont_line(9)) # ((\LessThan7~1_combout\ & \LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_line(9),
	datac => \LessThan7~1_combout\,
	datad => \LessThan7~0_combout\,
	combout => \LessThan7~2_combout\);

-- Location: LCCOMB_X33_Y35_N16
\aux_vsynch~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux_vsynch~0_combout\ = (!cont_line(9) & (!\visible_line~0_combout\ & \LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont_line(9),
	datac => \visible_line~0_combout\,
	datad => \LessThan7~0_combout\,
	combout => \aux_vsynch~0_combout\);

-- Location: LCCOMB_X33_Y35_N26
\aux_vsynch~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux_vsynch~1_combout\ = (\new_line~0_combout\ & ((\aux_vsynch~0_combout\) # ((cont_line(9) & \visible_line~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_line(9),
	datab => \visible_line~3_combout\,
	datac => \aux_vsynch~0_combout\,
	datad => \new_line~0_combout\,
	combout => \aux_vsynch~1_combout\);

-- Location: LCCOMB_X33_Y35_N20
aux_vsynch : cycloneii_lcell_comb
-- Equation(s):
-- \aux_vsynch~combout\ = (\aux_vsynch~1_combout\ & (\LessThan7~2_combout\)) # (!\aux_vsynch~1_combout\ & ((\aux_vsynch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan7~2_combout\,
	datac => \aux_vsynch~combout\,
	datad => \aux_vsynch~1_combout\,
	combout => \aux_vsynch~combout\);

-- Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G7
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X35_Y35_N18
\clk_aux~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_aux~0_combout\ = !\clk_aux~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_aux~regout\,
	combout => \clk_aux~0_combout\);

-- Location: LCFF_X35_Y35_N19
clk_aux : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_aux~0_combout\,
	ena => \cont_clk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_aux~regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
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
	padio => ww_rst);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pxl_num[0]~I\ : cycloneii_io
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
	datain => cont_pxl(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pxl_num(0));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pxl_num[1]~I\ : cycloneii_io
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
	datain => cont_pxl(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pxl_num(1));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\line_num[0]~I\ : cycloneii_io
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
	datain => \cont_line[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_line_num(0));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\line_num[1]~I\ : cycloneii_io
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
	datain => cont_line(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_line_num(1));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\visible~I\ : cycloneii_io
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
	datain => \visible~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_visible);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hsynch~I\ : cycloneii_io
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
	datain => \aux_hsynch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hsynch);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vsynch~I\ : cycloneii_io
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
	datain => \aux_vsynch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vsynch);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pxl_clk~I\ : cycloneii_io
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
	datain => \clk_aux~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pxl_clk);

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\comp_synch~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_comp_synch);
END structure;


