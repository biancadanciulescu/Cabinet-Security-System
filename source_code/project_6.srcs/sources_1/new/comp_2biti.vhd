library IEEE;

use IEEE.std_logic_1164.all;


entity comp2 is

	port(x, y: in std_logic_vector (1 downto 0);
	   
f1, f2, f3: out std_logic);

end entity;


architecture structural of comp2 is
 
component comp1
	port(x, y: in std_logic;
	
f1, f2, f3: out std_logic);
    
end component;	
	
component AND2
	port(x, y: in std_logic;

z: out std_logic);

end component;

	component OR2 is
	
port(x, y: in std_logic;
	    
z: out std_logic);
   
end component;	

signal s1, s2, s3, s4, s5, s6, s7, s8: std_logic;

begin
	
c1: comp1 port map (x => x(1), y => y(1), f1 => s1, f2 => s2, f3 => s3);

c2: comp1 port map (x => x(0), y => y(0), f1 => s4, f2 => s5, f3 => s6);
	
c3: and2 port map (x => s2, y => s4, z => s7);
	
c4: or2 port map (x => s1, y => s7, z => f1);
	
c5: and2 port map (x => s2, y => s5, z => f2);
	
c6: and2 port map (x => s2, y => s6, z => s8);
	
c7: or2 port map (x => s8, y => s3, z => f3);

end architecture;