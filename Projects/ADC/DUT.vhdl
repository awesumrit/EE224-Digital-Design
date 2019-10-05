-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(10 downto 0);
       	output_vector: out std_logic_vector(10 downto 0));
end entity;

architecture DutWrap of DUT is
   component ADC is
     port(clk,reset,INTR: in std_logic;
				DATA : in std_logic_vector (7 downto 0);
				ROUT : out std_logic_vector (7 downto 0);
         	CS,RD,WR: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: ADC 
			port map (
					-- order of inputs Cin B A
					clk => input_vector(10),
					reset => input_vector(9),
					INTR   => input_vector(8),
					DATA   => input_vector(7 downto 0),
               
					-- order of outputs S Cout
					CS => output_vector(10),
					WR => output_vector(9),
					RD => output_vector(8),
					ROUT => output_vector(7 downto 0));

end DutWrap;
