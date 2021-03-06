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
	SIGNAL alu_out: STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN

	alu1: 	ALU
				PORT MAP
				(SW(3 DOWNTO 0), SW(7 DOWNTO 4), SW(9 DOWNTO 8), alu_out(3 DOWNTO 0), LEDR(3), LEDR(2), LEDR(1), LEDR(0));
				-- LEDR are: Z, C, N, V

	display: display7seg PORT MAP
				(alu_out(3 DOWNTO 0), HEX0(6 DOWNTO 0), HEX1(6 DOWNTO 0));

	

END Behavior;