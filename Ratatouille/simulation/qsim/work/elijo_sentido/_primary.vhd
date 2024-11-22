library verilog;
use verilog.vl_types.all;
entity elijo_sentido is
    port(
        adelante        : in     vl_logic_vector(2 downto 0);
        atras           : in     vl_logic_vector(2 downto 0);
        derecha         : in     vl_logic_vector(2 downto 0);
        izquierda       : in     vl_logic_vector(2 downto 0);
        menor_cod       : out    vl_logic_vector(1 downto 0)
    );
end elijo_sentido;
