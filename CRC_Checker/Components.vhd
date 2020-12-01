library Components;
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity xor2to1 is
	port( input0, input1 : in std_logic;
			output			: out std_logic);
				
end xor2to1;

architecture logic_function of xor2to1 is
begin
	output <= (not input0 and input1) or (input0 and not input1);
end logic_function;