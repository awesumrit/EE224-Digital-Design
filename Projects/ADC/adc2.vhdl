library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity adc_state is
	port (INTR, Data : in std_logic; CS, WR, RD : out std_logic;
		Start: in std_logic;
		reset,clk: in std_logic);
end entity;


architecture RTL of adc_state is
	
	-- fsm-state.
	type FsmState is (A, B, C, D, E, F, G, H, I);
	signal fsm_state: FsmState;
	
		
	signal Count : std_logic_vector(3 downto 0);
	signal R : std_logic ; -- registers.
	 
begin
	-- State machine 
	process(clk,reset, fsm_state, INTR, Start)

		variable next_fsm_state_var : FsmState;
		variable next_Count_var: std_logic_vector(3 downto 0);
		variable R1 : std_logic ;
		--variable Done_var: std_logic;

  begin
		-- default value

		next_Count_var := Count;

		R1 := R; 
		next_fsm_state_var := fsm_state;


		case fsm_state is 
			when A =>
				if(Start = '1') then
					CS <= '1' ;
					WR <= '1' ;
					RD <= '1' ;
					next_fsm_state_var := B ;
					next_Count_var := (others => '0');
				else
					next_fsm_state_var := A ;
					next_Count_var := (others => '0');
					
				end if;

			when B =>
				CS <= '0' ;
				WR <= '1' ;
				RD <= '1' ;
				next_fsm_state_var := C ;
				next_Count_var := (others => '0');
				
			when C =>
				CS <= '0' ;
				WR <= '0' ;
				RD <= '1' ;
				next_Count_var := std_logic_vector(unsigned(Count) + 1);
				
				if(unsigned(Count) = 4) then 
					next_fsm_state_var := D ;
				else
					next_fsm_state_var := C ;
				end if;
					
					
			when D =>
				CS <= '0' ;
				WR <= '1' ;
				RD <= '1' ;		
				next_fsm_state_var := E ;
				next_Count_var := (others => '0');
				
			when E =>
				CS <= '1' ;
				WR <= '1' ;
				RD <= '1' ;
				next_Count_var := std_logic_vector(unsigned(Count) + 1);
				if(INTR = '0') then 
					next_fsm_state_var := F ;
				else
					next_fsm_state_var := E ;
				end if;
			
			when F =>
				CS <= '0' ;
				WR <= '1' ;
				RD <= '1' ;
				
				next_fsm_state_var := G ;
				next_Count_var := (others => '0');
					
			when G =>
				CS <= '0' ;
				WR <= '1' ;
				RD <= '0' ;
				
				next_Count_var := std_logic_vector(unsigned(Count) + 1);
				if(unsigned(Count) = 6) then 
					next_fsm_state_var := H ;
				else
					next_fsm_state_var := G ;
				end if;
			
			when H =>
				CS <= '0' ;
				WR <= '1' ;
				RD <= '1' ;
						
				R1 := Data ;
				next_Count_var := std_logic_vector(unsigned(Count) + 1);
				if(unsigned(Count) = 12) then 
					next_fsm_state_var := H ;
				else
					next_fsm_state_var := I ;
				end if;
				
			when I =>
				CS <= '1' ;
				WR <= '1' ;
				RD <= '1' ;
				
				next_Count_var := (others => '0');
				next_fsm_state_var := A ;
							
		end case;


		if(clk'event and clk = '1') then
			if(reset = '1') then
				fsm_state <= A;
			else
				fsm_state <= next_fsm_state_var;
				Count <= next_Count_var;
				R <= R1;	

			end if;
		end if;
	end process;
end RTL;
