library verilog;
use verilog.vl_types.all;
entity elijo_sentido_vlg_sample_tst is
    port(
        adelante        : in     vl_logic_vector(2 downto 0);
        atras           : in     vl_logic_vector(2 downto 0);
        derecha         : in     vl_logic_vector(2 downto 0);
        izquierda       : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end elijo_sentido_vlg_sample_tst;
