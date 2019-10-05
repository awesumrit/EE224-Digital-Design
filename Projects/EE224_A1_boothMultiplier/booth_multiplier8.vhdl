library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.Gates.all;

entity booth_multiplier8 is
Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
B : in  STD_LOGIC_VECTOR (7 downto 0);
prod : out  STD_LOGIC_VECTOR (15 downto 0));

end booth_multiplier8;

architecture Behavioral of booth_multiplier8 is

signal A1, minusA1, twiceA1, twice_minusA1 : std_logic_vector(15 downto 0);

signal A2, minusA2, twiceA2, twice_minusA2 : std_logic_vector(15 downto 0);

signal A3, minusA3, twiceA3, twice_minusA3 : std_logic_vector(15 downto 0);

signal A4, minusA4, twiceA4, twice_minusA4 : std_logic_vector(15 downto 0);

signal signA, sign_notA : std_logic_vector(7 downto 0);

signal p0, p1, p2, p3,s1 ,s2, s3 : std_logic_vector(15 downto 0);
signal D : std_logic_vector(2 downto 0);
signal Anot : std_logic_vector(7 downto 0);
signal notAbit : std_logic ;
signal notA : std_logic_vector(7 downto 0);

component mux is 
  port ( X1, X2, X3, X4 : in std_logic_vector( 15 downto 0);
         OP : in std_logic_vector(2 downto 0);
         Z : out std_logic_vector(15 downto 0));
end component;		

component mux2  is
  port ( s1,s2  : in std_logic ;
			A : in std_logic_vector( 7 downto 0);
         Z : out std_logic);
end component;

component bit_adder16  is
  port ( X, Y : in std_logic_vector( 15 downto 0 );
         Z : out std_logic_vector( 15 downto 0));
end component;

component eightbitadder is 
   port( 
          A,B  : in std_logic_vector(7 downto 0);
          S  : out std_logic_vector(7 downto 0)
        );
end component ;

begin

signA(0) <= A(7) ;signA(1) <= A(7) ;signA(2) <= A(7) ; signA(3) <= A(7) ; 
signA(4) <= A(7) ;signA(5) <= A(7) ; signA(6) <= A(7) ; signA(7) <= A(7) ; 

notA <= not A;
minusA4_instance : eightbitadder port map(notA, "00000001", Anot) ;


Muxnot2 : mux2 port map(Anot(7), '0', A, notAbit);
sign_notA <= (others => notAbit) ;


A1 <= signA(7 downto 0) & std_logic_vector(A);
minusA1 <= sign_notA(7 downto 0) & std_logic_vector(Anot);
twiceA1 <= A1(14 downto 0) & '0';
twice_minusA1 <= minusA1(14 downto 0) & '0';

A2 <= signA(5 downto 0) & std_logic_vector(A) & "00";
minusA2 <= sign_notA(5 downto 0) & std_logic_vector(Anot) & "00";
twiceA2 <= A2(14 downto 0) & '0';
twice_minusA2<=minusA2(14 downto 0) & '0';

A3 <= signA(3 downto 0) & std_logic_vector(A) & "0000";
minusA3 <= sign_notA(3 downto 0) & std_logic_vector(Anot) & "0000";
twiceA3 <= A3(14 downto 0) & '0';
twice_minusA3 <= minusA3(14 downto 0) & '0';

A4 <= signA(1 downto 0) & std_logic_vector(A) & "000000";
minusA4 <= sign_notA(1 downto 0) & std_logic_vector(Anot) & "000000";
twiceA4 <= A4(14 downto 0) & '0';
twice_minusA4 <= minusA4(14 downto 0) & '0';

D <= B(1 downto 0) & '0';
--mux control 
M1: mux port map(X1 => A1, X2 => minusA1 , X3 => twiceA1, X4 => twice_minusA1, OP => D , Z => p0);
M2: mux port map(X1 => A2, X2 => minusA2 , X3 => twiceA2, X4 => twice_minusA2, OP => B(3 downto 1) , Z => p1);
M3: mux port map(X1 => A3, X2 => minusA3 , X3 => twiceA3, X4 => twice_minusA3, OP => B(5 downto 3) , Z => p2);
M4: mux port map(X1 => A4, X2 => minusA4 , X3 => twiceA4, X4 => twice_minusA4, OP => B(7 downto 5) , Z => p3);

Add1 : bit_adder16 port map(X =>p0 ,Y =>p1 , Z => s1);
Add2 : bit_adder16 port map(X =>s1 ,Y =>p2 , Z => s2);
Add3 : bit_adder16 port map(X =>s2 ,Y =>p3 , Z => s3);

prod <= s3 ;

end Behavioral;