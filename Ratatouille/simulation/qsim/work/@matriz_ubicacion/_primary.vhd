library verilog;
use verilog.vl_types.all;
entity Matriz_ubicacion is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
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
        C_ad            : out    vl_logic_vector(3 downto 0);
        C_at            : out    vl_logic_vector(3 downto 0);
        C_der           : out    vl_logic_vector(3 downto 0);
        C_izq           : out    vl_logic_vector(3 downto 0);
        P_ad            : out    vl_logic_vector(2 downto 0);
        P_at            : out    vl_logic_vector(2 downto 0);
        P_der           : out    vl_logic_vector(2 downto 0);
        P_izq           : out    vl_logic_vector(2 downto 0);
        pos_act         : out    vl_logic_vector(3 downto 0);
        sent_act        : out    vl_logic_vector(1 downto 0)
    );
end Matriz_ubicacion;
