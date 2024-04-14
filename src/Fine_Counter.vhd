LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity Fine_Counter is
   generic (
    N : positive := 128   -- Change the default value as needed
   );	
	port (
	
	RST, CLK, Ones, Zeros, Hit   	: in  	std_logic;
	E      		            		: OUT STD_LOGIC_VECTOR(7 downto 0);
	Cout  : out STD_LOGIC
   
   );

end Fine_Counter;

architecture simple of Fine_Counter is

component Carry_Chain_N is
  generic (
    N : positive := 128   -- Change the default value as needed
  );
  Port (
    A    : in STD_LOGIC_VECTOR(N-1 downto 0);
    B    : in STD_LOGIC_VECTOR(N-1 downto 0);
    Cin  : in STD_LOGIC;
    S    : out STD_LOGIC_VECTOR(N-1 downto 0);
	 Cout  : out STD_LOGIC
  );
end component;

component Registro_N is
  generic (
    N : positive := 128   -- Change the default value as needed
  );
  Port (
    Hit : in STD_LOGIC;
    Reset : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR(N-1 downto 0);
    Q : out STD_LOGIC_VECTOR(N-1 downto 0)
  ); 
end component;

component Zero_Count is
    generic (
		N : natural := 128
    );
    port (
		RST	  	  : in STD_LOGIC;
      vector_in  : in std_logic_vector(N-1 downto 0);
		count_out  : out  std_logic_vector(N-1 downto 0)
    );
end component;

component LUT_encoder is
port (
    F	:	in STD_LOGIC_VECTOR(127 downto 0);
    s	: 	out STD_LOGIC_VECTOR(7 downto 0)
    );
	 
end component;

component Shift_Left is
    Generic (N : integer := 128); -- Define the number of bits as a generic
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           L : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR(N-1 downto 0));
end component;

component Synchronizer is

  Port (
  	CLK 	: in STD_LOGIC;
   SRST 	: in STD_LOGIC;
   Hit 	: in STD_LOGIC;
   St 	: out STD_LOGIC;
	Sp 	: out STD_LOGIC
  );
  
end component;

component FSM_RST is
    port(
     RST	 : in std_logic;
	  CLK  : in std_logic;
	  St	 : in std_logic;
	  Sp	 : in std_logic;
	  SRST   : out std_logic
    );
	 
end component;

   	signal Q       : STD_LOGIC_VECTOR(N-1 downto 0);
   	signal Q_reg  : STD_LOGIC_VECTOR(N-1 downto 0);
		signal Q_lut  : STD_LOGIC_VECTOR(N-1 downto 0);
	   signal A,B  : STD_LOGIC_VECTOR(N-1 downto 0);
		signal SRST, St, Sp : STD_LOGIC;

begin
	
	sc0 : Shift_Left port map(CLK, RST, Zeros, A);
	sc1 : Shift_Left port map(CLK, RST, Ones, B);
   sc2 : Carry_Chain_N port map(A, B, St, Q, Cout);
	sc3 : Registro_N port map(Sp, RST, Q, Q_reg);
	sc4 : Zero_Count port map(RST,Q_reg, Q_lut);
	sc5 : LUT_encoder port map(Q_lut, E);
	sc6 : Synchronizer port map(CLK, SRST, Hit, St, Sp);
	sc7 : FSM_RST port map(RST, CLK, St, Sp, SRST);
	
end simple;