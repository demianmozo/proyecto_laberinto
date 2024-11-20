library verilog;
use verilog.vl_types.all;
entity Celda_vlg_check_tst is
    port(
        muros_ady       : in     vl_logic_vector(3 downto 0);
        Peso            : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end Celda_vlg_check_tst;
