library ieee;
use ieee.std_logic_1164.all;

entity binDec3to8 is
  port(
    input       :       in      std_logic_vector(2 downto 0);
    bcode       :       out     std_logic_vector(7 downto 0)
  );
end entity binDec3to8;

architecture gateLevel of binDec3to8 is
begin
  MSB: entity work.binDec2to4
    port map(
      en        <=      input(2),
      input     <=      input(1 downto 0),
      bcode     <=      bcode(7 downto 4)
    );
  LSB: entity work.binDec2to4
    port map(
      en        <=      not input(2),
      input     <=      input(1 downto 0),
      bcode     <=      bcode(3 downto 0)
    );
end architecture gateLevel;
