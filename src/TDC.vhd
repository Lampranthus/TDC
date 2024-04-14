LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity TDC is
	
	port(
	
	RST,CLK 		: in std_logic;	
	one, Zero 	: in std_logic;
	--start, Hit	: in std_logic;
	E,T1, T2				: OUT STD_LOGIC_VECTOR(7 downto 0);
	Cout			: out std_logic
	
	);	
	
end TDC;

architecture fsm of TDC is


component Fine_Counter is
   generic (
    N : positive := 128   -- Change the default value as needed
   );	
	port (
	
	RST, CLK, Ones, Zeros, Hit  : in std_logic;
	E      		            	 : OUT STD_LOGIC_VECTOR(7 downto 0);
	Cout  : out STD_LOGIC
   
   );	
	
end component;	

component PLL is
  Port (
    CLK0  : in STD_LOGIC;
	CLK   : out STD_LOGIC
  );
	
end component;

component restador_n is
	generic(
	n	:	integer	:= 8
	);
	
	port(
	A,B	:	in	std_logic_vector(n-1 downto 0);
	R	:	out std_logic_vector(n-1 downto 0)
	);
	
end component;

signal CLK_400: STD_LOGIC;
signal Cout1, Cout2 : STD_LOGIC;
signal E1, E2 : STD_LOGIC_VECTOR(7 downto 0);

begin 

	Cout <= Cout1 or Cout2;
	T1 <= E1;
	T2 <= E2;
	
	sc0 : PLL port map(CLK, CLK_400);
	
	sc1 : Fine_Counter port map(RST, CLK_400, One, Zero, CLK_400, E1, Cout1);
	sc2 : Fine_Counter port map(RST, CLK_400, One, Zero, CLK_400, E2, Cout2);
	
	sc3 : restador_n port map(E1, E2, E);
		
end fsm;