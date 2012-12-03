library verilog;
use verilog.vl_types.all;
entity fir is
    port(
        clk             : in     vl_logic;
        nReset          : in     vl_logic;
        X_in            : in     vl_logic_vector(11 downto 0);
        Y_out           : out    vl_logic_vector(11 downto 0)
    );
end fir;
