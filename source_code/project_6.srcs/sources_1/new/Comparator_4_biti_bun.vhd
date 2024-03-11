library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity COMPARATOR_4BITI is	 
	PORT ( X, Y: IN STD_LOGIC_VECTOR( 3 DOWNTO 0);
	F1, F2,F3 : out std_logic);
end COMPARATOR_4BITI;



architecture COMPARATOR_4BITI of COMPARATOR_4BITI is  

component 	  COMPARATOR_2BITI is
	port ( A, B: in std_logic_vector(1 downto 0);
	f1, f2, f3: out std_logic);

end component COMPARATOR_2BITI;
SIGNAL mareS, egalS ,micS ,mareN, eganN, micN :  std_logic;
begin
	U1: COMPARATOR_2BITI PORT MAP ( X(3 DOWNTO 2)	, Y(3 DOWNTO 2), mareS, egalS, micS);
	U2: COMPARATOR_2BITI port map( X(1 downto 0), Y( 1 downto 0), mareN, eganN, micN);	 
	F1<= mareS or( egalS AND mareN);
	F2<= egalS and eganN;
	F3<= micS or ( egalS and micN);


end COMPARATOR_4BITI;