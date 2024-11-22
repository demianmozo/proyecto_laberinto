library verilog;
use verilog.vl_types.all;
entity DFF_fijo_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        entrada         : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end DFF_fijo_vlg_sample_tst;
