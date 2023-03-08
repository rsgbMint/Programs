with Ada.Text_IO;   -- import the Ada.Text_IO package
use Ada.Text_IO;   -- make its contents visible

procedure Main is
	name : String:= "Roly";
begin
  Put_Line("Hello" & " world!");  -- prints "Hello world!"
  Put_Line("The answer is: " & Integer'Image(42));  -- prints "The answer is: 42"
	
  Put_Line("Hello, " & name & "!");  -- prints "Hello, Alice!"
end Main;
