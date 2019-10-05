library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ADCint is
   port (INTR: in std_logic;
         CS, WR, RD, Done: out std_logic;
         clk, reset : in std_logic);
end entity;


-- a direct implementatio of the count down timer...
-- may not be the most efficient...
architecture Behave of ADCint is
   -- Q
   type FsmState is (IDLE, TRAN1, SAMP, TRAN2, CALC, TRAN3, READD, TRAN4);
   signal fsm_state: FsmState;
	signal Count: std_logic_vector(3 downto 0);
	signal Count2: std_logic_vector(31 downto 0);
	signal W,R,C: std_logic;
   -- R
   --signal counter: std_logic_vector(31 downto 0);

   -- useful constant.
   constant Z32: std_logic_vector(31 downto 0) := (others => '0');
begin

  process(clk, reset, fsm_state, Count2, Count, INTR, W, R, C)
    variable next_WR_var: std_logic;
	 variable next_RD_var: std_logic;
	 variable next_CS_var: std_logic;
	 variable next_Count_var: std_logic_vector(3 downto 0);
	 variable next_Count2_var: std_logic_vector(31 downto 0);
    variable next_fsm_state_var: FsmState;
    variable Done_var: std_logic;
  begin
    -- default values.
    next_WR_var := W;
	 next_RD_var := R;
	 next_CS_var := C;
    next_fsm_state_var := fsm_state;
    Done_var := '0';

    -- delta, mu, lambda functions.
    case fsm_state is
       when IDLE => 
					next_fsm_state_var := TRAN1;
					  next_CS_var := '0';
				next_Count2_var := Z32;
       when TRAN1 => 
                 next_fsm_state_var := SAMP;
					  next_WR_var := '0';
					  next_Count_var := "0000";
					  next_Count2_var := std_logic_vector(unsigned(Count2) + 1);
       when SAMP => 
            if (unsigned(Count)>3) then
                  next_fsm_state_var := TRAN2;
						next_WR_var := '1';
            end if;
				next_Count_var := std_logic_vector(unsigned(Count) + 1);
				next_Count2_var := std_logic_vector(unsigned(Count2) + 1);
		 when TRAN2 =>
						next_fsm_state_var := CALC;
						next_CS_var := '1';
						next_Count2_var := std_logic_vector(unsigned(Count2) + 1);
		  when CALC =>
					if(INTR='0') then
							next_fsm_state_var := TRAN3;
							next_CS_var:= '0';
					end if;
					next_Count2_var := std_logic_vector(unsigned(Count2) + 1);
			when TRAN3 =>
						next_fsm_state_var := READD;
						next_RD_var :='0';
						next_Count_var := "0000";
					next_Count2_var := std_logic_vector(unsigned(Count2) + 1);
			when READD =>
					if(unsigned(Count)>3) then
						next_fsm_state_var := TRAN4;
						next_RD_var :='1';
						Done_var :='1';
					end if;	
					next_Count_var := std_logic_vector(unsigned(Count) + 1);
					next_Count2_var := std_logic_vector(unsigned(Count2) + 1);
			when TRAN4 =>
					if(unsigned(Count2)>49) then
						next_fsm_state_var := IDLE;
					end if;
					next_CS_var := '1';
					next_Count2_var := std_logic_vector(unsigned(Count2) + 1);
    end case;

    -- Done is an output of the FSM
    Done <= Done_var;
    -- update state, registers.
    if(clk'event and clk='1') then
        if(reset = '1') then
           fsm_state <= IDLE;
			  CS <= '1';
			  WR <= '1';
			  RD <= '1';
			  C <= '1';
			  W <= '1';
			  R <= '1';
			  Count2 <= Z32;
        else
           fsm_state <= next_fsm_state_var;       
				CS <= next_CS_var;
				RD <= next_RD_var;
				WR <= next_WR_var;
				C <= next_CS_var;
				R <= next_RD_var;
				W <= next_WR_var;
				Count <= next_Count_var;
				Count2 <= next_Count2_var;
        end if;
    end if;
  end process;

end Behave;