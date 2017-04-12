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
	SIGNAL ripple_out: STD_LOGIC_VECTOR(3 DOWNTO 0);
	
BEGIN

	ripple: 	ripple4
				GENERIC MAP( N =>4 )
				PORT MAP
				(SW(3 DOWNTO 0), SW(7 DOWNTO 4), SW(8), ripple_out(3 DOWNTO 0), LEDR(0));

	conversor: conv_7seg PORT MAP
				(ripple_out(3 DOWNTO 0), HEX0(6 DOWNTO 0));

	

END Behavior;