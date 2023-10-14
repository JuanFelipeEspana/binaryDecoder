library ieee;
use ieee.std_logic_1164.all;

entity binDec4to16 is
  port(
    input       :       in      std_logic_vector(3 downto 0);
    bcode       :       out     std_logic_vector(15 downto 0)
  );
end entity binDec4to16;

architecture gateLevel of binDec4to16 is
  signal en     :       std_logic_vector(3 downto 0);
begin
  en(3) <= (input(3))and(input(2));
  en(2) <= (input(3))and(not input(2));
  en(1) <= (not input(3))and(input(2));
  en(0) <= (not input(3))and(not input(2));

  hexa3: entity work.binDec2to4
    port map(
      en        <=      en(3),
      input     <=      input(1 downto 0),
      bcode     <=      bcode(15 downto 12)
    );
  hexa2: entity work.binDec2to4
    port map(
      en        <=      en(2),
      input     <=      input(1 downto 0),
      bcode     <=      bcode(11 downto 8)
    );
  hexa1: entity work.binDec2to4
    port map(
      en        <=      en(1),
      input     <=      input(1 downto 0),
      bcode     <=      bcode(7 downto 3)
    );
  hexa0: entity work.binDec2to4
    port map(
      en        <=      en(0),
      input     <=      input(1 downto 0),
      bcode     <=      bcode(3 downto 0)
    );
end architecture gateLevel;
  

      
  

    
