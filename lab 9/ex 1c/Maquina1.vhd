library ieee;
use ieee.std_logic_1164.all;

entity Maquina1 is
	port (Reset, Clock, w: in std_logic;
			z: out std_logic);
end Maquina1;

architecture Comportamento of Maquina1 is
	TYPE State_type IS (A, B, C, D);

	SIGNAL State : State_type;

	BEGIN
		PROCESS (Reset, Clock)
		BEGIN
			IF Reset = '1' THEN  
				State <= A;
			ELSIF (Clock'EVENT AND Clock = '1') THEN
			
				CASE State IS
			
					WHEN A =>
						IF w = '0' THEN
							State <= C;
						ELSE
							State <= B;
						END IF;
						
					WHEN B =>
					IF w = '0' THEN
							State <= D;
						ELSE
							State <= C;
						END IF;
	
					WHEN C =>
						IF w = '0' THEN
							State <= B;
						ELSE
							State <= C;
						END IF;
						
					WHEN D =>
					IF w = '0' THEN
							State <= A;
						ELSE
							State <= C;
						END IF;
			
				END CASE;
			
			END IF;
		END PROCESS;

		PROCESS ( State, w )
			BEGIN
			
				CASE State IS
					WHEN A =>
						z <= '1';
					WHEN B =>
						z <= NOT w;
					WHEN C =>
						z <= '0';
					WHEN D =>
						z <= w;
				END CASE;
		END PROCESS;
		
		
end Comportamento;