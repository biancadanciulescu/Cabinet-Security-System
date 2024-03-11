library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;



entity Numaratorr6 is
port( UP : in std_logic;
DOWN: in std_logic;	 
RESET: in std_logic;
CLK: in std_logic;
Ad_Cifru: in std_logic;
LED: out std_logic_vector(3 downto 0);
Nr_Apas: in std_logic_vector(3 downto 0));
end Numaratorr6; 


architecture count of Numaratorr6 is  

signal CNT: std_logic_vector(3 downto 0):=	"0000";	

begin
	process(CLK, RESET, UP, DOWN, Ad_Cifru)

	begin		 
		
		   if (CLK'event and CLK='1' ) then
               if (Nr_Apas="1000") then
			     if(UP= '1' and DOWN= '0' AND CNT<"1111") then CNT<= CNT+1;	 
			     elsif ( UP= '0' and DOWN ='1' and CNT >"0000" ) then CNT<= CNT-1; 
			     ELSIF ( UP='1' AND DOWN ='0' AND CNT="1111") THEN CNT<="0000";	  
				end if;	
			end if;
			end if;	 
			
		end process;		   
		
		LED<=CNT; 
end count ;