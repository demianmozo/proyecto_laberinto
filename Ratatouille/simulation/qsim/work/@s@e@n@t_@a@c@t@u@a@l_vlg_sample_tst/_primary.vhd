library verilog;
use verilog.vl_types.all;
entity SENT_ACTUAL_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        d_in            : in     vl_logic_vector(1 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end SENT_ACTUAL_vlg_sample_tst;
