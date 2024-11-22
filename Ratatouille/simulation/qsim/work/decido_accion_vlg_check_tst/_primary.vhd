library verilog;
use verilog.vl_types.all;
entity decido_accion_vlg_check_tst is
    port(
        seleccion       : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end decido_accion_vlg_check_tst;
