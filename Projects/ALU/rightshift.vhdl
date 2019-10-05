library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity rightshift is 
	port(J: in std_logic_vector(7 downto 0);
	K: in std_logic_vector(7 downto 0);
	L : out std_logic_vector(7 downto 0)
	);
end entity rightshift;

architecture struct of rightshift is

signal l1, l2, l3 : std_logic_vector(7 downto 0);

signal S : std_logic;
begin
S <= ((((K(7) or K(6)) or K(5)) or K(4)) or K(3));

l1(7 downto 0) <= "00000000" when S='1' else J(7 downto 0);

l2(7 downto 0) <= ("0" & l1(7 downto 1)) when K(0)='1' else l1(7 downto 0);

l3(7 downto 0) <= ("00" & l2(7 downto 2)) when K(1)='1' else l2(7 downto 0);

L(7 downto 0) <= ("0000" & l3(7 downto 4)) when K(2)='1' else l3(7 downto 0); 

end struct;

