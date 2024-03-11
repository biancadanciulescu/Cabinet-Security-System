 library IEEE;

use IEEE.std_logic_1164.all;  


entity comp4 is

	port(x, y: in std_logic_vector (3 downto 0);

		f1, f2, f3: out std_logic);

end entity;



architecture structural of comp4 is
  
component comp2
	port(x, y: in std_logic_vector (1 downto 0);
	
f1, f2, f3: out std_logic);
  
end component;
	

component AND2
	port(x, y: in std_logic;
	
z: out std_logic);
  
end component;
	   

component ORR_2 is
	port(x, y: in std_logic;
	  
z: out std_logic);
   
end component;
	
signal s1, s2, s3, s4, s5, s6, s7, s8: std_logic;

begin

c1: comp2 port map (x => x(3 downto 2), y => y(3 downto 2), f1 => s1, f2 => s2, f3 => s3);

c2: comp2 port map (x => x(1 downto 0), y => y(1 downto 0), f1 => s4, f2 => s5, f3 => s6);

c3: and2 port map (x => s2, y => s4, z => s7);

c4: ORR_2 port map (x => s1, y => s7, z => f1);

c5: and2 port map (x => s2, y => s5, z => f2);

c6: and2 port map (x => s2, y => s6, z => s8);

c7: ORR_2 port map (x => s8, y => s3, z => f3);

end architecture;