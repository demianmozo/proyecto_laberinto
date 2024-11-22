library verilog;
use verilog.vl_types.all;
entity seleccionadores_mux_vlg_check_tst is
    port(
        Y1              : in     vl_logic_vector(3 downto 0);
        Y2              : in     vl_logic_vector(3 downto 0);
        Y3              : in     vl_logic_vector(3 downto 0);
        Y4              : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end seleccionadores_mux_vlg_check_tst;
