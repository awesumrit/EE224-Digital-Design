library ieee;
use ieee.std_logic_1164.all;
entity DUT is
	port(input_vector : in std_logic_vector (15 downto 0);
		output_vector : out std_logic_vector (15 downto 0));
end entity;

architecture DutWrap of DUT is
	component quarter_precision_multiplier is
    Port ( x : in  STD_LOGIC_VECTOR (7 downto 0);
           y : in  STD_LOGIC_VECTOR (7 downto 0);
           z : out  STD_LOGIC_VECTOR (15 downto 0));
	end component;

	begin
	add_instance : quarter_precision_multiplier
	port map (		
				X(7) => input_vector(15),
				X(6) => input_vector(14),
				X(5) => input_vector(13),
				X(4) => input_vector(12),
				X(3) => input_vector(11),
				X(2) => input_vector(10),
				X(1) => input_vector(9),
				X(0) => input_vector(8),
				Y(7) => input_vector(7),
				Y(6) => input_vector(6),
				Y(5) => input_vector(5),
				Y(4) => input_vector(4),
				Y(3) => input_vector(3),
				Y(2) => input_vector(2),
				Y(1) => input_vector(1),
				Y(0) => input_vector(0),
				
				Z(15) => output_vector(15),
				Z(14) => output_vector(14),
				Z(13) => output_vector(13),
				Z(12) => output_vector(12),
				Z(11) => output_vector(11),
				Z(10) => output_vector(10),
				Z(9) => output_vector(9),				
				Z(8) => output_vector(8),
				Z(7) => output_vector(7),
				Z(6) => output_vector(6),
				Z(5) => output_vector(5),
				Z(4) => output_vector(4),
				Z(3) => output_vector(3),
				Z(2) => output_vector(2),
				Z(1) => output_vector(1),
				Z(0) => output_vector(0));
				
end DutWrap;
