library ieee;
use ieee.std_logic_1164.all;
entity DUT is
	port(input_vector : in std_logic_vector (15 downto 0);
		output_vector : out std_logic_vector (7 downto 0));
end entity;

architecture DutWrap of DUT is
	component leftshift is
	port(X: in std_logic_vector(7 downto 0);
	Y: in std_logic_vector(7 downto 0);
	Z: out std_logic_vector(7 downto 0));
	end component;

	begin
	add_instance : leftshift
	port map (		
				Y(7) => input_vector(15),
				Y(6) => input_vector(14),
				Y(5) => input_vector(13),
				Y(4) => input_vector(12),
				Y(3) => input_vector(11),
				Y(2) => input_vector(10),
				Y(1) => input_vector(9),
				Y(0) => input_vector(8),
				X(7) => input_vector(7),
				X(6) => input_vector(6),
				X(5) => input_vector(5),
				X(4) => input_vector(4),
				X(3) => input_vector(3),
				X(2) => input_vector(2),
				X(1) => input_vector(1),
				X(0) => input_vector(0),

				Z(7) => output_vector(7),
				Z(6) => output_vector(6),
				Z(5) => output_vector(5),
				Z(4) => output_vector(4),
				Z(3) => output_vector(3),
				Z(2) => output_vector(2),
				Z(1) => output_vector(1),
				Z(0) => output_vector(0));
				
end DutWrap;
