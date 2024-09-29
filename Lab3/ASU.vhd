library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY ASU is
PORT (Cin:  in std_logic;
		X,Y: in std_logic_vector (3 downto 0);
		S: out std_logic_vector (3 downto 0);
		Cout, Overflow, neg: out std_logic);
END ASU;

architecture Behavior of ASU is
signal Sum: std_logic_vector (4 downto 0);
signal Ytemp: std_logic_vector (3 downto 0);
begin 
Ytemp(3) <= Y(3) xor Cin;
Ytemp(2) <= Y(2) xor Cin;
Ytemp(1) <= Y(1) xor Cin;
Ytemp(0) <= Y(0) xor Cin;

Sum <= ('0' & X) + ('0' & Ytemp) + Cin;
S <= Sum (3 downto 0);
Cout <= Sum (4);
Overflow <= Sum(4) xor X(3) xor Ytemp(3) xor Sum(3);
neg <= Sum(3);
END behavior;
	