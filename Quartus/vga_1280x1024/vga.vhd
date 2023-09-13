library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga is
	port
	(
	clock_27			: in std_logic_vector(1 downto 0);
	VGA_HS, VGA_VS, 		: out std_logic;
	VGA_R, VGA_G, VGA_B : out std_logic_vector(9 downto 0)
	);
end vga;

architecture main of vga is
	signal VGACLK, reset : std_logic := '0';
	component sync is
	port (
		clk : in std_logic;
		HSYNC, VSYNC : out std_logic;
		R, G, B : out std_logic_vector(9 downto 0)
	);
	end component sync;
	   component pll is
        port (
            clk_in_clk  : in  std_logic := 'X'; -- clk
            reset_reset : in  std_logic := 'X'; -- reset
            clk_out_clk : out std_logic         -- clk
        );
    end component pll;

begin
	C1: sync port map (VGACLK, VGA_HS, VGA_VS, VGA_R, VGA_G, VGA_B);
	C2: pll	port map (clock_27(0), reset, VGACLK);
end main;



