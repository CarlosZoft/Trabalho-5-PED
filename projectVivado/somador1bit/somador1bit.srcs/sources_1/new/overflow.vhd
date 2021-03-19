----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.03.2021 17:25:54
-- Design Name: 
-- Module Name: overflow - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity overflow is
    Port ( a : in STD_LOGIC; --a = Cin
           b : in STD_LOGIC; --b = Cout
           s : out STD_LOGIC); --overflow ou nao
end overflow;

architecture Behavioral of overflow is



begin

    s <= a xor b;

end Behavioral;
