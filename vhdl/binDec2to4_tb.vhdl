library ieee;
use ieee.std_logic_1164.all;

entity binDec2to4_tb is
end entity binDec2to4_tb;

architecture testbench of binDec2to4_tb is
  signal en_tb     :       std_logic                      :=  '0';
  signal input_tb  :       std_logic_vector(1 downto 0)   := "00";
  signal bcode_tb  :       std_logic_vector(1 downto 0);
begin
  en_tb <= '1' after 200ns;
  input_tb <= "01" after 400ns,
              "10" after 600ns,
              "11" after 800ns;
  DUT: entity work.binDec2to4
    port map(
      en        <=      en_tb,
      input     <=      input_tb,
      bcode     <=      bcode_tb
    );
end architecture testbench;
      
