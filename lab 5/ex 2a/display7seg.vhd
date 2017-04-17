LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

-- ENTITY
ENTITY display7seg IS
	
PORT( SW  : IN   STD_LOGIC_VECTOR(3 DOWNTO 0);
		HEX0  : OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX1  : OUT  STD_LOGIC_VECTOR(6 DOWNTO 0));
		
END display7seg ;

ARCHITECTURE Behavior OF display7seg IS
BEGIN

	HEX1 <=  "0111111" WHEN SW(3) = '1' ELSE
				"1111111";
	
	WITH SW SELECT
	HEX0 <=	"1000000" WHEN "0000", -- 0
				"1111001" WHEN "0001", -- 1
				"1111001" WHEN "1111", -- -1
				"0100100" WHEN "0010", -- 2
				"0100100" WHEN "1110", -- -2
				"0110000" WHEN "0011", -- 3
				"0110000" WHEN "1101", -- -3
				"0011001" WHEN "0100", -- 4
				"0011001" WHEN "1100", -- -4
				"0010010" WHEN "0101", -- 5
				"0010010" WHEN "1011", -- -5
				"0000010" WHEN "0110", -- 6
				"0000010" WHEN "1010", -- -6
				"1111000" WHEN "0111", -- 7
				"1111000" WHEN "1001", -- -7
				"0000000" WHEN "1000", -- -8
				"0000110" WHEN OTHERS; -- E
END Behavior;