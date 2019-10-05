-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Four-bit-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
     port(input_vector: in std_logic_vector(7 downto 0);
                output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is

     component Four_bit_adder is
         port(      A,B : in std_logic_vector(3 downto 0);
                    S : out std_logic_vector(3 downto 0)
						  );
     end component;
begin

     -- input/output vector element ordering is critical,
     -- and must match the ordering in the trace file!
     add_instance: Four_bit_adder 
            port map (
                    -- order of inputs Cin B A
                    B(3)   => input_vector(7),
                    B(2)   => input_vector(6),
                    B(1)   => input_vector(5),
                    B(0)   => input_vector(4),
                    A(3)   => input_vector(3),
                    A(2)   => input_vector(2),
                    A(1)   => input_vector(1),
                    A(0)   => input_vector(0),
                                                                                -- order of outputs S Cout
                    S(3) => output_vector(3),
                    S(2) => output_vector(2),
                    S(1) => output_vector(1),
                    S(0) => output_vector(0));


end DutWrap;

