library verilog;
use verilog.vl_types.all;
entity Matriz_ubicacion_vlg_sample_tst is
    port(
        ADC_DOUT        : in     vl_logic;
        CLK             : in     vl_logic;
        Reset1          : in     vl_logic;
        SENSOR_LINEA    : in     vl_logic;
        SENSOR_MURO     : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Matriz_ubicacion_vlg_sample_tst;
