library verilog;
use verilog.vl_types.all;
entity Celda is
    port(
        muros_ady       : out    vl_logic_vector(3 downto 0);
        CLK             : in     vl_logic;
        Reset           : in     vl_logic;
        hab_escrit      : in     vl_logic_vector(3 downto 0);
        Muro_Ad         : in     vl_logic;
        Muro_At         : in     vl_logic;
        Muro_Der        : in     vl_logic;
        Muro_Izq        : in     vl_logic;
        Peso            : out    vl_logic_vector(2 downto 0);
        Adelante        : in     vl_logic_vector(2 downto 0);
        Atras           : in     vl_logic_vector(2 downto 0);
        Derecha         : in     vl_logic_vector(2 downto 0);
        Izquierda       : in     vl_logic_vector(2 downto 0)
    );
end Celda;
