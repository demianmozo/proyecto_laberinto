library verilog;
use verilog.vl_types.all;
entity elijo_sentido_vlg_check_tst is
    port(
        menor_cod       : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end elijo_sentido_vlg_check_tst;
