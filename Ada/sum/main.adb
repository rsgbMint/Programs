with Ada.Text_IO;  -- Import the Ada.Text_IO package.
use Ada.Text_IO;  -- Make its contents visible.

procedure Main is 
	function Sum (x, y: Integer) return Integer is
	begin
		return x + y;
	end Sum;

begin
	Put_Line("The sum of 3 + 4: " & Integer'Image(Sum(3,4)));  -- Use of & to concatenate two strings.
end Main;
