library verilog;
use verilog.vl_types.all;
entity control_vlg_check_tst is
    port(
        ACT_GIRO        : in     vl_logic;
        ACT_MUROS       : in     vl_logic;
        ACT_SENTIDO     : in     vl_logic;
        CUENTA          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end control_vlg_check_tst;
