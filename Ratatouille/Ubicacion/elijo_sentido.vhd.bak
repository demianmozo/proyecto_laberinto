library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity elijo_sentido is
    Port (
        adelante  : in STD_LOGIC_VECTOR(2 downto 0); --esto viene de los mux o sea que ya tengo en cuenta si hay muros
        atras     : in STD_LOGIC_VECTOR(2 downto 0);
        derecha   : in STD_LOGIC_VECTOR(2 downto 0);
        izquierda : in STD_LOGIC_VECTOR(2 downto 0);
        menor_cod : out STD_LOGIC_VECTOR(1 downto 0) -- Salida codificada
    );
end elijo_sentido;

architecture Behavioral of elijo_sentido is
begin
    process(adelante, atras, derecha, izquierda)
        variable min_value : STD_LOGIC_VECTOR(2 downto 0);
        variable cod_value : STD_LOGIC_VECTOR(1 downto 0);
    begin
	 
	 -- TENDRE QUE TENER EN CUENTA EL CASO TODOS 111? NO SE VA DAR NUNCA
        -- Inicializa con el primer valor (adelante) y su código (00)
        min_value := adelante;
        cod_value := "00";

        -- Comparaciones con prioridades O SEA QUE SI HAY DOS IGUALES LA JERARQUIA PARA ELEGIR SIEMPRE ES ADELANTE, IZQUIERDA, ATRAS, DERCHA
		   if izquierda < min_value then
            min_value := izquierda;
            cod_value := "11"; -- Código para izquierda
        end if;

		  
        if atras < min_value then
            min_value := atras;
            cod_value := "01"; -- Código para atrás
        end if;

        if derecha < min_value then
            min_value := derecha;
            cod_value := "10"; -- Código para derecha
        end if;

        -- Asigna el código del menor valor a la salida
        menor_cod <= cod_value;
    end process;
end Behavioral;
