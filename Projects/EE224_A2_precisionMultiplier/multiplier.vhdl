library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.Gates.all;

entity multiplier is
	port(
			a : in  std_logic_vector (4 downto 0);
			b: in  std_logic_vector (4 downto 0);
			p: out std_logic_vector(9 downto 0)
		 );
end entity;

architecture struct of multiplier is 
	signal p0,p1,p2,p3,p4 : std_logic_vector(9 downto 0);
	signal a0,a1,a2,a3,a4,b0,b1,b2,b3,b4 : std_logic_vector(9 downto 0);

	signal s0,s1,s2,s3 : std_logic_vector(9 downto 0);
	
	
component tenbitadder is 
   port( 
          A,B  : in std_logic_vector(9 downto 0);
          S  : out std_logic_vector(9 downto 0)
        );
end component;

begin
	 a0 <= "00000" & std_logic_vector(a);
	 a1 <= "0000" & std_logic_vector(a) & '0';
	 a2 <= "000" & std_logic_vector(a) & "00";
	 a3 <= "00" & std_logic_vector(a) & "000";
	 a4 <= "0" & std_logic_vector(a) & "0000";
	 b0 <= (others => b(0));
    b1 <= (others => b(1));
    b2 <= (others => b(2));
    b3 <= (others => b(3));
    b4 <= (others => b(4));

	 
	p0 <= a0 and b0;
	p1 <= a1 and b1;
	p2 <= a2 and b2;
	p3 <= a3 and b3;
	p4 <= a4 and b4;

	
	m0 : tenbitadder port map(p0, p1, s0) ;
	m1 : tenbitadder port map(s0, p2, s1) ;
	m2 : tenbitadder port map(s1, p3, s2) ;
	m3 : tenbitadder port map(s2, p4, s3) ;

	
	p <= s3 ;
	--p <= p0+p1+p2+p3+p4+p5+p6+p7 
	
end struct;	