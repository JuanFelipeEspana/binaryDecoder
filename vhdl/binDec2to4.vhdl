library ieee;
use ieee.std_logic_1164.all;

entity binDec2to4 is
  port(
    en          :       in      std_logic;
    input       :       in      std_logic_vector(1 downto 0);
    bcode       :       out     std_logic_vector(3 downto 0)
  );
end entity binDec2to4;

architecture gateLevel of binDec2to4 is
begin
  bcode(0) <= (en)and(not input(1))and(not input(0));
  bcode(1) <= (en)and(not input(1))and(input(0));
  bcode(2) <= (en)and(input(1))and(not input(0));
  bcode(3) <= (en)and(input(1))and(input(0));
end architecture gateLevel;
  
