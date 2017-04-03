LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

-- ENTITY
ENTITY conv_gray IS
	
PORT( GRAY : IN   STD_LOGIC_VECTOR(3 DOWNTO 0);
		BIN : OUT  STD_LOGIC_VECTOR(3 DOWNTO 0));
		
END conv_gray;

ARCHITECTURE Behavior OF conv_gray IS
	SIGNAL TEMP_BIN : STD_LOGIC_VECTOR (3 DOWNTO 0) ;
BEGIN
	-- First, the bits are determined by the formula.
	TEMP_BIN (3) <= GRAY(3);						-- BIT 3 - MSB
	TEMP_BIN (2) <= TEMP_BIN(3) XOR GRAY(2);	-- BIT 2 
	TEMP_BIN (1) <= TEMP_BIN(2) XOR GRAY(1);	-- BIT 1
	TEMP_BIN (0) <= TEMP_BIN(1) XOR GRAY(0);	-- BIT 0 - LSB
	
	-- Now, the bits are assigned to the output.
	BIN (3) <= TEMP_BIN (3);
	BIN (2) <= TEMP_BIN (2);
	BIN (1) <= TEMP_BIN (1);
	BIN (0) <= TEMP_BIN (0);
	
END Behavior;