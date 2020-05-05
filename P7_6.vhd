library ieee;
use ieee.std_logic_1164.all;

entity ApartadoF is
  port( A,B,C,D: in std_logic_vector(1 downto 0);
	MAYOR: out std_logic_vector(1 downto 0));
end entity ApartadoF;

architecture ApartadoF of ApartadoF is
	signal tmp1, tmp2: std_logic_vector(1 downto 0);
begin
	tmp1 <= A when A > B else B;
	tmp2 <= C when C > D else D;
	MAYOR <= tmp1 when tmp1 > tmp2 else tmp2;
end ApartadoF;