library Components;
library IEEE;

use Components.all;
use IEEE.STD_LOGIC_1164.all;

entity CRC_Encoder is
	port(	m	 : in std_logic_vector(15 downto 0);
			fcs : out std_logic_vector(23 downto 0));
			
end CRC_Encoder;			

architecture Structural of CRC_Encoder is

signal xor0_2, xor0_15, xor1_3, xor1_13, xor2_10, xor3_10, xor4_6, xor5_7, xor8_9, xor9_14, xor11_12 : std_logic;
signal xor12, xor13, xor14, xor15, xor16 : std_logic;
signal xor0a, xor0b, xor1a, xor2a, xor2b, xor3a, xor4a, xor5a ,xor6a, xor6b, xor7a, xor7b, xor7c : std_logic;
signal res0, res1, res2, res3, res4, res5, res6, res7 : std_logic;
	
	component xor2to1
		port(	input0, input1 : in std_logic;
				output	   	: out std_logic);
	end component;
	
begin

	fcs(23 downto 8) <= m;
	
	------------------------------generic----------------------------------------
	g1  : xor2to1 port map(m(0), m(2), xor0_2);				--m0  xor m2
	g2  : xor2to1 port map(m(0), m(15), xor0_15); 			--m0  xor m15
	g3  : xor2to1 port map(m(1), m(3), xor1_3); 				--m1  xor m3
	g4  : xor2to1 port map(m(1), m(13), xor1_13); 			--m1  xor m13
	g5  : xor2to1 port map(m(2), m(10), xor2_10); 			--m2  xor m10
	g6  : xor2to1 port map(m(3), m(10), xor3_10); 			--m3  xor m10
	g7  : xor2to1 port map(m(4), m(6), xor4_6);				--m4  xor m6
	g8  : xor2to1 port map(m(5), m(7), xor5_7);				--m5  xor m7
	g9  : xor2to1 port map(m(8), m(9), xor8_9);				--m8  xor m9
	g10 : xor2to1 port map(m(9), m(14), xor9_14);			--m9  xor m14
	g11 : xor2to1 port map(m(11), m(12), xor11_12);			--m11 xor m12
	-----------------------------------------------------------------------------
	g12 : xor2to1 port map(xor5_7, xor8_9, xor12);			--(m5xorm7)  xor (m8xorm9)
	g13 : xor2to1 port map(xor0_15, xor1_3, xor13);			--(m0xorm15) xor (m1xorm3)
	g14 : xor2to1 port map(xor4_6, xor5_7, xor14);			--(m4xorm6)  xor (m5xorm7)
	g15 : xor2to1 port map(xor2_10, xor9_14, xor15);		--(m2xorm10) xor (m9xorm14)
	g16 : xor2to1 port map(xor0_2, xor8_9, xor16);			--(m0xorm2)  xor (m8xorm9)
	
	
	-----------------------------------------------------------------------------
	
	
	----------------------------------c7-----------------------------------------
	c7a  : xor2to1 port map(xor15, xor4_6, xor7a);
	c7b  : xor2to1 port map(xor7a, m(7), xor7b);
	c7c  : xor2to1 port map(xor7b, m(8), xor7c);
	c7d  : xor2to1 port map(xor7c, m(11), res7);
	
	fcs(7) <= res7;
	
	----------------------------------c6-----------------------------------------
	c6a  : xor2to1 port map(xor12, xor3_10, xor6a);
	c6b  : xor2to1 port map(xor1_13, m(6), xor6b);
	c6c  : xor2to1 port map(xor6a, xor6b, res6);
	
	fcs(6) <= res6;
	
	----------------------------------c5-----------------------------------------
	c5a  : xor2to1 port map(xor16, xor14, xor5a);
	c5b  : xor2to1 port map(xor5a, m(12), res5);
	
	fcs(5) <= res5;
	
	----------------------------------c4-----------------------------------------
	c4a  : xor2to1 port map(xor15, xor1_3, xor4a);
	c4b  : xor2to1 port map(xor4a, m(5), res4);
	
	fcs(4) <= res4;
	
	----------------------------------c3-----------------------------------------
	c3a  : xor2to1 port map(xor16, xor1_13, xor3a);
	c3b  : xor2to1 port map(xor3a, m(4), res3);
	
	fcs(3) <= res3;
	
	----------------------------------c2-----------------------------------------
	c2a  : xor2to1 port map(xor13, xor4_6, xor2a);
	c2b  : xor2to1 port map(xor15, xor11_12, xor2b);
	c2c  : xor2to1 port map(xor2a, xor2b, res2);
	
	fcs(2) <= res2;
	
	----------------------------------c1-----------------------------------------
	c1a  : xor2to1 port map(xor13, xor14, xor1a);
	c1b  : xor2to1 port map(xor1a, m(13), res1);
	
	fcs(1) <= res1;
	
	----------------------------------c0-----------------------------------------
	c0a  : xor2to1 port map(xor12, xor0_15, xor0a);
	c0b  : xor2to1 port map(xor11_12, xor3_10, xor0b);
	c0c  : xor2to1 port map(xor0a, xor0b, res0);
	
	fcs(0) <= res0;
	
	
end Structural;	
	
	
	
	
	
	
	
	
	
	