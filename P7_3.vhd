library ieee;
use ieee.std_logic_1164.all;

entity ApartadoC is
	port(	D: in std_logic;
		R,clk: in std_logic;
		Q: out std_logic);
end entity ApartadoC;

architecture ApartadoC of ApartadoC is
begin
	process(clk, R)
	begin
		if R = '0' then
			q <= '0';
		elsif clk'event and clk = '1' then
			q <= not d;
		end if;
	end process;
end ApartadoC;