library ieee;
use ieee.std_logic_1164.all;
entity DUT is
  port(input_vector : in std_logic_vector (15 downto 0);
    output_vector : out std_logic_vector (7 downto 0));
end entity;

architecture DutWrap of DUT is
  component eightbitadder is
  port(A: in std_logic_vector(7 downto 0);
  B: in std_logic_vector(7 downto 0);
  S: out std_logic_vector(7 downto 0));
  end component;

  begin
  add_instance : eightbitadder
  port map (    
        B(7) => input_vector(15),
        B(6) => input_vector(14),
        B(5) => input_vector(13),
        B(4) => input_vector(12),
        B(3) => input_vector(11),
        B(2) => input_vector(10),
        B(1) => input_vector(9),
        B(0) => input_vector(8),
        A(7) => input_vector(7),
        A(6) => input_vector(6),
        A(5) => input_vector(5),
        A(4) => input_vector(4),
        A(3) => input_vector(3),
        A(2) => input_vector(2),
        A(1) => input_vector(1),
        A(0) => input_vector(0),

        S(7) => output_vector(7),
        S(6) => output_vector(6),
        S(5) => output_vector(5),
        S(4) => output_vector(4),
        S(3) => output_vector(3),
        S(2) => output_vector(2),
        S(1) => output_vector(1),
        S(0) => output_vector(0));
        
end DutWrap;
