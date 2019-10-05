library ieee;
use ieee.std_logic_1164.all;
entity DUT is
	port(input_vector : in std_logic_vector (15 downto 0);
		output_vector : out std_logic_vector (7 downto 0));
end entity;

architecture DutWrap of DUT is
	component multiplier is
	port(
			b : in  std_logic_vector (7 downto 0);
			a: in  std_logic_vector (7 downto 0);
			p: out std_logic_vector(7 downto 0)
		 );
	end component;

	begin
	add_instance : multiplier
	port map (		
				a(7) => input_vector(15),
				a(6) => input_vector(14),
				a(5) => input_vector(13),
				a(4) => input_vector(12),
				a(3) => input_vector(11),
				a(2) => input_vector(10),
				a(1) => input_vector(9),
				a(0) => input_vector(8),
				b(7) => input_vector(7),
				b(6) => input_vector(6),
				b(5) => input_vector(5),
				b(4) => input_vector(4),
				b(3) => input_vector(3),
				b(2) => input_vector(2),
				b(1) => input_vector(1),
				b(0) => input_vector(0),

				p(7) => output_vector(7),
				p(6) => output_vector(6),
				p(5) => output_vector(5),
				p(4) => output_vector(4),
				p(3) => output_vector(3),
				p(2) => output_vector(2),
				p(1) => output_vector(1),
				p(0) => output_vector(0));
				
end DutWrap;
