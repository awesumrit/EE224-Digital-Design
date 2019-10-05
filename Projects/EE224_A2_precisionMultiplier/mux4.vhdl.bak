library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

library ieee;
use ieee.std_logic_1164.all;
entity mux3  is
    port (A, B :  in std_logic_vector(4 downto 0);
			 S: in std_logic_vector(2 downto 0);
          C: out std_logic_vector(4 downto 0));
end entity mux3;

architecture arch of mux3 is
  signal s3 : std_logic  ;
  signal s4 : std_logic_vector(4 downto 0);

begin
  -- component instances
  s3 <= (not S(0) ) and (not S(1)) and (not S(2));
  s4 <= (others => s3 );
  C <= (not s4 and A) or (s4 and B);

end arch;