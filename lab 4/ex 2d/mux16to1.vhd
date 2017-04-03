LIBRARY ieee ; 
USE ieee.std_logic_1164.all;

-- PACKAGE
PACKAGE mux16to1_package IS

COMPONENT mux4to1 IS 
	PORT (En:	IN STD_LOGIC;
			s:		IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			w:		IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			f: 	OUT STD_LOGIC);

END COMPONENT;

END mux16to1_package;


LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
LIBRARY work ;
USE work.all ;

ENTITY mux16to1 IS 
	PORT (En:	IN STD_LOGIC;
			s:		IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			w:		IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			f: 	OUT STD_LOGIC);

END mux16to1;

ARCHITECTURE Behavior OF mux16to1 IS
	SIGNAL FirstLayer_Out : STD_LOGIC_VECTOR(3 DOWNTO 0) ; 
	
	BEGIN
	FirstLayer: FOR i IN 0 TO 3 GENERATE
	
		mux1: mux4to1 PORT MAP
				(En, s(1 DOWNTO 0), w((4*i)+3 DOWNTO (4*i)), FirstLayer_Out(i));
	END GENERATE;

		mux2: mux4to1 PORT MAP
				(En, s(3 DOWNTO 2), FirstLayer_Out(3 DOWNTO 0), f);

END Behavior ;