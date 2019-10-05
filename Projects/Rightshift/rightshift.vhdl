library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity rightshift is 
	port(X: in std_logic_vector(7 downto 0);
	Y: in std_logic_vector(7 downto 0);
	Z : out std_logic_vector(7 downto 0)
	);
end entity rightshift;

architecture struct of rightshift is

signal l1, l2, l3 : std_logic_vector(7 downto 0);

signal S : std_logic;
begin
S <= ((((Y(7) or Y(6)) or Y(5)) or Y(4)) or Y(3));

l1(7 downto 0) <= "00000000" when S='1' else X(7 downto 0);

l2(7 downto 0) <= ("0" & l1(7 downto 1)) when Y(0)='1' else l1(7 downto 0);

l3(7 downto 0) <= ("00" & l2(7 downto 2)) when Y(1)='1' else l2(7 downto 0);

Z(7 downto 0) <= ("0000" & l3(7 downto 4)) when Y(2)='1' else l3(7 downto 0); 

end struct;
