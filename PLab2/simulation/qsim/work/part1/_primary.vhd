library verilog;
use verilog.vl_types.all;
entity part1 is
    port(
        KEY0            : in     vl_logic;
        SW              : in     vl_logic_vector(1 downto 0);
        HEX3            : out    vl_logic_vector(6 downto 0);
        HEX2            : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX0            : out    vl_logic_vector(6 downto 0)
    );
end part1;
