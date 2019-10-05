--4 bit Adder
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Four_bit_adder is
   port( 
          A,B  : in std_logic_vector(3 downto 0);
          S  : out std_logic_vector(3 downto 0);
          Cout : out std_logic);
end Four_bit_adder;

architecture struct of Four_bit_adder is

signal C1, C2, C3, C4: std_logic;
begin
FA0:Full_Adder port map(A(0),B(0),'0', S(0),C1);-- S0
FA1:Full_Adder port map(A(1),B(1),C1, S(1),C2);-- S1
FA2:Full_Adder port map(A(2),B(2),C2, S(2),C3);-- S2
FA3:Full_Adder port map(A(3),B(3),C3, S(3),C4);-- S3

end struct;
