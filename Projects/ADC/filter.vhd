library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity filter is
   port (x: in std_logic_vector(7 downto 0);
         sampin: in std_logic;
         y: out std_logic_vector(7 downto 0);
         clk, reset : in std_logic);
end entity;


-- a direct implementatio of the count down timer...
-- may not be the most efficient...
architecture Behave of filter is
   -- Q
	type FsmState is (IDLE, COMP);
   signal fsm_state: FsmState;
   -- R
   signal r7,r6,r5,r4,r3,r2,r1,r0: std_logic_vector(15 downto 0);

   -- useful constant.
   constant Z16: std_logic_vector(15 downto 0) := (others => '0');
begin

  process(clk, reset, sampin, r7, r6, r5, r4, r3, r2, r1, r0)
    variable next_r7_var,next_r6_var,next_r5_var,next_r4_var,next_r3_var,next_r2_var,next_r1_var,next_r0_var: std_logic_vector(15 downto 0);
	 variable next_y_var: std_logic_vector(15 downto 0);
	 variable next_fsm_var: FsmState;
  begin
    -- default values.
    next_r7_var := r7;
	 next_r6_var := r6;
	 next_r5_var := r5;
	 next_r4_var := r4;
	 next_r3_var := r3;
	 next_r2_var := r2;
	 next_r1_var := r1;
	 next_r0_var := r0;
	 next_fsm_var := fsm_state;
case fsm_state is
       when IDLE => 
   if (sampin = '1') then
						next_fsm_var := COMP;
                  next_r0_var(7 downto 0) := x;
						next_r0_var(15 downto 8) := "00000000";
						next_r1_var := r0;
						next_r2_var := r1;
						next_r3_var := r2;
						next_r4_var := r3;
						next_r5_var := r4;
						next_r6_var := r5;
						next_r7_var := r6;
	end if;
			when COMP =>
			        next_fsm_var := IDLE;
					  next_y_var := std_logic_vector((unsigned(next_r0_var) + unsigned(next_r1_var) + unsigned(next_r2_var) + unsigned(next_r3_var) + unsigned(next_r4_var) + unsigned(next_r5_var) + unsigned(next_r6_var) + unsigned(next_r7_var))/8);
end case;					  

   y <= next_y_var(7 downto 0);
    -- update state, registers.
    if(clk'event and clk='1') then
        if(reset = '1') then
				fsm_state <= IDLE;
			  r0 <= Z16;
			  r1 <= Z16;
			  r2 <= Z16;
			  r3 <= Z16;
			  r4 <= Z16;
			  r5 <= Z16;
			  r6 <= Z16;
			  r7 <= Z16;			  
        else
			fsm_state <= next_fsm_var; 
			  r0 <= next_r0_var;
			  r1 <= next_r1_var;
			  r2 <= next_r2_var;
			  r3 <= next_r3_var;
			  r4 <= next_r4_var;
			  r5 <= next_r5_var;
			  r6 <= next_r6_var;
			  r7 <= next_r7_var;
			  
			  end if;
    end if;
  end process;

end Behave;