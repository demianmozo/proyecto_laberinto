library verilog;
use verilog.vl_types.all;
entity DFF_fijo is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        entrada         : in     vl_logic;
        salida          : out    vl_logic
    );
end DFF_fijo;
