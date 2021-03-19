library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity somador4completo is
    Port ( cinS : in STD_LOGIC;
           aS : in STD_LOGIC_VECTOR (3 downto 0);
           bS : in STD_LOGIC_VECTOR (3 downto 0);
           sS : out STD_LOGIC_VECTOR (3 downto 0);
           coutS : out STD_LOGIC);
end somador4completo;

architecture Behavioral of somador4completo is

component somador1
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end component;

component complemento_de_1
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC;
           Z : out STD_LOGIC_VECTOR (3 downto 0));
end component;


    signal c0, c1, c2 : STD_LOGIC;
    signal x1 : STD_LOGIC_VECTOR (3 downto 0);

begin
    
    cp1: complemento_de_1 port map(A => bS, sel => cinS, Z => x1);
    
    sum1: somador1 port map(a => aS(0), b => x1(0), cin => cinS, s => sS(0), cout => c0);
    sum2: somador1 port map(a => aS(1), b => x1(1), cin => c0, s => sS(1), cout => c1);
    sum3: somador1 port map(a => aS(2), b => x1(2), cin => c1, s => sS(2), cout => c2);
    sum4: somador1 port map(a => aS(3), b => x1(3), cin => c2, s => sS(3), cout => coutS);


end Behavioral;
