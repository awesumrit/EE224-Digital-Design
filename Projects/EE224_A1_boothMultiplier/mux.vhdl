library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

library ieee;
use ieee.std_logic_1164.all;
entity mux  is
  port ( X1, X2, X3, X4 : in std_logic_vector( 15 downto 0);
         OP : in std_logic_vector(2 downto 0);
         Z : out std_logic_vector(15 downto 0));
end entity mux;

architecture arc of mux is
  signal t1, t2, t3, t4, t5, t6, t7, t8, t9, a16, b16, mux016, mux116, Block_sig16: std_logic_vector(15 downto 0);
  signal MUX_OP : std_logic_vector(1 downto 0);
  signal Block_sig, a,b: std_logic;


begin
  -- component instances
MUX_OP(1) <= not (OP(0) xor OP(1));
mux116 <= (others => MUX_OP(1));
MUX_OP(0) <= OP(2);
mux016 <= (others => MUX_OP(0));
a<=not MUX_OP(0);
a16 <= (others => a) ;
b<=not MUX_OP(1);
b16 <= (others => b) ;
Block_sig <= (not(OP(2) and OP(1) and OP(0))) and (OP(2) or OP(1) or OP(0));
Block_sig16 <= (others => Block_sig) ;

      t1 <= X1 and a16;

      t5 <= t1 and b16;

      t2 <= X2 and mux016 ;

      t6 <= t2 and b16;

      t3 <= X3 and a16;

      t7 <= t3 and mux116;

      t4 <= X4 and mux016;

      t8 <= t4 and mux116;
      t9 <= t5 or t6 or t7 or t8 ;

      Z <= t9 and Block_sig16;
		

end arc;