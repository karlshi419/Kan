library verilog;
use verilog.vl_types.all;
entity testbench is
    generic(
        Clock           : integer := 2;
        Permutation     : integer := 262144
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Clock : constant is 1;
    attribute mti_svvh_generic_type of Permutation : constant is 1;
end testbench;
