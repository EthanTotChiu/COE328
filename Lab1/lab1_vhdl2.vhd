LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab1_vhdl2 IS 
PORT (
w1,w2,w3, w4 : IN STD_LOGIC ;
g,h : OUT STD_LOGIC);
end lab1_vhdl2;	

ARCHITECTURE Behavior OF lab1_vhdl2 IS
BEGIN
g <= (w1 and w2) or (w3 and w4);
h <= (w1 and w3) or (w2 and w4);
END Behavior;
