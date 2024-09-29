library ieee;
USE ieee.std_logic_1164.all;
ENTITY Vhdl1 IS 
PORT (S: IN std_logic_vector (3 downto 0);
		L: OUT std_logic_vector (3 downto 0));
		end Vhdl1;

ARCHITECTURE Behavior OF Vhdl1 IS
BEGIN
Process (S)
BEGIN
L(3) <= '0';
L(2) <= (not S(0) and not S(1) and not S(3)) or (not S(1) and not S(2) and S(3));
L(1) <= ((not S(0) and not (S(1))) and ((not S(2) and S(3)) or (S(2) and not S(3))));
L(0) <= ((not S(2)) and ((not S(0) and not S(1)) or (S(0) and not S(3)) or (S(0) and not S(1) and S(3))));
END Process;
END Behavior;