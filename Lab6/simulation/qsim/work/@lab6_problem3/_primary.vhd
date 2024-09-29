library verilog;
use verilog.vl_types.all;
entity Lab6_problem3 is
    port(
        res             : out    vl_logic_vector(3 downto 0);
        Clock           : in     vl_logic;
        Reset           : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        decoder_enabler : in     vl_logic;
        data_in         : in     vl_logic;
        ssses           : out    vl_logic_vector(3 downto 0);
        student_id_leds : out    vl_logic_vector(0 to 6)
    );
end Lab6_problem3;
