library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sync is
	port
	(
		clk : in std_logic;
		HSYNC, VSYNC : out std_logic;
		R, G, B : out std_logic_vector(9 downto 0)
	);
end sync;

architecture main of sync is
	signal hpos : integer range 0 to 1688 := 0;
	signal vpos : integer range 0 to 1066 := 0;
begin
	process(clk)
	begin
		if rising_edge(clk) then
			-- drawing a square
			if (hpos = 1048 or vpos = 554) then
				R <= (others => '1');
				G <= (others => '1');
				B <= (others => '1');
			else
				R <= (others => '0');
				G <= (others => '0');
				B <= (others => '0');
			end if;
			--
			if (hpos < 1655) then
				hpos <= hpos + 1;
			else
				hpos <= 0;
				if (vpos < 1066) then
					vpos <= vpos + 1;
				else
					vpos <= 0;
				end if;
			end if;
			-- Horizontal syncronization
			if (hpos > 48) and (hpos < 160) then
				hsync <= '0';
			else
				hsync <= '1';
			end if;

			-- Vertical syncronization
			if (vpos > 0) and (vpos < 4) then
				vsync <= '0';
			else
				vsync <= '1';
			end if;

			if (hpos > 0 and hpos < 408) or (vpos > 0 and vpos  <42) then
				R <= (others => '0');
				G <= (others => '0');
				B <= (others => '0');
			end if;

		end  if;
	end process;
end main;





