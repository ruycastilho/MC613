LIBRARY ieee ; 
USE ieee.std_logic_1164.all;

-- PACKAGE
PACKAGE mux4to1_package IS

COMPONENT dec2to4
	PORT (ENdec:	IN STD_LOGIC;
			Wdec:		IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			Ydec: 	OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT ;

COMPONENT caixaPontilhada IS
PORT( 	Ycaixa:	IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			Wcaixa:	IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			Fcaixa: 		OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT ;

END mux4to1_package;


LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
LIBRARY work ;
USE work.all ;

ENTITY mux4to1 IS 
	PORT (En:	IN STD_LOGIC;
			s:		IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			w:		IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			f: 	OUT STD_LOGIC);

END mux4to1;

ARCHITECTURE Behavior OF mux4to1 IS
	SIGNAL DecOut : STD_LOGIC_VECTOR(3 DOWNTO 0) ; 
	SIGNAL CaixaOut : STD_LOGIC_VECTOR(3 DOWNTO 0) ; 
	
	BEGIN
	
	dec1: dec2to4 PORT MAP
			(En, s(1 DOWNTO 0), DecOut(3 DOWNTO 0));
	
	caixa1: 	caixaPontilhada PORT MAP
				(DecOut(3 DOWNTO 0), w(3 DOWNTO 0), CaixaOut(3 DOWNTO 0));
				
	f <= CaixaOut(0) OR CaixaOut(1) OR CaixaOut(2) OR CaixaOut(3);

END Behavior ;