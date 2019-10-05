	library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adc_state is
   port (clk,reset : in std_logic;
			INTR : in std_logic;
			DATA : in std_logic_vector (7 downto 0);
			ROUT : out std_logic_vector (7 downto 0);
			CS,RD,WR : out std_logic);
end entity;


-- a direct implementatio of the count down timer...
-- may not be the most efficient...
architecture Behave of adc_state is
   -- Q
   type FsmState is (S1,S2,S3,S4,S5,S6,S7,S8,S9,S10);
   signal fsm_state: FsmState;
	signal R : std_logic_vector (7 downto 0);
   -- R
   signal counter: std_logic_vector(31 downto 0);
	signal counter2 : std_logic_vector(31 downto 0);
			-- Count : std_logic_vector(1 downto 0);
			 -- useful constant.
   --constant Z32: std_logic_vector(31 downto 0) := (others => '0');
begin

  process(clk, reset, fsm_state, counter)
    variable next_counter_var: std_logic_vector(31 downto 0);
	 variable next_counter_var2: std_logic_vector(31 downto 0);
    variable next_fsm_state_var: FsmState;
	-- variable CS1 : std_logic;
	 variable R1 : std_logic_vector (7 downto 0);
	-- variable WR1 : std_logic;
  begin
    -- default values.
    next_counter_var := counter;
    next_fsm_state_var := fsm_state;
	 R1 := R;
    -- delta, mu, lambda functions.
    case fsm_state is
       when S1 => 
			next_counter_var := "00000000000000000000000000000000";
	   	next_counter_var2 := "00000000000000000000000000000000";
			CS <= '1';
			RD <= '1';
			WR <= '1';
			next_fsm_state_var := S2;
		 when S2 =>
			CS <= '0';
			RD <= '1';
			WR <= '1';
			next_fsm_state_var := S3;
		 when S3 =>
			next_counter_var := std_logic_vector(to_unsigned(to_integer(unsigned(counter)) + 1,32));
			if (to_integer(unsigned(next_counter_var)) = 5) then
				next_fsm_state_var := S4;
				next_counter_var := std_logic_vector(to_unsigned(0,32));
			else
				CS <= '0';
				RD <= '1';
				WR <= '0';
		--		next_counter_var := std_logic_vector(to_unsigned(to_integer(unsigned(counter)) + 1,3));
			end if;
		 when S4 =>
			CS <= '0';
			WR <= '1';
			RD <= '1';
			next_fsm_state_var := S5;
		 when S5 =>
			next_counter_var := std_logic_vector(to_unsigned(to_integer(unsigned(counter)) + 1,32));
				if (to_integer(unsigned(next_counter_var)) = 9) then					
					next_fsm_state_var := S9;
					next_counter_var := std_logic_vector(to_unsigned(0,32));
				else
					CS <= '1';
					RD <= '1';
					WR <= '1';
				end if;
		 when S6 =>
			CS <= '0';
			RD <= '0';
			WR <= '1';
			next_fsm_state_var := S7;
		 when S7 =>
			next_counter_var := std_logic_vector(to_unsigned(to_integer(unsigned(counter)) + 1,32));
					if (to_integer(unsigned(next_counter_var)) = 6) then
						next_fsm_state_var := S8;
						next_counter_var := std_logic_vector(to_unsigned(0,32));
						R1 := DATA;
					else
						CS <= '0';
						RD <= '0';
						WR <= '1';
					end if;
		 when S8 =>
			CS <= '0';
			WR <= '1';
			RD <= '1';
			next_fsm_state_var := S1;		
		 when S9 => 
			if(INTR = '0') then
				next_fsm_state_var := S10;
			end if;
		 when S10 =>
			CS <= '0';
			RD <= '1';
			WR <= '1';
			next_fsm_state_var := S6;
		end case;

    if(clk'event and clk='1') then
        if(reset = '1') then
           fsm_state <= S1;
        else
           fsm_state <= next_fsm_state_var;       
	        counter <= next_counter_var;
			  counter2 <= std_logic_vector(to_unsigned(to_integer(unsigned(counter2)) + 1,32));
			  R <= R1;
        end if;
    end if;
	 if (to_integer(unsigned(counter2)) = 50000) then
			ROUT <= R;
			counter2 <= next_counter_var2;
	 end if;
  end process;

end Behave;