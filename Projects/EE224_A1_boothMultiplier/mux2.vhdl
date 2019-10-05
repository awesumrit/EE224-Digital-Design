library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

library ieee;
use ieee.std_logic_1164.all;
entity mux2  is
  port ( s1,s2  : in std_logic ;
			A : in std_logic_vector( 7 downto 0);
         Z : out std_logic);
end entity mux2;


architecture arc of mux2 is

	signal op : std_logic;
begin
  -- component instances
  op <= A(7) and not A(6) and not A(5) and not A(4) and not A(3) and not A(2) and not A(1) and not A(0);
  Z <= ((not op) and s1) or (op and s2);
		

end arc;