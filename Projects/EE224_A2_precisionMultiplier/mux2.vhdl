library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

library ieee;
use ieee.std_logic_1164.all;
entity mux2  is
    port (A, B :  in std_logic_vector(4 downto 0);
			 S: in std_logic_vector(5 downto 0);
          C: out std_logic_vector(4 downto 0));
end entity mux2;

architecture arch of mux2 is
  signal s1, s2, s3 : std_logic;
  signal s4 : std_logic_vector(4 downto 0);

begin
  -- component instances
  s1 <= S(0) and S(1) and S(2);
  s2 <= S(3) and S(4) and S(5);
  s3 <= s1 or s2;
  s4 <= (others => s3 );
  C <= (not s4 and A) or (s4 and B);

end arch;