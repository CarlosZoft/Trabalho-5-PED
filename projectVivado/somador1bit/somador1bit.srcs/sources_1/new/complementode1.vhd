library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity complemento_de_1 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC;
           Z : out STD_LOGIC_VECTOR (3 downto 0));
end complemento_de_1;

architecture Behavioral of complemento_de_1 is

    signal c0,c1,c2: STD_LOGIC;

begin
    
    Z(0) <= A(0) xor sel;
    
    Z(1) <= A(1) xor sel;
    
    Z(2) <= A(2) xor sel;
      
    Z(3) <= A(3) xor sel;

end Behavioral;