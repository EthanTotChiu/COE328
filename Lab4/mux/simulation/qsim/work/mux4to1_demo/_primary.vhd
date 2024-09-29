library verilog;
use verilog.vl_types.all;
entity mux4to1_demo is
    port(
        f               : out    vl_logic;
        w0              : in     vl_logic;
        w1              : in     vl_logic;
        w2              : in     vl_logic;
        w3              : in     vl_logic;
        s               : in     vl_logic_vector(1 downto 0)
    );
end mux4to1_demo;
