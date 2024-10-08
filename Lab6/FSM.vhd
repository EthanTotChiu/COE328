library ieee;
use ieee.std_logic_1164.all;
entity FSM is
	port(
		clk : in std_logic;
		data_in : in std_logic;
		reset : in std_logic;
		student_id: out std_logic_vector(3 downto 0);
		current_state: out std_logic_vector(3 downto 0));
end entity;

architecture fsm of FSM is
	
	type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8);

	signal yfsm : state_type;	
	--signal data_out: std_logic_vector(3 downto 0);
	--signal current_statee: std_logic_vector (3 downto 0);
	
begin
    process (clk, reset,data_in)
    begin 
        if reset = '0' then
            yfsm <=s0;
        elsif (clk 'EVENT AND clk='1') then    
            case yfsm is
				when s0 => 
					if data_in = '1'then 
						yfsm <= s1;
					else
						yfsm <=s0;
					end if;
					
				when s1 => 
					if data_in = '1'then 
						yfsm <= s2;
					else
						yfsm <=s1;
					end if;
					
				when s2 => 
					if data_in = '1'then 
						yfsm <= s3;
					else
						yfsm <=s2;
					end if;
					
				when s3 => 
					if data_in = '1'then 
						yfsm <= s4;
					else
						yfsm <=s3;
					end if;
					
				when s4 => 
					if data_in = '1'then 
						yfsm <= s5;
					else
						yfsm <=s4;
					end if;
					
				when s5 => 
					if data_in = '1'then 
						yfsm <= s6;
					else
						yfsm <=s5;
					end if;
					
				when s6 => 
					if data_in = '1'then 
						yfsm <= s7;
					else
						yfsm <=s6;
					end if;
					
				when s7 => 
					if data_in = '1'then 
						yfsm <= s8;
					else
						yfsm <=s7;
					end if;
					
				when s8 => 
					if data_in = '1'then 
						yfsm <= s0;
					else
						yfsm <=s8;
					end if;
				
			end case;
		end if;
	end process;
	
	process (yfsm, data_in)
		begin -- Moore Machine -- 501158694
        case yfsm is 
            when s0 => --5
                    student_id <= "0101";
						  current_state <="0001";
            when s1 => --0
                    student_id <= "0000";
						  current_state <="0010";
            when s2 => --1
                    student_id <= "0001";
						  current_state <="0011";  
            when s3 => --1  
                    student_id <= "0001";
						  current_state <="0100";  
            when s4 => --5  
                    student_id <= "0101";
						  current_state <="0101"; 
            when s5 => --8
                    student_id <= "1000";
						  current_state <="0110";
            when s6 => --6
                    student_id <= "0110";
						  current_state <="0111";  
            when s7 => --9
                    student_id <= "1001";
						  current_state <="1000";
            when s8 => --4
                    student_id <= "0100";
						  current_state <="0000";
            end case;
	end process;
end fsm;