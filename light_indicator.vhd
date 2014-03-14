----------------------------------------------------------------------------------
-- Company: 	USAFA	
-- Engineer: 	C3C Jasper Arneberg
-- 
-- Create Date:    21:40:13 03/13/2014 
-- Design Name: 
-- Module Name:    light_indicator - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: This simple module takes in a direction signal and outputs a 
-- light array going to the left or to the right.
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity light_indicator is
    Port ( 	clk : in STD_LOGIC;
				left_right : in  STD_LOGIC;
				motion : in STD_LOGIC;
				clockbus : in STD_LOGIC_VECTOR(26 downto 0);
           light_display : out  STD_LOGIC_VECTOR(7 downto 0));
end light_indicator;

architecture Behavioral of light_indicator is

--signal goes here if needed

begin

process (clk) 
		variable resetclk : std_logic := '1';
	begin	
	
	if motion = '0' then
		light_display(7) <= '1';
		light_display(6) <= '1';
		light_display(5) <= '1';
		light_display(4) <= '1';
		light_display(3) <= '1';
		light_display(2) <= '1';
		light_display(1) <= '1';
		light_display(0) <= '1';
	else
		if left_right = '1' then
			light_display(7) <= clockbus(22);
			light_display(6) <= clockbus(22);
			light_display(5) <= clockbus(22);
			light_display(4) <= clockbus(22);
			light_display(3) <= clockbus(22);
			light_display(2) <= clockbus(22);
			light_display(1) <= clockbus(22);
			light_display(0) <= clockbus(22);
		else
			light_display(7) <= clockbus(26);
			light_display(6) <= clockbus(26);
			light_display(5) <= clockbus(26);
			light_display(4) <= clockbus(26);
			light_display(3) <= clockbus(26);
			light_display(2) <= clockbus(26);
			light_display(1) <= clockbus(26);
			light_display(0) <= clockbus(26);
		end if;
	end if;
	
	end process;

end Behavioral;

