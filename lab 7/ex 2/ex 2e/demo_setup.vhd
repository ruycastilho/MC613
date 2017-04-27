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
	SIGNAL data_out: STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN

	Banco1: 	Banco
				PORT MAP
				(SW(9 DOWNTO 6), SW(5 DOWNTO 0), '1', KEY(1), KEY(0), KEY(2), data_out);

	display: display_7seg
				PORT MAP(data_out, HEX0(6 DOWNTO 0));
	

END Behavior;