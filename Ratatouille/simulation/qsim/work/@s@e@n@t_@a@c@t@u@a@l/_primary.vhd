library verilog;
use verilog.vl_types.all;
entity SENT_ACTUAL is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        d_in            : in     vl_logic_vector(1 downto 0);
        q_out           : out    vl_logic_vector(1 downto 0)
    );
end SENT_ACTUAL;
