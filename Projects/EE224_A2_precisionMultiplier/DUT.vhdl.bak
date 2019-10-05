library ieee;
use ieee.std_logic_1164.all;
entity DUT is
	port(input_vector : in std_logic_vector (15 downto 0);
		output_vector : out std_logic_vector (15 downto 0));
end entity;

architecture DutWrap of DUT is
	component booth_multiplier8 is
Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
B : in  STD_LOGIC_VECTOR (7 downto 0);
prod : out  STD_LOGIC_VECTOR (15 downto 0));
	end component;

	begin
	add_instance : booth_multiplier8
	port map (		
				A(7) => input_vector(15),
				A(6) => input_vector(14),
				A(5) => input_vector(13),
				A(4) => input_vector(12),
				A(3) => input_vector(11),
				A(2) => input_vector(10),
				A(1) => input_vector(9),
				A(0) => input_vector(8),
				B(7) => input_vector(7),
				B(6) => input_vector(6),
				B(5) => input_vector(5),
				B(4) => input_vector(4),
				B(3) => input_vector(3),
				B(2) => input_vector(2),
				B(1) => input_vector(1),
				B(0) => input_vector(0),
				
				prod(15) => output_vector(15),
				prod(14) => output_vector(14),
				prod(13) => output_vector(13),
				prod(12) => output_vector(12),
				prod(11) => output_vector(11),
				prod(10) => output_vector(10),
				prod(9) => output_vector(9),				
				prod(8) => output_vector(8),
				prod(7) => output_vector(7),
				prod(6) => output_vector(6),
				prod(5) => output_vector(5),
				prod(4) => output_vector(4),
				prod(3) => output_vector(3),
				prod(2) => output_vector(2),
				prod(1) => output_vector(1),
				prod(0) => output_vector(0));
				
end DutWrap;
