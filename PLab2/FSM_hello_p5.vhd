library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity FSM_hello is
	port(
			clock : in std_logic;
			outp0, outp1, outp2, outp3, outp4, outp5, outp6, outp7 : out std_logic_vector(2 downto 0)
		 );
end entity;

architecture hardware of FSM_hello is

type states is (S0, S1, S2, S3, S4, S5, S6, S7);
signal EA, PE : states;

begin

P1: process(clock)
	begin
	
		if(clock'event and clock = '1') then
			EA <= PE;
		end if;
	end process;

-- S0 : _ _ _ H E L L O           H : "0001001"
-- S1 : _ _ H E L L O _				 E : "0000110"
-- S2 : _ H E L L O _ _				 L : "1000111"
-- S3 : H E L L O _ _ _				 O : "1000000"
-- S4 : E L L O _ _ _ H				 H : "000"
-- S5 : L L O _ _ _ H E				 E : "001"
-- S6 : L O _ _ _ H E L           L : "010"
-- S7 : O _ _ _ H E L L				 O : "011"
	
P2: process(EA)
	begin
			
			case EA is
			
				when S0 =>
					outp7 <= "111"; 
					outp6 <= "111"; 
					outp5 <= "111"; 
					outp4 <= "000"; 
					outp3 <= "001"; 
					outp2 <= "010"; 
					outp1 <= "010"; 
					outp0 <= "011";
					PE <= S1;
				when S1 => 
					outp7 <= "111"; 
					outp6 <= "111"; 
					outp5 <= "000"; 
					outp4 <= "001"; 
					outp3 <= "010"; 
					outp2 <= "010"; 
					outp1 <= "011"; 
					outp0 <= "111";
					PE <= S2;
				when S2 =>
					outp7 <= "111"; 
					outp6 <= "000"; 
					outp5 <= "001"; 
					outp4 <= "010"; 
					outp3 <= "010"; 
					outp2 <= "011"; 
					outp1 <= "111"; 
					outp0 <= "111";
					PE <= S3;
				when S3 =>
					outp7 <= "000"; 
					outp6 <= "001";
					outp5 <= "010"; 
					outp4 <= "010"; 
					outp3 <= "011"; 
					outp2 <= "111"; 
					outp1 <= "111"; 
					outp0 <= "111";
					PE <= S4;
				when S4 =>
					outp7 <= "001"; 
					outp6 <= "010"; 
					outp5 <= "010"; 
					outp4 <= "011"; 
					outp3 <= "111"; 
					outp2 <= "111"; 
					outp1 <= "111"; 
					outp0 <= "000";
					PE <= S5;
				when S5 =>
					outp7 <= "010"; 
					outp6 <= "010"; 
					outp5 <= "011"; 
					outp4 <= "111"; 
					outp3 <= "111"; 
					outp2 <= "111"; 
					outp1 <= "000"; 
					outp0 <= "001";
					PE <= S6;
				when S6 =>
					outp7 <= "010"; 
					outp6 <= "011"; 
					outp5 <= "111"; 
					outp4 <= "111"; 
					outp3 <= "111"; 
					outp2 <= "000"; 
					outp1 <= "001"; 
					outp0 <= "010";
					PE <= S7;
				when S7 =>
					outp7 <= "011"; 
					outp6 <= "111"; 
					outp5 <= "111"; 
					outp4 <= "111"; 
					outp3 <= "000"; 
					outp2 <= "001"; 
					outp1 <= "010"; 
					outp0 <= "010";
					PE <= S0;
			end case;
	end process;
end architecture;