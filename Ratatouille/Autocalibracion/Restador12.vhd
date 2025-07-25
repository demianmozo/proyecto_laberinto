library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Restador12 is
    Port (
        A : in  std_logic_vector(11 downto 0);
        B : in  std_logic_vector(11 downto 0);
        R : out std_logic_vector(11 downto 0)
    );
end Restador12;

architecture Behavioral of Restador12 is
begin

    
    process(A, B)
        variable result : unsigned(11 downto 0);
    begin
        result := unsigned(A) - unsigned(B);
        R <= std_logic_vector(result);
		  end process;

end Behavioral;