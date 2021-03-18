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

    signal c0, c1, c2 : STD_LOGIC;
    signal x1, x2, x3, x4 : STD_LOGIC;

begin

    x1 <= cinS xor bS(0);
    x2 <= cinS xor bS(1);
    x3 <= cinS xor bS(2);
    x4 <= cinS xor bS(3);
    
    sum1: somador1 port map(a => aS(0), b => x1, cin => cinS, s => sS(0), cout => c0);
    sum2: somador1 port map(a => aS(1), b => x2, cin => c0, s => sS(1), cout => c1);
    sum3: somador1 port map(a => aS(2), b => x3, cin => c1, s => sS(2), cout => c2);
    sum4: somador1 port map(a => aS(3), b => x4, cin => c2, s => sS(3), cout => coutS);


end Behavioral;
