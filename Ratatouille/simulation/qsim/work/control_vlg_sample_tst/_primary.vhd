library verilog;
use verilog.vl_types.all;
entity control_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        fin_gir         : in     vl_logic;
        LINEA           : in     vl_logic;
        MURO            : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end control_vlg_sample_tst;
