library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Lab3 is
	port
	(
		-- Input ports
		data1 : in STD_LOGIC_VECTOR(2 downto 0);
		data2 : in STD_LOGIC_VECTOR(3 downto 0);
		latchH : in STD_LOGIC;
		latchM : in STD_LOGIC;
		latchS : in STD_LOGIC;
		latchAMPM : in STD_LOGIC;
		CLK_50 : in STD_LOGIC;
		alarm_trigger : in STD_LOGIC; -- SW 9
		set_time : in STD_LOGIC;		-- SW 7
		set_alarm : in STD_LOGIC;		-- SW 8
		reset : in STD_LOGIC;			-- KEY4
		-- Output ports
		outH1 : out STD_LOGIC_VECTOR(6 downto 0);
		outH2 : out STD_LOGIC_VECTOR(6 downto 0);
		outM1 : out STD_LOGIC_VECTOR(6 downto 0);
		outM2 : out STD_LOGIC_VECTOR(6 downto 0);
		outS1 : out STD_LOGIC_VECTOR(6 downto 0);
		outS2 : out STD_LOGIC_VECTOR(6 downto 0);
		ALARM : out STD_LOGIC;		-- LED0
		outAMPM : out STD_LOGIC			-- LED9
	);
end Lab3;

architecture a of Lab3 is
	signal H1 : std_logic_vector(2 downto 0) := "001";
	signal H2 : std_logic_vector(3 downto 0) := "0001";
	signal M1 : std_logic_vector(2 downto 0);
	signal M2 : std_logic_vector(3 downto 0);
	signal S1 : std_logic_vector(2 downto 0);
	signal S2 : std_logic_vector(3 downto 0);
	signal AMPM : std_logic;
	signal AH1 : std_logic_vector(2 downto 0);
	signal AH2 : std_logic_vector(3 downto 0);
	signal AM1 : std_logic_vector(2 downto 0);
	signal AM2 : std_logic_vector(3 downto 0);
	signal AS1 : std_logic_vector(2 downto 0);
	signal AS2 : std_logic_vector(3 downto 0);
	signal AAMPM : std_logic;
	signal Internal_Count : std_logic_vector(28 downto 0);
	signal ClkFlag : std_logic;
	
begin
	-- divide 50MHz to 0.5Hz
	process(CLK_50)
	begin
		if(CLK_50'event and CLK_50 = '1') then
			if(Internal_Count < 25000000) then
				Internal_Count <= Internal_Count + 1;
			else
				Internal_Count<=(others => '0');
				ClkFlag<=not ClkFlag;
			end if;
		end if;
	end process;
	
	-- run clock
	process(ClkFlag, H1, H2, M1, M2, S1, S2, latchH, latchM, latchS, latchAMPM, AH1, AH2, AM1, AM2, AS1, AS2, AMPM)
	begin
		if(reset = '0') then
			H1 <= "001";
			H2 <= "0010";
			M1 <= "000";
			M2 <= "0000";
			S1 <= "000";
			S2 <= "0000";
			AMPM <= '0';
			AH1 <= "000";
			AH2 <= "0110";
			AM1 <= "000";
			AM2 <= "0000";
			AS1 <= "000";
			AS2 <= "0000";
			AAMPM <= '1';
		else
			-- only run timer if not changing the alarm/time
			if(set_time = '0' and set_alarm = '0') then
				if(ClkFlag'event and ClkFlag = '1') then
					if(S2 = 9) then
						S2 <= "0000";
						if(S1 = 5) then
							S1 <= "000";
							if(M2 = 9) then
								M2 <= "0000";
								if(M1 = 5) then
									M1 <= "000";
									if(H2 = 9) then
										H2 <= "0000";
										if(H1 = 1) then
											H1 <= "000";
										else
											H1 <= H1+'1';
										end if;
									elsif(H2 = 1 and H1 = 1) then
										AMPM <= not AMPM;
										H2 <= H2+'1';
									elsif(H2 = 2 and H1 = 1) then
										H2 <= "0001";
										H1 <= "000";
									else
										H2 <= H2+'1';
									end if;
								else
									M1 <= M1+'1';
								end if;
							else
								M2 <= M2+'1';
							end if;
						else
							S1 <= S1+'1';
						end if;
					else 
						S2 <= S2+'1';
					end if;
				end if;
			-- set time
			elsif(set_time = '1') then
				if(latchH = '0') then
					H1 <= data1;
					H2 <= data2;
				end if;
				if(latchM = '0') then
					M1 <= data1;
					M2 <= data2;
				end if;
				if(latchS = '0') then
					S1 <= data1;
					S2 <= data2;
				end if;
				if(latchAMPM = '0') then
					AMPM <= data2(0);
				end if;
			-- set alarm
			elsif(set_alarm = '1') then
				if(latchH = '0') then
					AH1 <= data1;
					AH2 <= data2;
				end if;
				if(latchM = '0') then
					AM1 <= data1;
					AM2 <= data2;
				end if;
				if(latchS = '0') then
					AS1 <= data1;
					AS2 <= data2;
				end if;
				if(latchAMPM = '0') then
					AAMPM <= data2(0);
				end if;
			end if;
		end if;
	end process;
	
	-- trigger the alarm
	process(H1,H2,M1,M2,S1,S2,AMPM,AH1,AH2,AM1,AM2,AS1,AS2,AAMPM,alarm_trigger)
	begin
		if(alarm_trigger = '1') then
			if(H1=AH1 and H2=AH2 and M1=AM1 and M2=AM2 and S1=AS1 and S2=AS2 and AMPM=AAMPM) then
				ALARM <= '1';
			end if;
		else
			ALARM <= '0';
		end if;
	end process;
	
	-- display the clock
	process(H1,H2,M1,M2,S1,S2,AMPM)
	begin
		case H1 is
			when "001" => outH1<="1001111";
			when others => outH1<="1111111";
		end case;
		case M1 is
			when "000" => outM1<="0000001";
			when "001" => outM1<="1001111";
			when "010" => outM1<="0010010";
			when "011" => outM1<="0000110";
			when "100" => outM1<="1001100";
			when "101" => outM1<="0100100";
			when others => outM1<="1111111";
		end case;
		case S1 is
			when "000" => outS1<="0000001";
			when "001" => outS1<="1001111";
			when "010" => outS1<="0010010";
			when "011" => outS1<="0000110";
			when "100" => outS1<="1001100";
			when "101" => outS1<="0100100";
			when others => outS1<="1111111";
		end case;
		case H2 is
			when "0000" => outH2<="0000001";
			when "0001" => outH2<="1001111";
			when "0010" => outH2<="0010010";
			when "0011" => outH2<="0000110";
			when "0100" => outH2<="1001100";
			when "0101" => outH2<="0100100";
			when "0110" => outH2<="0100000";
			when "0111" => outH2<="0001111";
			when "1000" => outH2<="0000000";
			when "1001" => outH2<="0000100";
			when others => outH2<="1111111";
		end case;
		case M2 is
			when "0000" => outM2<="0000001";
			when "0001" => outM2<="1001111";
			when "0010" => outM2<="0010010";
			when "0011" => outM2<="0000110";
			when "0100" => outM2<="1001100";
			when "0101" => outM2<="0100100";
			when "0110" => outM2<="0100000";
			when "0111" => outM2<="0001111";
			when "1000" => outM2<="0000000";
			when "1001" => outM2<="0000100";
			when others => outM2<="1111111";
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
		outAMPM <= AMPM;
	end process;
	
end a;