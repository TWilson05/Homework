library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Lab2P2 is
	port
	(
		-- Input ports
		data1 : in STD_LOGIC_VECTOR(3 downto 0);
		data2 : in STD_LOGIC_VECTOR(3 downto 0);
		sub : in STD_LOGIC;
		latchA : in STD_LOGIC;
		latchB : in STD_LOGIC;
		-- Output ports
		outA1 : out STD_LOGIC_VECTOR(6 downto 0);
		outA2 : out STD_LOGIC_VECTOR(6 downto 0);
		outB1 : out STD_LOGIC_VECTOR(6 downto 0);
		outB2 : out STD_LOGIC_VECTOR(6 downto 0);
		outS1 : out STD_LOGIC_VECTOR(6 downto 0);
		outS2 : out STD_LOGIC_VECTOR(6 downto 0);
		overflow : out STD_LOGIC
	);
end Lab2P2;

architecture a of Lab2P2 is
	-- Declarations (optional)
	signal A1 : std_logic_vector(3 downto 0);
	signal A2 : std_logic_vector(3 downto 0);
	signal B1 : std_logic_vector(3 downto 0);
	signal B2 : std_logic_vector(3 downto 0);	
	signal S1 : std_logic_vector(3 downto 0);
	signal S2 : std_logic_vector(3 downto 0);
	signal S1_temp1 : std_logic_vector(4 downto 0);
	signal S1_temp2 : std_logic_vector(4 downto 0);
	signal S2_temp1 : std_logic_vector(4 downto 0);
	signal S2_temp2 : std_logic_vector(4 downto 0);
	signal B1Comp : std_logic_vector(4 downto 0);
	signal B2Comp : std_logic_vector(4 downto 0);
	
begin
	
	process(A1, A2, B1, B2, S1, S2, S1_temp1, S2_temp1, S1_temp2, S2_temp2)
	begin
		if(sub = '1') then
		-- subtract
			case B2 is
				when "0000" => B2Comp<="01001";
				when "0001" => B2Comp<="01000";
				when "0010" => B2Comp<="00111";
				when "0011" => B2Comp<="00110";
				when "0100" => B2Comp<="00101";
				when "0101" => B2Comp<="00100";
				when "0110" => B2Comp<="00011";
				when "0111" => B2Comp<="00010";
				when "1000" => B2Comp<="00001";
				when "1001" => B2Comp<="00000";
				when others => B2Comp<="00000";
			end case;
			S2_temp1 <= ('0' & A2)+B2Comp+'1';
			if(S2_temp1 > 9) then
				S2_temp2 <= S2_temp1 + "00110";
			else
				S2_temp2 <= S2_temp1;
			end if;
			case B1 is
				when "0000" => B1Comp<="01001";
				when "0001" => B1Comp<="01000";
				when "0010" => B1Comp<="00111";
				when "0011" => B1Comp<="00110";
				when "0100" => B1Comp<="00101";
				when "0101" => B1Comp<="00100";
				when "0110" => B1Comp<="00011";
				when "0111" => B1Comp<="00010";
				when "1000" => B1Comp<="00001";
				when "1001" => B1Comp<="00000";
				when others => B1Comp<="00000";
			end case;
			S1_temp1 <= ('0' & A1)+B1Comp+("0000" & NOT(S2_temp2(4)))+'1';
			if(S2_temp1 > 9) then
				S1_temp2 <= S1_temp1 + "00110";
			else
				S1_temp2 <= S1_temp1;
			end if;
			S1 <= S1_temp2(3 downto 0);
			S2 <= S2_temp2(3 downto 0);
			overflow <= NOT(S1_temp2(4));
		else
		-- add
			S2_temp1 <= ('0' & A2)+('0' & B2);
			if(S2_temp1(4) = '1' or (S2_temp1(3) = '1' and (S2_temp1(2) = '1' or S2_temp1(1) = '1'))) then
				S2_temp2 <= S2_temp1 + "00110";
				S2_temp2(4) <= '1';
			else
				S2_temp2 <= S2_temp1;
			end if;
			S1_temp1 <= ('0' & A1)+('0' & B1)+("0000" & S2_temp2(4));
			if(S1_temp1(4) = '1' or (S1_temp1(3) = '1' and (S1_temp1(2) = '1' or S1_temp1(1) = '1'))) then
				S1_temp2 <= S1_temp1 + "00110";
				S1_temp2(4) <= '1';
			else
				S1_temp2 <= S1_temp1;
			end if;
			S1 <= S1_temp2(3 downto 0);
			S2 <= S2_temp2(3 downto 0);
			overflow <= S1_temp2(4);
		end if;
	end process;
	
	process(latchA, latchB, A1, A2, B1, B2)
	begin
		if(latchA = '0') then
			A1 <= data1;
			A2 <= data2;
			case A1 is
				when "0000" => outA1<="0000001";
				when "0001" => outA1<="1001111";
				when "0010" => outA1<="0010010";
				when "0011" => outA1<="0000110";
				when "0100" => outA1<="1001100";
				when "0101" => outA1<="0100100";
				when "0110" => outA1<="0100000";
				when "0111" => outA1<="0001111";
				when "1000" => outA1<="0000000";
				when "1001" => outA1<="0000100";
				when others => outA1<="1111111";
			end case;
			case A2 is
				when "0000" => outA2<="0000001";
				when "0001" => outA2<="1001111";
				when "0010" => outA2<="0010010";
				when "0011" => outA2<="0000110";
				when "0100" => outA2<="1001100";
				when "0101" => outA2<="0100100";
				when "0110" => outA2<="0100000";
				when "0111" => outA2<="0001111";
				when "1000" => outA2<="0000000";
				when "1001" => outA2<="0000100";
				when others => outA2<="1111111";
			end case;
		end if;
		if(latchB = '0') then
			B1 <= data1;
			B2 <= data2;
			case B1 is
				when "0000" => outB1<="0000001";
				when "0001" => outB1<="1001111";
				when "0010" => outB1<="0010010";
				when "0011" => outB1<="0000110";
				when "0100" => outB1<="1001100";
				when "0101" => outB1<="0100100";
				when "0110" => outB1<="0100000";
				when "0111" => outB1<="0001111";
				when "1000" => outB1<="0000000";
				when "1001" => outB1<="0000100";
				when others => outB1<="1111111";
			end case;
			case B2 is
				when "0000" => outB2<="0000001";
				when "0001" => outB2<="1001111";
				when "0010" => outB2<="0010010";
				when "0011" => outB2<="0000110";
				when "0100" => outB2<="1001100";
				when "0101" => outB2<="0100100";
				when "0110" => outB2<="0100000";
				when "0111" => outB2<="0001111";
				when "1000" => outB2<="0000000";
				when "1001" => outB2<="0000100";
				when others => outB2<="1111111";
			end case;
		end if;
		
		case S1 is
			when "0000" => outS1<="0000001";
			when "0001" => outS1<="1001111";
			when "0010" => outS1<="0010010";
			when "0011" => outS1<="0000110";
			when "0100" => outS1<="1001100";
			when "0101" => outS1<="0100100";
			when "0110" => outS1<="0100000";
			when "0111" => outS1<="0001111";
			when "1000" => outS1<="0000000";
			when "1001" => outS1<="0000100";
			when others => outS1<="1111111";
		end case;
		case S2 is
			when "0000" => outS2<="0000001";
			when "0001" => outS2<="1001111";
			when "0010" => outS2<="0010010";
			when "0011" => outS2<="0000110";
			when "0100" => outS2<="1001100";
			when "0101" => outS2<="0100100";
			when "0110" => outS2<="0100000";
			when "0111" => outS2<="0001111";
			when "1000" => outS2<="0000000";
			when "1001" => outS2<="0000100";
			when others => outS2<="1111111";
		end case;
		
	end process;

end a;