library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.Gates.all;


entity quarter_precision_multiplier is
    Port ( x : in  STD_LOGIC_VECTOR (7 downto 0);
           y : in  STD_LOGIC_VECTOR (7 downto 0);
           z : out  STD_LOGIC_VECTOR (15 downto 0));
end quarter_precision_multiplier;

architecture Behavioral of quarter_precision_multiplier is

	signal x_mantissa1 : STD_LOGIC_VECTOR (4 downto 0);
	signal x_mantissa0 : STD_LOGIC_VECTOR (4 downto 0);
	signal x_mantissa : STD_LOGIC_VECTOR (4 downto 0);
	signal x_exponent : STD_LOGIC_VECTOR (2 downto 0);
	signal x_sign : STD_LOGIC;
	signal y_mantissa1 : STD_LOGIC_VECTOR (4 downto 0);
	signal y_mantissa0 : STD_LOGIC_VECTOR (4 downto 0);
	signal y_mantissa : STD_LOGIC_VECTOR (4 downto 0);
	signal y_exponent : STD_LOGIC_VECTOR (2 downto 0);
	signal y_sign : STD_LOGIC;
	signal z_mantissa : STD_LOGIC_VECTOR (9 downto 0);
	signal z1 : STD_LOGIC_VECTOR (9 downto 0);
	signal z2 : STD_LOGIC_VECTOR (9 downto 0);
	signal z_exponent : STD_LOGIC_VECTOR (4 downto 0);
	signal z_exponent2 : STD_LOGIC_VECTOR (4 downto 0);
	signal z_exponent_final : STD_LOGIC_VECTOR (4 downto 0);
	signal z_sign : STD_LOGIC;
	signal sum_exponent : STD_LOGIC_VECTOR (3 downto 0);
	signal prod_mantissa : STD_LOGIC_VECTOR (9 downto 0);
	signal norm_factor :  STD_LOGIC ;
	signal s1,s2,s3,s4,o1,o2,o3 : STD_LOGIC_VECTOR (4 downto 0);
	signal ba : STD_LOGIC_VECTOR (5 downto 0);
	signal zero : STD_LOGIC_VECTOR (13 downto 0);

	component multiplier is 
		port(
			a : in  std_logic_vector (4 downto 0);
			b: in  std_logic_vector (4 downto 0);
			p: out std_logic_vector(9 downto 0)
		 );
	end component;

	component fivebitadder is 
   		port( 
          A,B  : in std_logic_vector(4 downto 0);
          S  : out std_logic_vector(4 downto 0)
        );
	end component;
	
	component mux is -- implementation is in Gates.vhdl
    port (A, B :  in std_logic_vector(9 downto 0);
			 S: in std_logic;
          C: out std_logic_vector(9 downto 0));
  end component;
  
  	component mux2 is -- implementation is in Gates.vhdl
    port (A, B :  in std_logic_vector(4 downto 0);
			 S: in std_logic_vector(5 downto 0);
          C: out std_logic_vector(4 downto 0));
  end component;
  
    component mux3 is -- implementation is in Gates.vhdl
    port (A, B :  in std_logic_vector(4 downto 0);
			 S: in std_logic_vector(2 downto 0);
          C: out std_logic_vector(4 downto 0));
  end component;
  
    component mux4 is -- implementation is in Gates.vhdl
    port (A, B :  in std_logic_vector(4 downto 0);
			 S: in std_logic_vector(13 downto 0);
          C: out std_logic_vector(4 downto 0));
  end component;

begin

	x_mantissa1 <= '1' & x(3 downto 0);
	y_mantissa1 <= '1' & y(3 downto 0);
	x_mantissa0 <= '0' & x(3 downto 0);
	y_mantissa0 <= '0' & y(3 downto 0);
	
	
	x_exponent <= x(6 downto 4);
	y_exponent <= y(6 downto 4);
	x_sign <= x(7);
	y_sign <= y(7);
	
	--To consider subnormal numbers
	Mux_1 : mux3 port map(x_mantissa1, x_mantissa0, x_exponent, x_mantissa);
	Mux_2 : mux3 port map(y_mantissa1, y_mantissa0, y_exponent, y_mantissa);
	
	Mult1 : multiplier port map(x_mantissa, y_mantissa, prod_mantissa) ;
	norm_factor <= prod_mantissa(9);
	
	z1 <= prod_mantissa(8 downto 0) & '0';
	z2 <= prod_mantissa(7 downto 0) & "00";
	Mux_3 : mux port map(z2, z1, norm_factor, z_mantissa);
	
	s1 <= "00" & STD_LOGIC_VECTOR(x_exponent) ;
	s2 <= "00" & STD_LOGIC_VECTOR(y_exponent) ;
	s3 <= "01001" ; --add 9 as the net bias to be added is 15 - 3 -3 = 9
	s4 <= "0000" & STD_LOGIC(norm_factor);
	A1 : fivebitadder port map(s1,s2,o1);
	A2 : fivebitadder port map(o1,s3,o2);
	A3 : fivebitadder port map(o2,s4,o3);
	
	--to consider +/- infi and NaN cases
	ba <= STD_LOGIC_VECTOR(x_exponent) & STD_LOGIC_VECTOR(y_exponent);
	Mux_4 : mux2 port map(o3, "11111", ba, z_exponent); 
	
	zero <= STD_LOGIC_VECTOR(not x(6 downto 0)) & STD_LOGIC_VECTOR(not y(6 downto 0));
	
	Mux_5 : mux4 port map(z_exponent, "00000", zero, z_exponent2);  
	Mux_6 : mux2 port map(z_exponent2, "11111", ba, z_exponent_final); 
	z_sign <= x_sign xor y_sign;
	
	
	z(15) <= z_sign;
	z(14 downto 10) <= z_exponent_final;
	z(9 downto 0) <= z_mantissa;

end Behavioral;




	


