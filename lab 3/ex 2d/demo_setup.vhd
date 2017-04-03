LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

-- PACKAGE
PACKAGE display_gray_package IS

COMPONENT conv_7seg
PORT( SW  : IN   STD_LOGIC_VECTOR(3 DOWNTO 0);
		HEX0  : OUT  STD_LOGIC_VECTOR(6 DOWNTO 0));
END COMPONENT ;

COMPONENT crossbarE IS	
	PORT( SW  : 	IN   STD_LOGIC_VECTOR(4 DOWNTO 0);
			LEDR: 	OUT  STD_LOGIC_VECTOR(9 DOWNTO 0));
		
END COMPONENT ;

END display_gray_package;



LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
LIBRARY work ;
USE work.all ;

-- ENTITY
ENTITY demo_setup IS	
PORT( 	SW  : 		IN   STD_LOGIC_VECTOR(9 DOWNTO 0);
			KEY : 		IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			LEDR : 		OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
			LEDG : 		OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			HEX0 : 		OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX1 : 		OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX2 : 		OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX3 : 		OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			CLOCK_50 : 	IN STD_LOGIC);
			
END demo_setup ;

ARCHITECTURE Behavior OF demo_setup IS
	SIGNAL BIN : STD_LOGIC_VECTOR(3 DOWNTO 0) ;
BEGIN
	-- First, the crossbar is created.
	Crossbar: crossbarE PORT MAP
				(SW(4 DOWNTO 0), LEDR(9 DOWNTO 0);)	
	

	-- Now, the binary code is displayed.
	Display7seg: conv_7seg PORT MAP
					(BIN(3 DOWNTO 0), HEX3(6 DOWNTO 0));

END Behavior;