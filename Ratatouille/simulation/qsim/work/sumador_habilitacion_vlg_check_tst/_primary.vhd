library verilog;
use verilog.vl_types.all;
entity sumador_habilitacion_vlg_check_tst is
    port(
        S               : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end sumador_habilitacion_vlg_check_tst;
