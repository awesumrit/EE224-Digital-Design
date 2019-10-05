library ieee;
use ieee.std_logic_1164.all;

entity fsm_all is
	port (uin: in std_logic_vector(4 downto 0); y: out std_logic; rst, clk: in std_logic);
end entity;

architecture struct of fsm_all is

component Fsm_bomb is 
	port (uin: in std_logic_vector(4 downto 0); y: out std_logic; rst, clk: in std_logic);
end component;

component Fsm_gun is 
	port (uin: in std_logic_vector(4 downto 0); y: out std_logic; rst, clk: in std_logic);
end component;

component Fsm_terror is 
	port (uin: in std_logic_vector(4 downto 0); y: out std_logic; rst, clk: in std_logic);
end component;

component Fsm_knife is 
	port (uin: in std_logic_vector(4 downto 0); y: out std_logic; rst, clk: in std_logic);
end component;


signal z0,z1,z2,z3 : std_logic ;

begin 
	S0: Fsm_bomb port map(uin, z0, rst, clk) ;
	S1: Fsm_gun port map(uin, z1, rst, clk) ;
	S2: Fsm_terror port map(uin, z2, rst, clk) ;
	S3: Fsm_knife port map(uin, z3, rst, clk) ;
	y <= z0 or z1 or z2 or z3;
	
end struct;
	