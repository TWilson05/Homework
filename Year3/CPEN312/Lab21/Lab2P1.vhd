library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Lab2P1 is
	port
	(
		-- Input ports
		data 	: in STD_LOGIC_VECTOR(7 downto 0);
		add	: in STD_LOGIC;
		latchA : in STD_LOGIC;
		latchB : in STD_LOGIC;
		-- Output ports
		LED   : out STD_LOGIC_VECTOR(7 downto 0)
	);
end Lab2P1;

architecture a of Lab2P1 is
	-- Declarations (optional)
	signal a : std_logic_vector(7 downto 0);
	signal b : std_logic_vector(7 downto 0);
	
begin

	process(a,b)
	begin
		if(add = '1') then
			LED <= a+b;
		else
			LED <= a-b;
		end if;
	end process;
	
	process(latchA, latchB, data)
	begin
		if(latchA = '0') then
			a <= data;
		end if;
		if(latchB = '0') then
			b <= data;
		end if;
	end process;
	

end a;