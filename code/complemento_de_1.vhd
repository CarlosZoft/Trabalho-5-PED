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
    
    Z(0) <= A(0) when sel='0' else
            A(0) xor '1'; 
    c0 <= A(0) and '1';
    
    Z(1) <= A(1) when sel='0' else
            A(1) xor c0;
    c1 <= A(1) and c0;
    
    Z(2) <= A(2) when sel='0' else
            A(2) xor c1;
    c2 <= A(2) and c1;
      
    Z(3) <= A(3) when sel='0' else
            A(3) xor c2;

end Behavioral;
