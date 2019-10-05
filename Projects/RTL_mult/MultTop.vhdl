library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.mult_components.all; -- component declarations

entity MultTop is
port ( Multiplier: in std_logic_vector(3 downto 0);
		Multiplicand: in std_logic_vector(3 downto 0);
		Product: out std_logic_vector(7 downto 0);
		Start: in std_logic;
		Clk: in std_logic;
		Done: out std_logic);
end MultTop;

architecture Behavioral of MultTop is
	
	-- internal signals to interconnect components
	signal Mout,Qout: std_logic_vector (3 downto 0);
	signal Dout,Aout: std_logic_vector (4 downto 0);
	signal Load,Shift,AddA: std_logic;

begin

C: Controller generic map (2) -- Controller with 2-bit counter
	port map (Clk,Qout(0),Start,Load,Shift,AddA,Done);
A: AdderN generic map (4) -- 4-bit adder; 5-bit output includes carry
	port map (Aout(3 downto 0),Mout,Dout);
M: RegN generic map (4) -- 4-bit Multiplicand register
	port map (Multiplicand,Mout,Clk,Load,'0','0','0');
Q: RegN generic map (4) -- 4-bit Multiplier register
	port map (Multiplier,Qout,Clk,Load,Shift,'0',Aout(0));
ACC: RegN generic map (5) -- 5-bit Accumulator register
	port map (Dout,Aout,Clk,AddA,Shift,Load,'0');
Product <= Aout(3 downto 0) & Qout; -- 8-bit product

end Behavioral;