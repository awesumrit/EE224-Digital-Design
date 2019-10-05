library ieee;
use ieee.std_logic_1164.all;

entity Fsm is
   port (u: in std_logic; y: out std_logic; r, clk: in std_logic);
end entity;

architecture Behave of Fsm is
  type InputSymbol  is (RST,a,b);
  signal input_symbol: InputSymbol;

  function InputSymbolDecode (r,u: std_logic)
	return  InputSymbol is
      variable ret_var: InputSymbol;
  begin
      ret_var := RST;
      if(r='0') then
	if(u = '1') then 
           ret_var := a;
        else 
           ret_var := b;
        end if;
     end if;
     return ret_var;
  end function InputSymbolDecode;

  type OutputSymbol is (NO,YES);
  signal output_symbol: OutputSymbol;
  function OutputSymbolEncode (x: OutputSymbol)
	return std_logic is
    variable ret_var: std_logic;
  begin
    ret_var := '0';
    if (x = YES)  then
      ret_var := '1';
    end if;
    return(ret_var);
  end function OutputSymbolEncode;

  type StateSymbol  is (phi,a,ab,aba,b,ba,bab);
  signal fsm_state_symbol: StateSymbol;


begin
  -- decode input..
  input_symbol <= InputSymbolDecode(r,u);

  -- encode output...
  y <= OutputSymbolEncode(output_symbol);

  process(input_symbol, fsm_state_symbol, clk)
     variable nq_var : StateSymbol;
     variable y_var  : OutputSymbol;
  begin
     nq_var := fsm_state_symbol; 
     y_var  := NO;

     -- compute next-state, output
     case fsm_state_symbol is
       when phi =>
          if (input_symbol = a) then
             nq_var := a;
          else
             nq_var := b;
          end if;
       when a =>
          if (input_symbol = a) then
             nq_var := a;
          else
             nq_var := ab;
          end if;
       when ab =>
          if (input_symbol = a) then
             nq_var := aba;
          else
             nq_var := b;
          end if;
       when aba =>
          if (input_symbol = a) then
             nq_var := a;
          else
             nq_var := bab;
				 y_var := YES;
          end if;
       when b =>
          if (input_symbol = a) then
             nq_var := ba;
          else
             nq_var := b;
          end if;
       when ba =>
          if (input_symbol = a) then
             nq_var := a;
          else
             nq_var := bab;
          end if;
       when bab =>
          if (input_symbol = a) then
             nq_var := aba;
				 y_var := YES;
          else
             nq_var := b;
          end if;
       when others => null;
     end case;
  
     -- y(k)
     output_symbol <= y_var;
  
     -- q(k+1) = nq(k)
     if(clk'event and clk = '1') then
          if (input_symbol = RST) then
             fsm_state_symbol <= phi;
          else
             fsm_state_symbol <= nq_var;
          end if;
     end if;

  end process;

end Behave;