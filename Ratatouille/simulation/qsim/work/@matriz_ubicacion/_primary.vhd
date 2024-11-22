library verilog;
use verilog.vl_types.all;
entity Matriz_ubicacion is
    port(
        ADC_SCLK        : out    vl_logic;
        CLK             : in     vl_logic;
        Reset1          : in     vl_logic;
        SENSOR_LINEA    : in     vl_logic;
        SENSOR_MURO     : in     vl_logic;
        ADC_DOUT        : in     vl_logic;
        ADC_CS_N        : out    vl_logic;
        ADC_DIN         : out    vl_logic;
        MD0             : out    vl_logic;
        MD1             : out    vl_logic;
        MI0             : out    vl_logic;
        MI1             : out    vl_logic;
        VELD            : out    vl_logic;
        VELI            : out    vl_logic;
        GIROO           : out    vl_logic;
        SENTIDOO        : out    vl_logic;
        MUROO           : out    vl_logic;
        CUENTAA         : out    vl_logic;
        pos_act         : out    vl_logic_vector(3 downto 0);
        sent_act        : out    vl_logic_vector(1 downto 0)
    );
end Matriz_ubicacion;
