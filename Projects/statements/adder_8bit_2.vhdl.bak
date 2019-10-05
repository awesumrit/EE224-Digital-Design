library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity adder_8bit is 
   port( 
			 A,B : in std_logic_vector(7 downto 0);
          SUM : out std_logic_vector(7 downto 0)
        );
end entity;

--Part A
architecture Behav of adder_8bit is 

signal co : std_logic_vector(8 downto 0);

begin
co(0) <= '0';
gen_for : 
	for i in 0 to 7 generate 
			faX : Full_Adder port map (A(i), B(i), co(i), SUM(i), co(i+1)) ;
		end generate gen_for;
end Behav;

--Part B
architecture Behav_2 of adder_8bit is 
	signal C : std_logic_vector(8 downto 0) ;
	begin 
		C(0) <= '0';
	genAdd : for I in 0 to 7 generate 
		C(I+1) <= (((A(I) or B(I)) and C(I)) or (A(I) and B(I)));
		SUM(I) <= A(I) xor B(I) xor C(I);
	end generate genAdd;
end Behav_2 ;

--Part C
architecture Behav_3 of adder_8bit is 
	begin 
	process(A,B)
	 variable CVar : std_logic ;
		begin
		CVar := '0' ;
		for I in 0 to 7 loop 
			SUM(I) <= A(I) xor B(I) xor CVar;
			CVar := (((A(I) or B(I)) and CVar) or (A(I) and B(I)));
		end loop;
	end process;
end Behav_3;	
	
	

