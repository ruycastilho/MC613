LIBRARY ieee ; 
USE ieee.std_logic_1164.all;

ENTITY barrelShifter4 IS 
	PORT (W:		IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			S:		IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			Y: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));

END barrelShifter4;

ARCHITECTURE Behavior OF barrelShifter4 IS
	BEGIN
	
	WITH S SELECT
	Y		<=	W WHEN "00",
				W(0) & W (3) & W(2) & W(1) WHEN "01",
				W(1) & W (0) & W(3) & W(2) WHEN "10",
				W(2) & W (1) & W(0) & W(3) WHEN OTHERS;
				
END Behavior ;