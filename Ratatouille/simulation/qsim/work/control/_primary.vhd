library verilog;
use verilog.vl_types.all;
entity control is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        LINEA           : in     vl_logic;
        MURO            : in     vl_logic;
        fin_gir         : in     vl_logic;
        CUENTA          : out    vl_logic;
        ACT_GIRO        : out    vl_logic;
        ACT_MUROS       : out    vl_logic;
        ACT_SENTIDO     : out    vl_logic
    );
end control;
