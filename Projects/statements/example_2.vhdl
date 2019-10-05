library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

--Part 3
entity example_2 is 
	port (clock,a : in std_logic; d : out std_logic);
end example_2;

architecture behav_1 of example_2 is 
	signal b,c : std_logic := '0' ;
begin 
	process(clock)
		begin 
			if(CLOCK = '1' and CLOCK'EVENT) then
				b <= a;
				c <= b;
				d <= c;
			  end if;
		end process;

	end behav_1;

--Part B
architecture behav_2 of example_2 is 
	begin

	process(clock)
		variable b_v, c_v : std_logic;

	begin 
		if(CLOCK = '1' and CLOCK'EVENT) then
		 b_v := a ; --after 1 ns;
		 	c_v := b_v ;
		 	d <= c_v ;
		 end if;
	end process;
end behav_2 ;



	

