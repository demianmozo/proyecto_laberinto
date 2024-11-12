library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Min_Vector is
    Port ( A : in STD_LOGIC_VECTOR(2 downto 0);
           B : in STD_LOGIC_VECTOR(2 downto 0);
           C : in STD_LOGIC_VECTOR(2 downto 0);
           D : in STD_LOGIC_VECTOR(2 downto 0);
           Min_Out : out STD_LOGIC_VECTOR(2 downto 0)
         );
end Min_Vector;

architecture Behavioral of Min_Vector is
begin
    process(A, B, C, D)
    begin
        if (A < B) and (A < C) and (A < D) then
            Min_Out <= A;
        elsif (B < A) and (B < C) and (B < D) then
            Min_Out <= B;
        elsif (C < A) and (C < B) and (C < D) then
            Min_Out <= C;
        else
            Min_Out <= D;
        end if;
    end process;
end Behavioral;