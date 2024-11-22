library verilog;
use verilog.vl_types.all;
entity Control_Motores_vlg_sample_tst is
    port(
        ADC_DOUT        : in     vl_logic;
        areset          : in     vl_logic;
        inclk0          : in     vl_logic;
        llego           : in     vl_logic;
        SEL             : in     vl_logic_vector(1 downto 0);
        SL              : in     vl_logic;
        SR              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Control_Motores_vlg_sample_tst;
