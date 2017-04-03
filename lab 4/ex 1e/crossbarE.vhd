LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

-- PACKAGE
PACKAGE crossbarD_package IS

COMPONENT crossbarD IS
	PORT( SW  : IN   STD_LOGIC_VECTOR(4 DOWNTO 0);
			LEDR: OUT  STD_LOGIC_VECTOR(9 DOWNTO 0));
END COMPONENT ;

END crossbarD_package;



LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
LIBRARY work ;
USE work.all ;


ENTITY crossbarE IS	
	PORT( SW  : 	IN   STD_LOGIC_VECTOR(4 DOWNTO 0);
			LEDR: 	OUT  STD_LOGIC_VECTOR(9 DOWNTO 0));
		
END crossbarE ;

ARCHITECTURE Behavior OF crossbarE IS
BEGIN

	Crossbar: 	crossbarD
					GENERIC MAP( N =>5 )
					PORT MAP ('1', '0', SW(4 DOWNTO 0), LEDR(0), LEDR(1));

END Behavior;