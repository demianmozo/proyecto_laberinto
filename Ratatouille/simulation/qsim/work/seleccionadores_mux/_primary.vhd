library verilog;
use verilog.vl_types.all;
entity seleccionadores_mux is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        X               : in     vl_logic_vector(3 downto 0);
        Y1              : out    vl_logic_vector(3 downto 0);
        Y2              : out    vl_logic_vector(3 downto 0);
        Y3              : out    vl_logic_vector(3 downto 0);
        Y4              : out    vl_logic_vector(3 downto 0)
    );
end seleccionadores_mux;
