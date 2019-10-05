library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DUT is
port(ADC_out: in std_logic_vector(7 downto 0); 
      DAC_in: out std_logic_vector(7 downto 0);         
			INTR: in std_logic;
         CS, WR, RD: out std_logic;
         clk, reset : in std_logic);
		end entity;
		
architecture Behave of DUT is 
component ADCint is
port (INTR: in std_logic;
         CS, WR, RD, Done: out std_logic;
         clk, reset : in std_logic);
end component;
component filter is
   port (x: in std_logic_vector(7 downto 0);
         sampin: in std_logic;
         y: out std_logic_vector(7 downto 0);
         clk, reset : in std_logic);
end component;
signal D : std_logic;
begin

ai: ADCint port map (INTR => INTR, CS => CS, WR => WR, RD => RD, Done => D, clk => clk, reset => reset);
f: filter port map (x => ADC_out, y => DAC_in, sampin => D, clk => clk, reset => reset);

end Behave;
