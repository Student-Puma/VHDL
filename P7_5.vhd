library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity ApartadoE is
  port(	ENTRADA: in std_logic_vector(7 downto 0);
	SALIDA: out std_logic_vector(4 downto 0));
end entity ApartadoE;

architecture ApartadoE of ApartadoE is
begin
	process(ENTRADA)
		variable contador : unsigned(4 downto 0) := "00000";
	begin
   		contador := "00000";
   		for i in 0 to 7 loop
   	     		contador := contador + ("0000" & ENTRADA(i));
    		end loop;
    		SALIDA <= std_logic_vector(shift_left(contador,1));
	end process;
end ApartadoE;
