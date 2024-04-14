library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FSM_RST is
    port(
     RST	 : in std_logic;
	  CLK  : in std_logic;
	  St	 : in std_logic;
	  Sp	 : in std_logic;
	  SRST   : out std_logic
    );
end FSM_RST;

architecture simple of FSM_RST is
    signal qp, qn : std_logic_vector(1 downto 0) := "00";
begin  

    c1 : process(qp, St, Sp)
    begin 
        case qp is
            when "00" =>      --s0
				
					 SRST <= '0';
				
					 qn <= "01";
					 
            when "01" =>      --s1
                
					 SRST <= '1';
                
					 if St = '1' then
						  qn <= "10";
				    else
                    qn <= qp;
                end if;
					 
				when "10" =>      --s2
                
					 SRST <= '1';
                
					 if (Sp = '1') then
                    qn <= "11";
				    else
                    qn <= qp;
                end if;
					 
            when others =>   --s3
                
					 SRST <= '1';
                
					 qn <= "00";
        end case;
    end process;

    secuencial : process(RST, CLK)
    begin
        if RST = '0' then
            qp <= (others => '0');
			elsif(falling_edge(CLK)) then
			qp <= qn;
        end if;
    end process;

end simple;
