LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY decod3x8 IS
	PORT (
		w: 	IN STD_LOGIC_VECTOR(2 DOWNTO 0) ;
		En: 	IN STD_LOGIC ;
		y: 	OUT STD_LOGIC_VECTOR(7 DOWNTO 0) ) ;
END decod3x8 ;

ARCHITECTURE Behavior OF decod3x8 IS
	BEGIN
		PROCESS ( w, En )
			BEGIN
				IF En = '1' THEN
					CASE w IS
						WHEN "000" 	=> y <= "00000001" ;
						WHEN "001" 	=> y <= "00000010" ;
						WHEN "010" 	=> y <= "00000100" ;
						WHEN "011" 	=> y <= "00001000" ;
						WHEN "100" 	=> y <= "00010000" ;
						WHEN "101" 	=> y <= "00100000" ;
						WHEN "110" 	=> y <= "01000000" ;
						WHEN OTHERS => y <= "10000000" ;
					END CASE ;
				ELSE
					y <= "00000000" ;
				END IF ;
		END PROCESS ;
END Behavior ;