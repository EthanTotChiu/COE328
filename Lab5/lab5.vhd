library ieee;
use ieee.std_logic_1164.all;
entity lab5 is
    port
    (
        clk                : in std_logic;
        data_in            : in std_logic;
        reset                : in std_logic;
        student_id         : out std_logic_vector(3 downto 0);
        current_state    : out std_logic_vector(3 DOWNTO 0));
end entity;

architecture fsm of lab5 is

    type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8);
    
    signal yfsm : state_type;
begin 
    process (clk, reset,data_in)
    begin 
        if reset = '1' then
            yfsm <=s0;
        elsif (clk 'EVENT AND clk='1') then    
            case yfsm is -- Sequence #3
                when s0=>
                    if data_in= '1' then 
                        yfsm<=s2;
                    else 
                        yfsm<= s0;
                    end if;
                when s1=>
                    if data_in= '1' then 
                        yfsm<=s3;
                    else 
                        yfsm<= s1;
                    end if;
                when s2=>
                    if data_in= '1' then 
                        yfsm<=s4;
                    else 
                        yfsm<= s2;
                    end if;
                when s3=>
                    if data_in= '1' then 
                        yfsm<=s8;
                    else 
                        yfsm<= s3;
                    end if;
                when s4=>
                    if data_in= '1' then 
                        yfsm<=s1;
                    else 
                        yfsm<= s4;
                    end if;
                when s5=>
                    if data_in= '1' then 
                        yfsm<=s7;
                    else 
                        yfsm<= s5;
                    end if;
                when s6=>
                    if data_in= '1' then 
                        yfsm<=s5;
                    else 
                        yfsm<= s6;
                    end if;
                when s7=>
                    if data_in= '1' then 
                        yfsm<=s0;
                    else 
                        yfsm<= s7;
                    end if;
                when s8=>
                    if data_in= '1' then 
                        yfsm<=s6;
                    else 
                        yfsm<= s8;
                    end if;
            end case;
        end if;
    end process;
    
    process (yfsm, data_in)
    begin -- mearly Machine
        case yfsm is 
            when s0 => --5 
                if data_in = '0' then 
                    student_id <= "0101";
                else
                    student_id <= "0000";
                end if;
            when s1 => --0
                if data_in = '0' then 
                    student_id <= "0000";               

                else
                    student_id <= "1001";
                end if;
            when s2 => --1
                if data_in = '0' then 
                    student_id <= "0001";
                else
                    student_id <= "1000";
                end if;
            when s3 => --1
                if data_in = '0' then 
                    student_id <= "0001";
                else
                    student_id <= "0001";
                end if;
            when s4 => --5
                if data_in = '0' then 
                    student_id <= "0101";
                else
                    student_id <= "0001";
                end if;
            when s5 => --8
                if data_in = '0' then 
                    student_id <= "1000";
                else
                    student_id <= "0101";
                end if;
            when s6 => --6
                if data_in = '0' then 
                    student_id <= "0110";
                else
                    student_id <= "0011";
                end if;
            when s7 => --9
                if data_in = '0' then 
                    student_id <= "1001";
                else
                    student_id <= "1000";
                end if;
            when s8 =>--4
                if data_in = '0' then 
                    student_id <= "0100";
                else
                    student_id <= "0000";
                end if;
            end case;
  end process;
    
	 process(yfsm)
	 begin 
	 case yfsm is 
            when s0 =>
                 current_state <= "0000";

            when s1 =>
                current_state <= "0001";
            when s2 =>
                current_state <= "0010";
            when s3 =>
                current_state <= "0011";
            when s4 =>
                current_state <= "0100";
            when s5 =>
                current_state <= "0101";
            when s6 =>
                current_state <= "0110";
            when s7 =>
                current_state <= "0111";
            when s8 =>
                current_state <= "1000";    
            
        end case;
    end process;
    
end fsm;              