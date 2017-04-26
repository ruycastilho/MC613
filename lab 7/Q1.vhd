LIBRARY ieee ; 
USE ieee.std_logic_1164.all;

ENTITY Q1 IS 
	PORT (
			A:		IN STD_LOGIC;
			B:		IN STD_LOGIC;
			Q1: 	OUT STD_LOGIC);

END Q1;

ARCHITECTURE Behavior OF Q1 IS
	BEGIN
	PROCESS (A, B) 
		VARIABLE temp: std_logic;
		VARIABLE jk: std_logic_vector (1 downto 0);
	BEGIN
		jk :=  NOT A & NOT B;
                  
		CASE (jk) IS
			WHEN "11" => temp := not (temp);
			WHEN "10" => temp := '1';
			WHEN "01" => temp := '0';
			WHEN OTHERS => temp := temp; 
		END CASE;

		Q1 <= temp;
	END PROCESS;
				
END Behavior ;