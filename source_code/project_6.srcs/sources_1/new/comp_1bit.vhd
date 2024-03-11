 library IEEE;

use IEEE.std_logic_1164.all;


entity comp1 is
	
port(x, y: in std_logic;
	   
f1, f2, f3: out std_logic);

end entity;


architecture flux of comp1 is

begin
	f1 <= x and (not y);

f2 <= x xnor y;
	
f3 <= (not x) and y;

end architecture;