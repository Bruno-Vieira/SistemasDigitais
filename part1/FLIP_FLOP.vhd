library IEEE;
use IEEE.std_logic_1164.all;

entity FLIP_FLOP is
	port(
			D, clk: in std_logic;
			Q: out std_logic
	);
end entity;

architecture hardware of FLIP_FLOP is
begin

	process(clk)
	begin
		
		if rising_edge(clk) then

				Q <= D;

		end if;

	end process;

end architecture;	
