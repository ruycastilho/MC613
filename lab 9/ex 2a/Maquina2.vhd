library ieee;
use ieee.std_logic_1164.all;

entity Maquina2 is
	port (Reset, Clock, w: in std_logic;
			z: out std_logic);
end Maquina2;

architecture Comportamento of Maquina2 is
	TYPE State_type IS (A, B, C, D); 
	SIGNAL State : State_type;
	
	BEGIN
	PROCESS ( Reset, Clock )
		BEGIN
			IF Reset = '1' THEN  
				State <= A;
		ELSIF (Clock'EVENT AND Clock = '1') THEN

			CASE State IS
				WHEN A =>
					IF w = '0' THEN
						State <= A;
					ELSE
						State <= B;
					END IF;
					
				WHEN B =>
					IF w = '0' THEN
						State <= C;
					ELSE
						State <= B;
					END IF;
					
				WHEN C =>
					IF w = '0' THEN
						State <= C;
					ELSE
						State <= D;
					END IF;
					
				WHEN D =>
					IF w = '0' THEN
						State <= A;
					ELSE
						State <= D;
					END IF;
					
			END CASE;
	
		END IF;
	
	END PROCESS;
	
	z <= '1' WHEN State = B ELSE '0';

end Comportamento;

