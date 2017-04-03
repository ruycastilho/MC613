LIBRARY ieee ;
USE ieee.std_logic_1164.all ;


-- PACKAGE
PACKAGE crossbarD_package IS

COMPONENT crossbarD IS
	GENERIC ( N: INTEGER := 1);
	PORT (X1, X2:	IN STD_LOGIC;
			S:			IN STD_LOGIC_VECTOR(0 TO N-1);
			Y1, Y2: 	OUT STD_LOGIC);
END COMPONENT ;


END crossbarD_package;



LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
LIBRARY work ;
USE work.all ;


ENTITY crossbarF IS	
	PORT( SW  : 	IN   STD_LOGIC_VECTOR(7 DOWNTO 0);
			LEDR: 	OUT  STD_LOGIC_VECTOR(9 DOWNTO 0));
		
END crossbarF ;

ARCHITECTURE Behavior OF crossbarF IS
BEGIN

	Crossbar: 	crossbarD
					GENERIC MAP( N =>8 )
					PORT MAP ('1', '0', SW(7 DOWNTO 0), LEDR(0), LEDR(1));

END Behavior;