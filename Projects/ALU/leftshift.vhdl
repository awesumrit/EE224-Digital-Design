library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity leftshift is 
	port(Q: in std_logic_vector(7 downto 0);
	W: in std_logic_vector(7 downto 0);
	E : out std_logic_vector(7 downto 0)
	);
end entity leftshift;

architecture struct of leftshift is

signal l1, l2, l3 : std_logic_vector(7 downto 0);

signal S : std_logic;
begin
S <= ((((W(7) or W(6)) or W(5)) or W(4)) or W(3));

l1(7 downto 0) <= "00000000" when S='1' else Q(7 downto 0);

l2(7 downto 0) <= (l1(6 downto 0) & "0") when W(0)='1' else l1(7 downto 0);

l3(7 downto 0) <= (l2(5 downto 0) & "00") when W(1)='1' else l2(7 downto 0);

E(7 downto 0) <= (l3(3 downto 0) & "0000") when W(2)='1' else l3(7 downto 0); 

end struct;

