library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

library ieee;
use ieee.std_logic_1164.all;
entity bit_adder16  is
  port ( X, Y : in std_logic_vector( 15 downto 0 );
         Z : out std_logic_vector( 15 downto 0));
end entity bit_adder16;

architecture arc of bit_adder16 is
  signal C: std_logic_vector(15 downto 1);

    component Full_Adder
    port (A, B, Cin: in std_logic;
          S, Cout: out std_logic);
  end component;

  component HALF_ADDER is
   port (A, B : in std_logic; S, C: out std_logic);
  end component HALF_ADDER;

begin
  -- component instances
  ha1: HALF_ADDER
        port map (A =>X(0), B =>Y(0), S =>Z(0), C=>C(1));
  fa1: Full_Adder
        port map (A =>X(1), B =>Y(1), Cin=>C(1), S=>Z(1), Cout=>C(2));
  fa2: Full_Adder
        port map (A =>X(2), B =>Y(2), Cin=>C(2), S=>Z(2), Cout=>C(3));
  fa3: Full_Adder
        port map (A =>X(3), B =>Y(3), Cin=>C(3), S=>Z(3), Cout=>C(4));
  fa4: Full_Adder
        port map (A =>X(4), B =>Y(4), Cin=>C(4), S=>Z(4), Cout=>C(5));
  fa5: Full_Adder
        port map (A =>X(5), B =>Y(5), Cin=>C(5), S=>Z(5), Cout=>C(6));
  fa6: Full_Adder
        port map (A =>X(6), B =>Y(6), Cin=>C(6), S=>Z(6), Cout=>C(7));
  fa7: Full_Adder
        port map (A =>X(7), B =>Y(7), Cin=>C(7), S=>Z(7), Cout=>C(8));
	fa8: Full_Adder
        port map (A =>X(8), B =>Y(8), Cin=>C(8), S=>Z(8), Cout=>C(9));
	fa9: Full_Adder
        port map (A =>X(9), B =>Y(9), Cin=>C(9), S=>Z(9), Cout=>C(10));
  fa10: Full_Adder
        port map (A =>X(10), B =>Y(10), Cin=>C(10), S=>Z(10), Cout=>C(11));
  fa11: Full_Adder
        port map (A =>X(11), B =>Y(11), Cin=>C(11), S=>Z(11), Cout=>C(12));
  fa12: Full_Adder
        port map (A =>X(12), B =>Y(12), Cin=>C(12), S=>Z(12), Cout=>C(13));
  fa13: Full_Adder
        port map (A =>X(13), B =>Y(13), Cin=>C(13), S=>Z(13), Cout=>C(14));
  fa14: Full_Adder
        port map (A =>X(14), B =>Y(14), Cin=>C(14), S=>Z(14), Cout=>C(15));
  fa15: Full_Adder
        port map (A =>X(15), B =>Y(15), Cin=>C(15), S=>Z(15));
end arc;
