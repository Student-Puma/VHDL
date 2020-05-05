library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity ApartadoD is
  port( reset,alpha,E: in std_logic;
	Q0,Q1,Q2: out std_logic);
end entity ApartadoD;

architecture ApartadoD of ApartadoD is
begin
 	process(E)
		variable contador: std_logic_vector(2 downto 0) := "000";
	begin
		if reset = '0' then contador := "000";
		elsif alpha = '1' and E'event and E = '1' then
			contador := std_logic_vector(unsigned(contador) + 1);
		end if;
		Q0 <= contador(0);
		Q1 <= contador(1);
		Q2 <= contador(2);
	end process;
end ApartadoD;