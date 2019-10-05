library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(6 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
   component fsm_all is
     port (uin: in std_logic_vector(4 downto 0); y: out std_logic; rst, clk: in std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: fsm_all 
			port map (
					-- order of inputs Cin B A
					uin(4 downto 0) => input_vector(6 downto 2),
					rst   => input_vector(1),
					clk   => input_vector(0),

					y => output_vector(0));

end DutWrap;

