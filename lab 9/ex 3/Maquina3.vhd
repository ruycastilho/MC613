library ieee;
use ieee.std_logic_1164.all;

entity Maquina3 is
	port (Reset, Clock, w: in std_logic;
			z: out std_logic);
end Maquina3;

architecture Comportamento of Maquina3 is
	TYPE State_type IS (A, B, C, D, E); 
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
						State <= B;
					ELSE
						State <= A;
					END IF;
					
				WHEN B =>
					IF w = '0' THEN
						State <= B;
					ELSE
						State <= C;
					END IF;
					
				WHEN C =>
					IF w = '0' THEN
						State <= D;
					ELSE
						State <= A;
					END IF;
					
				WHEN D =>
					IF w = '0' THEN
						State <= B;
					ELSE
						State <= E;
					END IF;

				WHEN E =>
					IF w = '0' THEN
						State <= D;
					ELSE
						State <= A;
					END IF;
			END CASE;
	
		END IF;
	
	END PROCESS;
	
	z <= '1' WHEN State = E ELSE '0';

end Comportamento;

