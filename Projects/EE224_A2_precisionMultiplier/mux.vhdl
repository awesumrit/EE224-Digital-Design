library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

library ieee;
use ieee.std_logic_1164.all;
entity mux  is
    port (A, B :  in std_logic_vector(9 downto 0);
			 S: in std_logic;
          C: out std_logic_vector(9 downto 0));
end entity mux;

architecture arch of mux is
  signal s1, s2 : std_logic_vector(9 downto 0);

begin
  -- component instances
  s1 <= (others => S);
  s2 <= (others => not S);
  C <= (s2 and A) or (s1 and B);

end arch;