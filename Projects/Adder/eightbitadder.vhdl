library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity eightbitadder is 
   port( 
          A,B  : in std_logic_vector(7 downto 0);
          S  : out std_logic_vector(7 downto 0)
        );
end entity ;

architecture Equations of eightbitadder is
signal C1, C2, C3, C4, C5, C6, C7, C8: std_logic;

begin

FA0:HALF_ADDER port map(A(0),B(0), S(0),C1);
FA1:Full_Adder port map(A(1),B(1),C1, S(1),C2);
FA2:Full_Adder port map(A(2),B(2),C2, S(2),C3);
FA3:Full_Adder port map(A(3),B(3),C3, S(3),C4);
FA4:Full_Adder port map(A(4),B(4),C4, S(4),C5);
FA5:Full_Adder port map(A(5),B(5),C5, S(5),C6);
FA6:Full_Adder port map(A(6),B(6),C6, S(6),C7);
FA7:Full_Adder port map(A(7),B(7),C7, S(7),C8);


end Equations;