library verilog;
use verilog.vl_types.all;
entity Celda_vlg_sample_tst is
    port(
        Adelante        : in     vl_logic_vector(2 downto 0);
        Atras           : in     vl_logic_vector(2 downto 0);
        CLK             : in     vl_logic;
        Derecha         : in     vl_logic_vector(2 downto 0);
        hab_escrit      : in     vl_logic_vector(3 downto 0);
        Izquierda       : in     vl_logic_vector(2 downto 0);
        Muro_Ad         : in     vl_logic;
        Muro_At         : in     vl_logic;
        Muro_Der        : in     vl_logic;
        Muro_Izq        : in     vl_logic;
        Reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Celda_vlg_sample_tst;
