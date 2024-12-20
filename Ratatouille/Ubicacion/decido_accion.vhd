library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decido_accion is
    Port (
        sentido_actual : in STD_LOGIC_VECTOR(1 downto 0); -- Sentido actual (2 bits)
        sentido_futuro : in STD_LOGIC_VECTOR(1 downto 0); -- Sentido futuro (2 bits)
        habilitacion   : in STD_LOGIC;                   -- Señal de habilitación
        seleccion      : out STD_LOGIC_VECTOR(1 downto 0) -- Salida de selección
    );
end decido_accion;

architecture Behavioral of decido_accion is
begin
    process(sentido_actual, sentido_futuro, habilitacion)
    begin
        if habilitacion = '1' then
            case sentido_actual is
                 when "00" => -- Sentido actual: adelante
                    case sentido_futuro is
                        when "00" => seleccion <= "00"; -- Ya está en adelante
                        when "01" => seleccion <= "11"; -- Gira 180° (hacia atrás)
                        when "10" => seleccion <= "10"; -- Gira 90° a la derecha
                        when "11" => seleccion <= "01"; -- Gira 90° a la izquierda
                        when others => seleccion <= "00"; -- Default 
                    end case;
                when "01" => -- Sentido actual: atrás
                    case sentido_futuro is
                        when "00" => seleccion <= "11"; -- Gira 180° (hacia adelante)
                        when "01" => seleccion <= "00"; -- Ya está en atrás
                        when "10" => seleccion <= "01"; -- Gira 90° a la izquierda
                        when "11" => seleccion <= "10"; -- Gira 90° a la derecha
                        when others => seleccion <= "00";
                    end case;
                when "10" => -- Sentido actual: derecha
                    case sentido_futuro is
                        when "00" => seleccion <= "01"; -- Gira 90° a la izquierda
                        when "01" => seleccion <= "10"; -- Gira 90° a la derecha
                        when "10" => seleccion <= "00"; -- Ya está en derecha
                        when "11" => seleccion <= "11"; -- Gira 180° (hacia izquierda)
                        when others => seleccion <= "00";
                    end case;
                when "11" => -- Sentido actual: izquierda
                    case sentido_futuro is
                        when "00" => seleccion <= "10"; -- Gira 90° a la derecha
                        when "01" => seleccion <= "01"; -- Gira 90° a la izquierda
                        when "10" => seleccion <= "11"; -- Gira 180° (hacia derecha)
                        when "11" => seleccion <= "00"; -- Ya está en izquierda
                        when others => seleccion <= "00";
                    end case;
                when others =>
                    seleccion <= "00"; -- Default en caso de error
            end case;
        else
            seleccion <= "00"; -- Si habilitación es 0, siempre avanza
        end if;
    end process;
end Behavioral;
