library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fourbit is
   port (Start: in std_logic;
         a: in std_logic_vector(3 downto 0);
         b: in std_logic_vector(3 downto 0);
         p: out std_logic_vector(7 downto 0);
         Done: out std_logic;
         clk, reset : in std_logic);		
end entity;


-- a direct implementation of the count down timer...
-- may not be the most efficient...
architecture Behave of fourbit is
   -- Q
   type FsmState is (IDLE, TEMP, WORKS, DONES);
   signal fsm_state: FsmState;

   -- R
	signal	R : std_logic_vector(7 downto 0);
	signal	T : std_logic_vector(2 downto 0);
	signal	Count : std_logic_vector(1 downto 0);

begin

  process(clk, reset, fsm_state, Count, Start)
    variable next_counter_var: std_logic_vector(1 downto 0);
    variable next_fsm_state_var: FsmState;
    variable Done_var: std_logic;
  begin
    -- default values.
    next_counter_var := std_logic_vector(unsigned(Count));
    next_fsm_state_var := fsm_state;
    Done_var := '0';

    -- delta, mu, lambda functions.
if rising_edge(Clk) then
    case fsm_state is
       when IDLE => 
            if (Start = '1') then
					next_fsm_state_var := TEMP;
				else 
					next_fsm_state_var := IDLE;
            end if;
		 when TEMP =>
					R(7) <= '0';
					if( b(0) = '1') then
						R(6 downto 3) <= a(3 downto 0);
					else
						R(6 downto 3) <= std_logic_vector(to_unsigned(0,4)) ;
					end if;
					R(2 downto 0) <= std_logic_vector(to_unsigned(0,3)) ;
					T(2 downto 0) <= b(3 downto 1);
					next_counter_var := std_logic_vector(to_unsigned(0,2));
					next_fsm_state_var := WORKS;
       when WORKS => 
            if (unsigned(Count) = 3) then
						
						p <= R(7 downto 0) ;	
						next_fsm_state_var := DONES;
				else
                  
						if( T(0) = '1') then 
							R(7 downto 3) <= std_logic_vector(resize(unsigned(R(7 downto 4)) + unsigned(a(3 downto 0)),5));
						else 
							R(7 downto 3) <= std_logic_vector(resize(unsigned(R(7 downto 4)) + 0,5));
						end if;
						R(2 downto 0) <= R(3 downto 1);
						T <= std_logic_vector(shift_right(unsigned(T),1)) ;
						next_counter_var := std_logic_vector(unsigned(Count) + 1);
						next_fsm_state_var := WORKS;
						
            end if;
       when DONES => 
            Done_var := '1';
				next_fsm_state_var := IDLE;

    end case;

    -- Done is an output of the FSM
    Done <= Done_var;
	 if(reset = '1') then
           fsm_state <= IDLE;
    else
			  fsm_state <= next_fsm_state_var;  
			  Count <= next_counter_var;
	 end if;
	 
end if;
end process;
	 

end Behave;