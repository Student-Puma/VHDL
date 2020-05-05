library ieee;
use ieee.std_logic_1164.all;

entity ApartadoB is
	port(	P: in std_logic_vector(3 downto 0);
		Q: in std_logic_vector(3 downto 0);
		CMP: out std_logic);
end entity ApartadoB;

architecture ApartadoB of ApartadoB is
begin
	CMP <= '0' when P = Q else '1';
end ApartadoB;