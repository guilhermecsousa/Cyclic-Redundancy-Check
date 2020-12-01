library IEEE;

use IEEE.STD_LOGIC_1164.all;

entity CRC_Checker is
	port(crc : in std_logic_vector(23 downto 0);
		  error : out std_logic);
end CRC_Checker;		

architecture Structural of CRC_Checker is

	component xor2to1
		port(	input0, input1 : in std_logic;
				output	   	: out std_logic);
	end component;
	
begin

	
	
end Structural;	
	
	
	
	
	
	
	
	
	
	