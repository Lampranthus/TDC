library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Registro_N is
  generic (
    N : positive := 128   -- Cambia el valor predeterminado según tus necesidades
  );
  Port (
    Hit : in STD_LOGIC;
    Reset : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR(N-1 downto 0);
    Q : out STD_LOGIC_VECTOR(N-1 downto 0)
  );
end Registro_N;

architecture Behavioral of Registro_N is
  signal Registro : STD_LOGIC_VECTOR(N-1 downto 0);
begin
  process (Hit, Reset)
  begin
    if Reset = '0' then
      Registro <= (others => '0'); -- Reiniciar el registro a 0
    elsif rising_edge(Hit) then
      Registro <= D;
    end if;
  end process;

  Q <= Registro;
end Behavioral;