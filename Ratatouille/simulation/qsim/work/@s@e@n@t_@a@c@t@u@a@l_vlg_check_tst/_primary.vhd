library verilog;
use verilog.vl_types.all;
entity SENT_ACTUAL_vlg_check_tst is
    port(
        q_out           : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end SENT_ACTUAL_vlg_check_tst;
