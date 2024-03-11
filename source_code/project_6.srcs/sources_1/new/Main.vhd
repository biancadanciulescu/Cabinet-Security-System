----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2022 02:38:44 AM
-- Design Name: 
-- Module Name: Main - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;


entity Main is
    port ( clk , reset: in std_logic;
     Ad_Cifru , Buton_Up, Buton_Down: in std_logic ;
    Anozi : out std_logic_vector(3 downto 0);
    Catozi: out std_logic_vector ( 6 downto 0);
    Introdu_Caractere: out std_logic:='1';
    Liber_Ocupat : out std_logic :='0');
   
end Main;

architecture Behavioral of Main is

component Numaratorr is
port( UP : in std_logic;
DOWN: in std_logic;	 
RESET: in std_logic;
CLK: in std_logic;
Ad_Cifru: in std_logic;
LED: out std_logic_vector(3 downto 0);
Iesire_Reg1: out std_logic_vector( 3 downto 0);
Nr_Apas: in std_logic_vector(3 downto 0));
end component;

component Numaratorr2 is
port( UP : in std_logic;
DOWN: in std_logic;	 
RESET: in std_logic;
CLK: in std_logic;
Ad_Cifru: in std_logic;
LED: out std_logic_vector(3 downto 0);
Iesire_Reg2: out std_logic_vector ( 3 downto 0);
Nr_Apas: in std_logic_vector(3 downto 0));
end component Numaratorr2; 


component Numaratorr3 is
port( UP : in std_logic;
DOWN: in std_logic;	 
RESET: in std_logic;
CLK: in std_logic;
semnal: out std_logic;
Ad_Cifru: in std_logic;
LED: out std_logic_vector(3 downto 0);
Iesire_Reg3: out std_logic_vector ( 3 downto 0);
Nr_Apas: in std_logic_vector(3 downto 0));
end component Numaratorr3;

component Numaratorr4 is
port( UP : in std_logic;
DOWN: in std_logic;	 
RESET: in std_logic;
CLK: in std_logic;
Ad_Cifru: in std_logic;
LED: out std_logic_vector(3 downto 0);
Nr_Apas: in std_logic_vector(3 downto 0));
end component Numaratorr4;


component Numaratorr5 is
port( UP : in std_logic;
DOWN: in std_logic;	 
RESET: in std_logic;
CLK: in std_logic;
Ad_Cifru: in std_logic;
LED: out std_logic_vector(3 downto 0);
Nr_Apas: in std_logic_vector(3 downto 0));
end component Numaratorr5;

component Numaratorr6 is
port( UP : in std_logic;
DOWN: in std_logic;	 
RESET: in std_logic;
CLK: in std_logic;
Ad_Cifru: in std_logic;
LED: out std_logic_vector(3 downto 0);
Nr_Apas: in std_logic_vector(3 downto 0));
end component Numaratorr6;

component Debouncer IS
   PORT ( clk,buton  : IN STD_LOGIC; 	 
  			enable : OUT STD_LOGIC);
end component;

component  Nr_Apasari is
   port( CLK, Ad_Cifru: in std_logic;
   Nr_Apasari: out std_logic_vector(3 downto 0));
end component;

component SSD_1 is
    Port ( digit0 : in STD_LOGIC_VECTOR (3 downto 0);
           digit1 : in STD_LOGIC_VECTOR (3 downto 0);
           digit2 : in STD_LOGIC_VECTOR (3 downto 0);
           digit3 : in STD_LOGIC_VECTOR (3 downto 0);
           clk ,reset: in STD_LOGIC;
           Nr_Apas: in std_logic_vector(3 downto 0);
           cat : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component SSD_2 is
 Port ( digit0 : in STD_LOGIC_VECTOR (3 downto 0);
           digit1 : in STD_LOGIC_VECTOR (3 downto 0);
           digit2 : in STD_LOGIC_VECTOR (3 downto 0);
           digit3 : in STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC;
           Nr_Apas: in std_logic_vector(3 downto 0);
           cat : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end component ;



component Registru_mem is
	
	port ( clk: in std_logic;
	intrare : in std_logic_vector(3 downto 0);
	q: out std_logic_vector (3 downto 0));
end component Registru_mem;

component Registru_mem2 is
	port ( clk: in std_logic;
	intrare : in std_logic_vector(3 downto 0);
	q: out std_logic_vector (3 downto 0));
end component Registru_mem2;

component Registru_mem3 is
	port ( clk: in std_logic;
	intrare : in std_logic_vector(3 downto 0);
	q: out std_logic_vector (3 downto 0));
end component Registru_mem3;


component Registru_mem4 is
	
	port ( clk: in std_logic;
	intrare : in std_logic_vector(3 downto 0);
	q: out std_logic_vector (3 downto 0));
end component Registru_mem4;

component Registru_mem5 is
	
	port ( clk: in std_logic;
	intrare : in std_logic_vector(3 downto 0);
	q: out std_logic_vector (3 downto 0));
end component Registru_mem5;

component Registru_mem6 is
	
	port ( clk: in std_logic;
	intrare : in std_logic_vector(3 downto 0);
	q: out std_logic_vector (3 downto 0));
end component Registru_mem6;

component COMPARATOR_4BITI is	 
	PORT ( X, Y: IN STD_LOGIC_VECTOR( 3 DOWNTO 0);
	F1, F2,F3 : out std_logic);
end component COMPARATOR_4BITI;

component and_3 is
port( a, b, c: in std_logic;
x: out std_logic);
  
end component;



signal En_Up, En_Down ,En_Ad ,En_Reset: std_logic;
signal cresc: std_logic_vector(3 downto 0):="0000";
signal Val1, Val2, Val3, Val4,VALinter,Iesire_Reg1,Iesire_Reg2,Iesire_Reg3,iesire_r1,iesire_r2,iesire_r3: std_logic_vector ( 3 downto 0):="0000";
signal Val12, Val13, Val14, Val21, Val23,Val24, Val31, Val32, Val34:std_logic_vector( 3 downto 0);
signal  Anozis: std_logic_vector ( 3 downto 0);
signal Catozis: std_logic_vector ( 6 downto 0);
signal  Anozis1: std_logic_vector ( 3 downto 0);
signal Catozis1: std_logic_vector ( 6 downto 0);
signal  Anozis2: std_logic_vector ( 3 downto 0);
signal Catozis2: std_logic_vector ( 6 downto 0);
signal  Anozis3: std_logic_vector ( 3 downto 0);
signal Catozis3: std_logic_vector ( 6 downto 0);
signal Nr_apas,Nr_apasari_3: std_logic_vector( 3 downto 0):="0000";
signal Val5, Val6, Val7, Val8: std_logic_vector ( 3 downto 0):="0000";
signal Reset_Numarator: std_logic;
signal reset1: std_logic;
signal semnal : std_logic;
signal f_mic_c1, f_egal_c1, f_mare_c1,  f_mic_c2, f_egal_c2, f_mare_c2,  f_mic_c3, f_egal_c3, f_mare_c3, semnal_egalitate: std_logic;
signal iesire_reg4, iesire_reg5, iesire_reg6 : std_logic_vector(3 downto 0);
begin

bt1: Debouncer port map ( clk , Buton_Up , En_Up); -- Debouncer buton Up
bt2: Debouncer port map ( clk , Buton_Down , En_Down );  -- Debouncer pt Down 
bt3: Debouncer port map ( clk , Ad_Cifru, En_Ad); -- Debouncer pt Ad_Cifru
bt4: Debouncer port map (clk, reset, En_Reset);

Apas_Ad: Nr_Apasari port map ( clk, En_Ad,Nr_Apas);

Numar1: Numaratorr port map ( En_Up , En_Down , En_Reset, clk  ,En_Ad, Val1,Iesire_Reg1, Nr_apas);
Numar2: Numaratorr2 port map ( En_Up, En_Down ,En_Reset, clk,En_Ad, Val2,Iesire_Reg2, Nr_Apas);
Numar3: Numaratorr3 port map ( En_Up, En_Down ,En_Reset, clk, semnal, En_Ad, Val3, Iesire_Reg3,Nr_Apas);


Numar4: Numaratorr4 port map ( En_Up , En_Down , En_Reset , clk  ,En_Ad, Val5, Nr_Apas);
Numar5: Numaratorr5 port map ( En_Up, En_Down , En_Reset, clk,En_Ad, Val6, Nr_Apas);
Numar6: Numaratorr6 port map ( En_Up, En_Down ,En_Reset, clk,En_Ad, Val7, Nr_Apas);


Registru1: Registru_mem port map(clk, Iesire_Reg1, iesire_r1);
Registru2: Registru_mem2 port map(clk, Iesire_Reg2, iesire_r2);
Registru3: Registru_mem3 port map(clk,Iesire_Reg3 , iesire_r3);

Registru4: Registru_mem4 port map(clk, Val5, iesire_reg4);
Registru5: Registru_mem5 port map(clk, Val6, iesire_reg5);
Registru6: Registru_mem6 port map(clk, Val7, iesire_reg6);

C1: COMPARATOR_4BITI port map (iesire_reg1, Val5, f_mic_c1, f_egal_c1, f_mare_c1);
C2: COMPARATOR_4BITI port map (iesire_reg2, Val6, f_mic_c2, f_egal_c2, f_mare_c2);
C3: COMPARATOR_4BITI port map (iesire_reg3, Val7, f_mic_c3, f_egal_c3, f_mare_c3);

And3: and_3 port map (f_egal_c1, f_egal_c2, f_egal_c3, semnal_egalitate);


P1: SSD_1 port map ( Val1, Val2, Val3, Val4, clk,En_Reset, Nr_Apas,  Catozis1, Anozis1);
P2: SSD_2 port map (Val5, Val6, Val7, Val24,clk,Nr_Apas,  Catozis2, Anozis2);


    process (clk, En_Ad)
begin 
 if (rising_edge(clk) and En_Ad='1') then 
 cresc<=cresc+1;
 end if;
 end process;
 
process (En_Ad, En_Reset)
begin 
              Anozi(2 downto 0)<= Anozis1( 2 downto 0);
              Catozi<=Catozis1(6 downto 0);
   if cresc="0100" then 
                Anozi(2 downto 0)<="111";
                Introdu_Caractere<='0';
                Liber_Ocupat<='1';
                
  elsif (cresc="0110") then 
            Liber_Ocupat<= '0';
            Introdu_Caractere<='1';
            Anozi(2 downto 0)<= Anozis2( 2 downto 0);
            Catozi<=Catozis2(6 downto 0);
   elsif(cresc ="0111") then
              Liber_Ocupat<= '0';
              Introdu_Caractere<='1';
              Anozi(2 downto 0)<= Anozis2( 2 downto 0);
              Catozi<=Catozis2(6 downto 0);
              
    elsif cresc ="1000" then
               Liber_Ocupat<= '0';
              Introdu_Caractere<='1';
              Anozi(2 downto 0)<= Anozis2( 2 downto 0);
              Catozi<=Catozis2(6 downto 0);
              
    elsif cresc ="1001" then 
            if semnal_egalitate = '1' then
            
                       Liber_Ocupat <= '0';
                       Introdu_Caractere <= '0';
                       Anozi(2 downto 0)<="111";
            elsif semnal_egalitate ='0' then
            
                       Liber_Ocupat <='1';
                       Introdu_Caractere<='0';
                       Anozi(2 downto 0)<="111";
     
    end if;
    end if;
  end process;  
end Behavioral;
