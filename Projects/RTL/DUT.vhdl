library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(10 downto 0);
       	output_vector: out std_logic_vector(8 downto 0));
end entity;

architecture DutWrap of DUT is
   component fourbit is
     port (Start: in std_logic;
         a: in std_logic_vector(3 downto 0);
         b: in std_logic_vector(3 downto 0);
         p: out std_logic_vector(7 downto 0);
         Done: out std_logic;
         clk, reset : in std_logic);	
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: fourbit 
			port map (
					-- order of inputs Cin B A
					b => input_vector(7 downto 4),
					a => input_vector(3 downto 0),
					Start  => input_vector(10),
					clk   => input_vector(9),
					reset   => input_vector(8),
					
					Done => output_vector(8),
					p => output_vector(7 downto 0));

end DutWrap;