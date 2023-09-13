library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.vga_pkg.all;
use work.dcse_pkg.all;

entity sincro_vga is
	port(
		clk, rst	: in std_logic;
		pxl_num		: out unsigned(c_nb_pxls - 1 downto 0);
		--pxl_num	 	: out natural range 0 to c_pxl_total;
		line_num	: out unsigned(c_nb_lines - 1 downto 0);
		--line_num	: out natural range 0 to c_line_total;
		visible		: out std_logic;
		hsynch		: out std_logic;
		vsynch		: out std_logic;
--		pxl_clk		: out std_logic;
		comp_synch	: out std_logic
	);
end sincro_vga;

architecture behavioral of sincro_vga is
signal cont_clk	: std_logic := '0';
signal cont_pxl	: natural range 0 to c_pxl_total := 0;
signal cont_line: natural range 0 to c_line_total := 0;
signal new_pxl	: std_logic := '0';
signal new_line : std_logic := '0'; 
signal visible_pxl, visible_line : std_logic := '1';
signal aux_hsynch, aux_vsynch : std_logic := '1';

begin
--	P_cont_clk: process (clk, rst)
--	begin
--		if rising_edge(clk) then
--			clk_aux <= not clk_aux;
--		end if;
--	end process;
--cont <= cont_pxl;
	P_cont_pxl: process (clk, rst)
	begin
		if rising_edge(clk) then
			cont_pxl <= cont_pxl + 1;
			if cont_pxl < c_pxl_total then
				if cont_pxl < c_pxl_visible - 1 then
					visible_pxl <= '1';
				else
					if (cont_pxl >= c_pxl_2_fporch - 1) and (cont_pxl < c_pxl_2_synch - 1) then
						aux_hsynch <= '0';
					else
						aux_hsynch <= '1';
					end if;
					visible_pxl <= '0';
				end if;
			else
				new_line <= not new_line;
				cont_pxl <= 0;
			end if;
		end if;
	end process;

	pxl_num <= to_unsigned(cont_pxl, c_nb_pxls);
	--pxl_num <= cont_pxl;
	hsynch <= aux_hsynch;
	
	process (aux_hsynch, rst)
	begin
		if rising_edge(aux_hsynch) then
			cont_line <= cont_line + 1;
			if cont_line < c_line_total - 1 then
				if cont_line < c_line_visible - 1 then
					visible_line <= '1';
				else
					if (cont_line >= c_line_2_fporch - 1) and (cont_line < c_line_2_synch - 1) then
						aux_vsynch <= '0';
					else
						aux_vsynch <= '1';
					end if;
					visible_line <= '0';
				end if;
			else
				cont_line <= 0;
			end if;
		end if;
	end process;

	vsynch <= aux_vsynch;
	line_num <= to_unsigned(cont_line, c_nb_lines);
	--line_num <= cont_line;
	visible <= visible_pxl and visible_line;
end architecture;
