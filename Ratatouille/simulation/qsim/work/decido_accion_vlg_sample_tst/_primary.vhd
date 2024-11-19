library verilog;
use verilog.vl_types.all;
entity decido_accion_vlg_sample_tst is
    port(
        habilitacion    : in     vl_logic;
        sentido_actual  : in     vl_logic_vector(1 downto 0);
        sentido_futuro  : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end decido_accion_vlg_sample_tst;
