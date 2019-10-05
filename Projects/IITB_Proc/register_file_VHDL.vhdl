library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;	 
use ieee.std_logic_unsigned.all;

entity register_file_VHDL is
port (
 clk: in std_logic;
 reg_write_bar: in std_logic;
 reg_write_dest: in std_logic_vector(2 downto 0);
 reg_write_data: in std_logic_vector(15 downto 0);
 reg_read_addr_1: in std_logic_vector(2 downto 0);
 reg_read_data_1: out std_logic_vector(15 downto 0);
 reg_read_addr_2: in std_logic_vector(2 downto 0);
 reg_read_data_2: out std_logic_vector(15 downto 0)
);
end register_file_VHDL;

architecture Behavioral of register_file_VHDL is
type reg_type is array (7 downto 0) of std_logic_vector (15 downto 0);
signal reg_array: reg_type := (others => "0000000000000000");

begin
reg_read_data_1 <= reg_array(conv_integer(reg_read_addr_1));
reg_read_data_2 <= reg_array(conv_integer(reg_read_addr_2));
Mem_write:
process (reg_write_bar, reg_write_data, reg_read_addr_1, reg_read_addr_2 ,clk)
	begin
	if(reg_write_bar = '0') then
		if(rising_edge(clk)) then
			reg_array(conv_integer(reg_write_dest)) <= reg_write_data;
		end if;
	end if;
	end process;


end Behavioral;