library verilog;
use verilog.vl_types.all;
entity mux2to1 is
    port(
        w0              : in     vl_logic;
        w1              : in     vl_logic;
        s               : in     vl_logic;
        f               : out    vl_logic
    );
end mux2to1;
