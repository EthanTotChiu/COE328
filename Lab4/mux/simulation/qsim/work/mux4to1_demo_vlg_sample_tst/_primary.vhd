library verilog;
use verilog.vl_types.all;
entity mux4to1_demo_vlg_sample_tst is
    port(
        s               : in     vl_logic_vector(1 downto 0);
        w0              : in     vl_logic;
        w1              : in     vl_logic;
        w2              : in     vl_logic;
        w3              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mux4to1_demo_vlg_sample_tst;
