LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab2_vhdl1 IS 
PORT (
x1,x2,x3,x4 : IN STD_LOGIC ;
f7 : OUT STD_LOGIC);
end lab2_vhdl1;	

ARCHITECTURE Behavior OF lab2_vhdl1 IS
BEGIN
f7 <= (x2 and (not x3) and (not x4)) or 
(x1 and (not x2) and (not x3)) or 
(x1 and x2 and x3 and x4) or 
(x1 and (not x2) and x3 and (not x4)) or 
((not x1) and x2 and x3 and (not x4));
END Behavior;
