library verilog;
use verilog.vl_types.all;
entity Lab6_problem3_vlg_check_tst is
    port(
        res             : in     vl_logic_vector(3 downto 0);
        ssses           : in     vl_logic_vector(3 downto 0);
        student_id_leds : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end Lab6_problem3_vlg_check_tst;
