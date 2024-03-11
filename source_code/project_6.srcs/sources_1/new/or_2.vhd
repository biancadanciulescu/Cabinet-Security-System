 library IEEE;

use IEEE.std_logic_1164.all;		 


entity OR2 is
	port(x, y: in std_logic;
	
z: out std_logic);
  
end entity;
	  


architecture arh of OR2 is
begin 
	z<=x or y;
end arh;