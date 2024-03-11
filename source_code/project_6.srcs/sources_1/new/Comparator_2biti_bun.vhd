library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity COMPARATOR_2BITI is
	port ( A, B: in std_logic_vector(1 downto 0);
	f1, f2, f3: out std_logic);
	
	
end COMPARATOR_2BITI;



architecture COMPARATOR_2BITI of COMPARATOR_2BITI is
SIGNAL S1,S2,S3,S4, S5,S6,S7,S8,S9,S10: std_logic;	
BEGIN 
 
	  S1<= A(1) AND NOT B(1);
	  S2<= A(1) XNOR B(1);
	  S3<= A(0) AND  NOT B(0); 
	  S4<= S2 AND S3;
	  f1<= S1 or S4;

	  S5<= A(1) XNOR B(1);
	  S6<= A(0) XNOR B(0);
	  f2<= S5 and S6;


	  S7<= NOT A(1) AND  B(1);
	  S8<= A(1) XNOR B(1);
	  S9<= NOT A(0) AND   B(0); 
	  S10<= S8 AND S9;
	  f3<= S7 or S10;

end COMPARATOR_2BITI;