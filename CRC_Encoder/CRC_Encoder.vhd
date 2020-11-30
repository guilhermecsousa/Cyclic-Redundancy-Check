library Components;
library IEEE;

use Components.all;
use IEEE.STD_LOGIC_1164.all;

entity CRC_Encoder is
	port(	m	 : in std_logic_vector(15 downto 0);
			crc : out std_logic_vector(23 downto 0);
			cc : out std_logic_vector (7 downto 0));
			
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

	crc(23 downto 8) <= m;
	
	------------------------------generic----------------------------------------
	g1  : xor2to1 port map(m(0), m(2), xor0_2);				--0  xor 2
	g2  : xor2to1 port map(m(0), m(15), xor0_15); 			--0  xor 15
	g3  : xor2to1 port map(m(1), m(3), xor1_3); 				--1  xor 3
	g4  : xor2to1 port map(m(1), m(13), xor1_13); 			--1  xor 13
	g5  : xor2to1 port map(m(2), m(10), xor2_10); 			--2  xor 10
	g6  : xor2to1 port map(m(3), m(10), xor3_10); 			--3  xor 10
	g7  : xor2to1 port map(m(4), m(6), xor4_6);				--4  xor 6
	g8  : xor2to1 port map(m(5), m(7), xor5_7);				--5  xor 7
	g9  : xor2to1 port map(m(8), m(9), xor8_9);				--8  xor 9
	g10 : xor2to1 port map(m(9), m(14), xor9_14);			--9  xor 14
	g11 : xor2to1 port map(m(11), m(12), xor11_12);			--11 xor 12
	-----------------------------------------------------------------------------
	g12 : xor2to1 port map(xor5_7, xor8_9, xor12);			--(5xor7)  xor (8xor9)
	g13 : xor2to1 port map(xor0_15, xor1_3, xor13);			--(0xor15) xor (1xor3)
	g14 : xor2to1 port map(xor4_6, xor5_7, xor14);			--(4xor6)  xor (5xor7)
	g15 : xor2to1 port map(xor2_10, xor9_14, xor15);		--(2xor10) xor (9xor14)
	g16 : xor2to1 port map(xor0_2, xor8_9, xor16);			--(0xor2)  xor (8xor9)
	
	
	-----------------------------------------------------------------------------
	
	
	----------------------------------x7-----------------------------------------
	x7a  : xor2to1 port map(xor15, xor4_6, xor7a);
	x7b  : xor2to1 port map(xor7a, m(7), xor7b);
	x7c  : xor2to1 port map(xor7b, m(8), xor7c);
	x7d  : xor2to1 port map(xor7c, m(11), res7);
	
	crc(7) <= res7;
	cc(7) <= res7;
	----------------------------------x6-----------------------------------------
	x6a  : xor2to1 port map(xor12, xor3_10, xor6a);
	x6b  : xor2to1 port map(xor1_13, m(6), xor6b);
	x6c  : xor2to1 port map(xor6a, xor6b, res6);
	
	crc(6) <= res6;
	cc(6) <= res6;
	
	----------------------------------x5-----------------------------------------
	x5a  : xor2to1 port map(xor16, xor14, xor5a);
	x5b  : xor2to1 port map(xor5a, m(12), res5);
	
	crc(5) <= res5;
	cc(5) <= res5;
	----------------------------------x4-----------------------------------------
	x4a  : xor2to1 port map(xor15, xor1_3, xor4a);
	x4b  : xor2to1 port map(xor4a, m(5), res4);
	
	crc(4) <= res4;
	cc(4) <= res4;
	----------------------------------x3-----------------------------------------
	x3a  : xor2to1 port map(xor16, xor1_13, xor3a);
	x3b  : xor2to1 port map(xor3a, m(4), res3);
	
	crc(3) <= res3;
	cc(3) <= res3;
	----------------------------------x2-----------------------------------------
	x2a  : xor2to1 port map(xor13, xor4_6, xor2a);
	x2b  : xor2to1 port map(xor15, xor11_12, xor2b);
	x2c  : xor2to1 port map(xor2a, xor2b, res2);
	
	crc(2) <= res2;
	cc(2) <= res2;
	----------------------------------x1-----------------------------------------
	x1a  : xor2to1 port map(xor13, xor14, xor1a);
	x1b  : xor2to1 port map(xor1a, m(13), res1);
	
	crc(1) <= res1;
	cc(1) <= res1;
	----------------------------------x0-----------------------------------------
	x0a  : xor2to1 port map(xor12, xor0_15, xor0a);
	x0b  : xor2to1 port map(xor11_12, xor3_10, xor0b);
	x0c  : xor2to1 port map(xor0a, xor0b, res0);
	
	crc(0) <= res0;
	cc(0) <= res0;
	
	
end Structural;	
	
	
	
	
	
	
	
	
	
	