library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

library ieee;
use ieee.std_logic_1164.all;
entity mux4  is
    port (A, B :  in std_logic_vector(4 downto 0);
			 S: in std_logic_vector(13 downto 0);
          C: out std_logic_vector(4 downto 0));
end entity mux4;

architecture arch of mux4 is
  signal s3 : std_logic  ;
  signal s4 : std_logic_vector(4 downto 0);

begin
  -- component instances
  s3 <= ( S(13) and S(12) and S(11) and S(10) and S(9) and S(8) and S(7) )or ( S(6) and S(5) and S(4) and S(3) and S(2) and S(1) and S(0) );
  s4 <= (others => s3 );
  C <= (not s4 and A) or (s4 and B);

end arch;