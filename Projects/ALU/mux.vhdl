--multiplexer code
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
	port (X, Y : in std_logic_vector(7 downto 0);
			OP: in std_logic_vector(1 downto 0);
			Z: out std_logic_vector(7 downto 0)
			);
			
end entity mux;


architecture struct of mux is

component eightbitadder is 
   port( 
          A,B  : in std_logic_vector(7 downto 0);
          S  : out std_logic_vector(7 downto 0)
        );
end component;

component multiplier is 
	port(
			b : in  std_logic_vector (7 downto 0);
			a: in  std_logic_vector (7 downto 0);
			p: out std_logic_vector(7 downto 0)
		 );
end component;

component leftshift is
	port(Q: in std_logic_vector(7 downto 0);
	W: in std_logic_vector(7 downto 0);
	E : out std_logic_vector(7 downto 0)
	);
end component;

component rightshift is
		port(J: in std_logic_vector(7 downto 0);
	K: in std_logic_vector(7 downto 0);
	L : out std_logic_vector(7 downto 0)
	);
end component;

signal Z0,Z1,Z2,Z3 : std_logic_vector(7 downto 0);

begin
    S0: eightbitadder port map(X, Y, Z0) ;
    S1: leftshift port map(X, Y, Z1) ;
    S2: rightshift port map(X, Y, Z2) ;
    S3: multiplier port map(X, Y, Z3) ;
	 Z <= Z0 when (OP = "00") else
			Z1 when (OP = "01") else
			Z2 when (OP = "10") else
			Z3 when (OP = "11");

end struct;