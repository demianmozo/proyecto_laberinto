library verilog;
use verilog.vl_types.all;
entity purbea is
    port(
        pin_name1       : out    vl_logic;
        hola            : in     vl_logic_vector(3 downto 0)
    );
end purbea;
