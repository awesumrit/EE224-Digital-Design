library ieee;
use ieee.std_logic_1164.all;

package mult_components is

	component Controller -- Multiplier controller
		generic (N: integer := 2);
		port ( Clk: in std_logic; --rising edge clock
			Q0: in std_logic; --LSB of multiplier
			Start: in std_logic; --start algorithm
			Load: out std_logic; --Load M,Q; Clear A
			Shift: out std_logic; --Shift A:Q
			AddA: out std_logic; --Adder -> A
			Done: out std_logic ); -- Algorithm completed
	end component;

	component AdderN -- N-bit adder, N+1 bit output
		generic (N: integer := 4);
		port( A,B: in std_logic_vector(N-1 downto 0);
				S: out std_logic_vector(N downto 0) );
	end component;

	component RegN -- N-bit register with load/shift/clear
		generic (N: integer := 4);
		port ( 	Din: in std_logic_vector(N-1 downto 0); --N-bit input
				Dout: out std_logic_vector(N-1 downto 0); --N-bit output
				Clk: in std_logic; --rising edge clock
				Load: in std_logic; --Load enable
				Shift: in std_logic; --Shift enable
				Clear: in std_logic; --Clear enable
				SerIn: in std_logic ); --Serial input
	end component;

end package mult_components;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegN is
	generic (N: integer := 4);
	port ( Din: in std_logic_vector(N-1 downto 0); --N-bit input
	Dout: out std_logic_vector(N-1 downto 0); --N-bit output
	Clk: in std_logic; --Clock (rising edge)
	Load: in std_logic; --Load enable
	Shift: in std_logic; --Shift enable
	Clear: in std_logic; --Clear enable
	SerIn: in std_logic --Serial input
	);
end RegN;

architecture Behavioral of RegN is
signal Dinternal: std_logic_vector(N-1 downto 0); -- Internal state
begin
	process (Clk)
		begin
		if (rising_edge(Clk)) then
			if (Clear = '1') then
				Dinternal <= (others => '0'); -- Clear
			elsif (Load = '1') then
				Dinternal <= Din; -- Load
			elsif (Shift = '1') then
				Dinternal <= SerIn & Dinternal(N-1 downto 1); -- Shift
			end if;
		end if;
	end process;
	Dout <= Dinternal; -- Drive outputs**
end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AdderN is
	generic (N: integer := 4);
	port( A: in std_logic_vector(N-1 downto 0); -- N bit Addend
	B: in std_logic_vector(N-1 downto 0); -- N bit Augend
	S: out std_logic_vector(N downto 0) -- N+1 bit result, includes carry
	);
end AdderN;
architecture Behavioral of AdderN is
begin
	S <= std_logic_vector(('0' & UNSIGNED(A)) + UNSIGNED(B));
end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Controller is
	generic (N: integer := 2); -- # of counter bits
	port ( Clk: in std_logic; -- Clock (use rising edge)
	Q0: in std_logic; -- LSB of multiplier
	Start: in std_logic; -- Algorithm start pulse
	Load: out std_logic; -- Load M,Q and Clear A
	Shift: out std_logic; -- Shift A:Q
	AddA: out std_logic; -- Load Adder output to A
	Done: out std_logic -- Indicate end of algorithm
	);
end Controller;

architecture Behavioral of Controller is
type states is (HaltS,InitS,QtempS,AddS,ShiftS);
signal state: states := HaltS;
signal CNT: unsigned(N-1 downto 0);
begin
	-- Moore model outputs to control the datapath
	Done <= '1' when state = HaltS else '0'; -- End of algorithm
	Load <= '1' when state = InitS else '0'; -- Load M/Q, Clear A
	AddA <= '1' when state = AddS else '0'; -- Load adder to A
	Shift <= '1' when state = ShiftS else '0'; -- Shift A:Q

process(clk)
begin
if rising_edge(Clk) then
	case state is
		when HaltS => if Start = '1' then -- Start pulse applied?
				state <= InitS; -- Start the algorithm
			end if;
		when InitS => state <= QtempS; -- Test Q0 at next clock**

		when QtempS => if (Q0 = '1') then
				state <= AddS; -- Add if multiplier bit = 1
			else
				state <= ShiftS; -- Skip add if multiplier bit = 0
			end if;
		when AddS => state <= ShiftS; -- Shift after add

		when ShiftS => if (CNT = 2**N - 1) then
				state <= HaltS; -- Halt after 2^N iterations
			else
				state <= QtempS; -- Next iteration of algorithm: test Q0 **
			end if;
	end case;
end if;
end process;

process(Clk)
begin
	if rising_edge(Clk) then
		if state = InitS then
			CNT <= to_unsigned(0,N); -- Reset CNT in InitS state
		elsif state = ShiftS then
			CNT <= CNT + 1; -- Count in ShiftS state
		end if;
	end if;
end process;

end Behavioral;