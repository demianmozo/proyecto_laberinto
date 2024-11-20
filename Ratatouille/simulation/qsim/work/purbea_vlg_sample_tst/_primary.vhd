library verilog;
use verilog.vl_types.all;
entity purbea_vlg_sample_tst is
    port(
        hola            : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end purbea_vlg_sample_tst;
