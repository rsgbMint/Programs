library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.vga_pkg.all;
use work.dcse_pkg.all;

entity vga_simple is
port
	(
		clk, reset : in std_logic;
		R : out std_logic_vector(c_nb_red - 1 downto 0);
		G : out std_logic_vector(c_nb_green - 1 downto 0);
		B : out std_logic_vector(c_nb_blue - 1 downto 0);
		VGA_BLANK 	: out std_logic;
		VGA_CLK		: out std_logic;
		VGA_HS		: out std_logic;
		VGA_VS		: out std_logic
	);
end vga_simple;

architecture behavioral of vga_simple is
component pinta_barras
	port(
			visible : in std_logic;
			pxl_num : in unsigned(c_nb_pxls - 1 downto 0);
			line_num: in unsigned(c_nb_lines - 1 downto 0);
			red		: out std_logic_vector(c_nb_red - 1 downto 0);
			green	: out std_logic_vector(c_nb_green - 1 downto 0);
			blue	: out std_logic_vector(c_nb_blue - 1 downto 0)
		);
end component pinta_barras;

component sincro_vga
	port(
		clk, rst	: in std_logic;
		pxl_num		: out unsigned(c_nb_pxls - 1 downto 0);
		line_num	: out unsigned(c_nb_lines - 1 downto 0);
		visible		: out std_logic;
		hsynch		: out std_logic;
		vsynch		: out std_logic;
		--pxl_clk		: out std_logic;
		comp_synch	: out std_logic
		);
end component sincro_vga;

component PLL is
	port (
		clk_in_clk  : in  std_logic := 'X'; -- clk
		reset_reset : in  std_logic := 'X'; -- reset
		clk_out_clk : out std_logic         -- clk
		);
end component PLL;

signal aux_pxl_num 			: unsigned(c_nb_pxls -1 downto 0);
signal aux_line_num 		: unsigned(c_nb_lines - 1 downto 0);
signal aux1, aux2, clk_out	: std_logic;
signal aux_reset			: std_logic := '0';

begin
bloque1: sincro_vga port map (clk_out,aux_reset,aux_pxl_num,aux_line_num,aux1,VGA_HS,VGA_VS,aux2);
bloque2: pinta_barras port map (aux1,aux_pxl_num,aux_line_num, R, G, B);
blique3: pll port map (clk, aux_reset,clk_out);
VGA_BLANK <= aux1;
aux_reset <= reset;
VGA_CLK <= clk_out;
end behavioral;
