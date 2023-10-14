library ieee;
use ieee.std_logic_1164.all;

entity binDec3to8_tb is
end entity binDec3to8_tb;

architecture testbench of binDec3to8_tb is
  signal input_tb       :       std_logic_vector(2 downto 0) := "000";
  signal bcode_tb       :       std_logic_vector(7 downto 0);
begin
  input_tb <= "001" after 200ns,
              "010" after 400ns,
              "011" after 600ns,
              "100" after 800ns,
              "101" after 1000ns,
              "110" after 1200ns,
              "111" after 1400ns;
  DUT: entity work.binDec3to8
    port map(
      input     <=      input_tb,
      bcode     <=      bcode_tb
    );
end architecture testbench;

      
