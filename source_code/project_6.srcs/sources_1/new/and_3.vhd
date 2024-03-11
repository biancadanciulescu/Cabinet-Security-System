----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2022 02:50:03 PM
-- Design Name: 
-- Module Name: and_3 - Behavioral
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


entity and_3 is
port( a, b, c: in std_logic;
x: out std_logic);
end and_3;



architecture Behavioral of and_3 is

component and2 is
	port(x, y: in std_logic;
z: out std_logic);
 end component;
 
 signal s: std_logic;
begin
 s<= a and b;
 x<= s and c;



end Behavioral;
