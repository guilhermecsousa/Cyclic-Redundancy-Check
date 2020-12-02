library IEEE;

use IEEE.STD_LOGIC_1164.all;

entity CRC_Checker is
	port(fcs 			: in  std_logic_vector(23 downto 0);
		  check_error  : out std_logic);
end CRC_Checker;		

architecture Structural of CRC_Checker is

	signal enc_out : std_logic_vector(23 downto 0);
	signal err		: std_logic_vector(7 downto 0);
	
	component xor2to1
		port(	input0, input1 : in std_logic;
				output	   	: out std_logic);
	end component;
	
	Component CRC_Encoder is
		port(	m 		: in std_logic_vector(15 downto 0);
				fcs 	: out std_logic_vector(23 downto 0));
	end Component;		

begin
	
	encoder : CRC_Encoder port map(fcs(23 downto 8), enc_out);
	
	error0 : xor2to1 port map(enc_out(0), fcs(0), err(0));
	error1 : xor2to1 port map(enc_out(1), fcs(1), err(1));
	error2 : xor2to1 port map(enc_out(2), fcs(2), err(2));
	error3 : xor2to1 port map(enc_out(3), fcs(3), err(3));
	error4 : xor2to1 port map(enc_out(4), fcs(4), err(4));
	error5 : xor2to1 port map(enc_out(5), fcs(5), err(5));
	error6 : xor2to1 port map(enc_out(6), fcs(6), err(6));
	error7 : xor2to1 port map(enc_out(7), fcs(7), err(7));
	
	check_error	<= err(0) or err(1) or err(2) or err(3) or err(4) or err(5) or err(6) or err(7);
	
end Structural;	
	
	
	
	
	
	
	
	
	
	