----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2022 12:21:35 AM
-- Design Name: 
-- Module Name: Registru_mem - Behavioral
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



entity Registru_mem is
	
	port ( clk: in std_logic;
	intrare : in std_logic_vector(3 downto 0);
	q: out std_logic_vector (3 downto 0));
end Registru_mem;



architecture Registru_mem of Registru_mem is  

begin
	process(  clk, intrare)
	
	begin
		if rising_edge(clk) then

q<=intrare ;
				end if;
			
		end process;
	 

end Registru_mem;
