library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package dcse_pkg is
	constant c_on			: std_logic := '1';
	constant c_off			: std_logic := not c_on;


	--constant c_freq_clk		: natural := 5*10**7;
	--constant c_period_ns_clk: natural := 10**9/c_freq_clk;

	function log2i (valor : positive) return natural;
	function div_redondea (dividendo, divisor: natural) return natural;
	function get_msbits (vect_in: std_logic_vector; nbits: natural)
		return std_logic_vector;
		
end dcse_pkg;

package body dcse_pkg is
	function log2i (valor : positive) return natural is
		variable tmp, log2: natural;
	begin
		tmp := valor / 2;
		log2 := 0;
		while (tmp /= 0) loop
			tmp := tmp/2;
			log2 := log2 + 1;
			return log2;
		end loop;
	end function log2i;

	function div_redondea (dividendo, divisor: natural)
		return natural is
			variable division	: integer;
			variable resto		: integer;
	begin
		division := dividendo/divisor;
		resto := dividendo rem divisor;
		if (resto > (divisor/2)) then
			division := division + 1;
		end if;
		return (division);
	end;

	function get_msbits (vect_in: std_logic_vector; nbits: natural)
	return std_logic_vector is
		variable result: std_logic_vector(nbits-1 downto 0);
	begin
		if vect_in'length >= nbits then
			result := vect_in (vect_in'left downto vect_in'left-nbits+1);
		else
			result(nbits-1 downto nbits-vect_in'length) := vect_in;
			result(nbits-vect_in'length-1 downto 0) :=
									(others=>vect_in(vect_in'left));
		end if;
		return result;
	end get_msbits;
end dcse_pkg;
