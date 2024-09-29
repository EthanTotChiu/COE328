LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY sseg_mod IS
PORT (bcd: IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
	leds : OUT STD_LOGIC_VECTOR(0 TO 6));
	
END sseg_mod;

ARCHITECTURE Behavior OF sseg_mod IS
BEGIN
PROCESS (bcd)
BEGIN

CASE bcd IS -- abcdefg
	WHEN "0000" => leds <= not "0111011"; -- y
	WHEN "0001" => leds <= not "0010101"; -- n
	When Others => leds <= not "1001111"; -- E
	
END CASE;
END PROCESS;
END Behavior;