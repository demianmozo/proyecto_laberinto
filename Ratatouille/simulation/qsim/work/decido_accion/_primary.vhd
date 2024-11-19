library verilog;
use verilog.vl_types.all;
entity decido_accion is
    port(
        sentido_actual  : in     vl_logic_vector(1 downto 0);
        sentido_futuro  : in     vl_logic_vector(1 downto 0);
        habilitacion    : in     vl_logic;
        seleccion       : out    vl_logic_vector(1 downto 0)
    );
end decido_accion;
