library verilog;
use verilog.vl_types.all;
entity sumador_habilitacion_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(2 downto 0);
        EN              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end sumador_habilitacion_vlg_sample_tst;
