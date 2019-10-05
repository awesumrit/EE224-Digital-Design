library ieee;
use ieee.std_logic_1164.all;

entity Fsm_bomb is
   port (uin: in std_logic_vector(4 downto 0); y: out std_logic; rst, clk: in std_logic);
end entity;

architecture Behave of Fsm_bomb is
  type InputSymbol  is (reset,b,o,m,g,u,n,k,i,f,e,t,r,d);
  signal input_symbol: InputSymbol;

  function InputSymbolDecode (rst: std_logic ; uin: std_logic_vector(4 downto 0))
	return  InputSymbol is
      variable ret_var: InputSymbol;
  begin
		if(rst = '1') then
				ret_var := reset;
		end if;
      if(rst='0') then
			case uin is 
				when "00010" =>
					ret_var := b ;
				when "01111" =>
					ret_var := o ;
				when "01101" =>
					ret_var := m ;
				when "00111" =>
					ret_var := g ;
				when "10101" =>
					ret_var := u ;
				when "01110" =>
					ret_var := n ;
				when "01011" =>
					ret_var := k ;
				when "01001" =>
					ret_var := i ;
				when "00110" =>
					ret_var := f ;
				when "00101" =>
					ret_var := e ;
				when "10100" =>
					ret_var := t ;
				when "10010" =>
					ret_var := r ;
				when others => 
					ret_var := d;
			end case;
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

  type StateSymbol  is (phi,b,bo,bom,bomb);
  signal fsm_state_symbol: StateSymbol;


begin
  -- decode input..
  input_symbol <= InputSymbolDecode(rst,uin);

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
			if (input_symbol = b) then
					nq_var := b ;
			end if;
       when b=>
			if (input_symbol = o) then
					nq_var := bo ;
			end if;
					
       when bo =>
			if (input_symbol = m) then
					nq_var := bom ;
					
			end if;
       when bom =>
			if (input_symbol = b) then
					nq_var := bomb ;
					y_var := YES;
			end if;
       when bomb =>
					nq_var := phi;
     end case;
     -- y(k)
     output_symbol <= y_var;
  
     -- q(k+1) = nq(k)
     if(clk'event and clk = '1') then
          if (input_symbol = reset) then
             fsm_state_symbol <= phi;
          else
             fsm_state_symbol <= nq_var;
          end if;
     end if;

  end process;

end Behave;