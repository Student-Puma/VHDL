library ieee;
use ieee.std_logic_1164.all;

entity ApartadoG is
  port( clk,e: in std_logic;
	s: out std_logic);
end entity ApartadoG;

architecture ApartadoG of ApartadoG is
begin
 	process(e, clk)
		variable flag: boolean := false;
	begin
		if falling_edge(e) then flag := true; end if;
		if rising_edge(clk) then
			if flag then
				s <= '1';
				flag := false;
			else
				s <= '0';
			end if;
		end if;
	end process;
end ApartadoG;
