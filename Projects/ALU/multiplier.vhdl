library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.Gates.all;

entity multiplier is
	port(
			b : in  std_logic_vector (7 downto 0);
			a: in  std_logic_vector (7 downto 0);
			p: out std_logic_vector(7 downto 0)
		 );
end entity;




architecture struct of multiplier is 
	signal p0,p1,p2,p3,p4,p5,p6,p7: std_logic_vector(7 downto 0);
	signal b0,b1,b2,b3,b4,b5,b6,b7: std_logic_vector(7 downto 0);
	signal s0,s1,s2,s3,s4,s5,s6,s7: std_logic_vector(7 downto 0);
	
	
component eightbitadder is 
   port( 
          A,B  : in std_logic_vector(7 downto 0);
          S  : out std_logic_vector(7 downto 0)
        );
end component;

begin
	 b0 <= (others => b(0));
    b1 <= (others => b(1));
    b2 <= (others => b(2));
    b3 <= (others => b(3));
    b4 <= (others => b(4));
    b5 <= (others => b(5));
    b6 <= (others => b(6));
    b7 <= (others => b(7));
	 
	p0 <= (a) and b0;
	p1 <= (a(6 downto 0) & "0") and b1;
	p2 <= (a(5 downto 0) & "00") and b2;
	p3 <= (a(4 downto 0) & "000") and b3;
	p4 <= (a(3 downto 0) & "0000") and b4;
	p5 <= (a(2 downto 0) & "00000") and b5;
	p6 <= (a(1 downto 0) & "000000") and b6;
	p7 <= (a(0) & "0000000") and b7;
	
	m0 : eightbitadder port map(p0, p1, s0) ;
	m1 : eightbitadder port map(s0, p2, s1) ;
	m2 : eightbitadder port map(s1, p3, s2) ;
	m3 : eightbitadder port map(s2, p4, s3) ;
	m4 : eightbitadder port map(s3, p5, s4) ;
	m5 : eightbitadder port map(s4, p6, s5) ;
	m6 : eightbitadder port map(s5, p7, s6) ;
	
	p <= s6 ;
	--p <= p0+p1+p2+p3+p4+p5+p6+p7 
	
end struct;	