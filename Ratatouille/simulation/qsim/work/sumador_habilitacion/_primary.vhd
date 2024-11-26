library verilog;
use verilog.vl_types.all;
entity sumador_habilitacion is
    port(
        A               : in     vl_logic_vector(2 downto 0);
        EN              : in     vl_logic;
        S               : out    vl_logic_vector(2 downto 0)
    );
end sumador_habilitacion;
