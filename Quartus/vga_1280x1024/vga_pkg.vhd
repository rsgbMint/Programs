-- 1280x1024 (60Hz)
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.dcse_pkg.all;

package vga_pkg is
	-- Horizonal pixels
	constant c_pxl_visible	: natural := 1280;
	constant c_pxl_fporch   : natural := 43;
	constant c_pxl_2_fporch : natural := c_pxl_visible + c_pxl_fporch;
	constant c_pxl_synch	: natural := 108;
	constant c_pxl_2_synch  : natural := c_pxl_2_fporch + c_pxl_synch;
	constant c_pxl_total	: natural := 1678;
	constant c_pxl_bporch	: natural := c_pxl_total - c_pxl_2_synch;

	-- Vertical lines
	constant c_line_visible		: natural := 1024;
	constant c_line_fporch		: natural := 1;
	constant c_line_2_fporch	: natural := c_line_visible + c_line_fporch;
	constant c_line_synch		: natural := 3;
	constant c_line_2_synch		: natural := c_line_2_fporch + c_line_synch;
	constant c_line_total		: natural := 1066;
	constant c_line_bporch		: natural := c_line_total - c_line_2_synch;

	--constant c_nb_pxls	: natural := log2i(c_pxl_total-1) + 1;
	--constant c_nb_lines : natural := log2i(c_line_total-1) + 1;
	
	constant c_nb_pxls	: natural := 11;
	constant c_nb_lines : natural := 11;
	-- bit numbers for each color (RGB)
	constant c_nb_red	: natural := 10;
	constant c_nb_green : natural := 10;
	constant c_nb_blue	: natural := 10;

	-- VGA frecuency: 108MHz
	constant c_freq_vga	: natural := 108*10**6;

	-- High level of the syncronization
	constant c_synch_act: std_logic := '0';
end vga_pkg;

