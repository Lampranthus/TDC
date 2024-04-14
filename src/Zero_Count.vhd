library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Zero_Count is
    generic (
		N : natural := 128
    );
    port (
		RST	  	  : in STD_LOGIC;
      vector_in  : in std_logic_vector(N-1 downto 0);
		count_out  : out  std_logic_vector(N-1 downto 0)
    );
end entity Zero_Count;

architecture Behavioral of Zero_Count is
begin
    process(RST,vector_in)
    begin
		
	if RST = '0' then
		count_out <= (others => '0');
	else
	
   count_out(0) <= vector_in(0);
	count_out(1) <= vector_in(1) and (not vector_in(0));
	count_out(4) <= vector_in(4) and (not vector_in(3)) and (not vector_in(2));
	count_out(5) <= vector_in(5) and (not vector_in(4)) and (not vector_in(3));
	count_out(6) <= vector_in(6) and (not vector_in(5)) and (not vector_in(4));
	count_out(7) <= vector_in(7) and (not vector_in(6)) and (not vector_in(5));
	count_out(8) <= vector_in(8) and (not vector_in(7)) and (not vector_in(6));
	count_out(9) <= vector_in(9) and (not vector_in(8)) and (not vector_in(7));
	count_out(10) <= vector_in(10) and (not vector_in(9)) and (not vector_in(8));
	count_out(11) <= vector_in(11) and (not vector_in(10)) and (not vector_in(9));
	count_out(12) <= vector_in(12) and (not vector_in(11)) and (not vector_in(10));
	count_out(13) <= vector_in(13) and (not vector_in(12)) and (not vector_in(11));
	count_out(14) <= vector_in(14) and (not vector_in(13)) and (not vector_in(12));
	count_out(15) <= vector_in(15) and (not vector_in(14)) and (not vector_in(13));
	count_out(16) <= vector_in(16) and (not vector_in(15)) and (not vector_in(14));
	count_out(17) <= vector_in(17) and (not vector_in(16)) and (not vector_in(15));
	count_out(18) <= vector_in(18) and (not vector_in(17)) and (not vector_in(16));
	count_out(19) <= vector_in(19) and (not vector_in(18)) and (not vector_in(17));
	count_out(20) <= vector_in(20) and (not vector_in(19)) and (not vector_in(18));
	count_out(21) <= vector_in(21) and (not vector_in(20)) and (not vector_in(19));
	count_out(22) <= vector_in(22) and (not vector_in(21)) and (not vector_in(20));
	count_out(23) <= vector_in(23) and (not vector_in(22)) and (not vector_in(21));
	count_out(24) <= vector_in(24) and (not vector_in(23)) and (not vector_in(22));
	count_out(25) <= vector_in(25) and (not vector_in(24)) and (not vector_in(23));
	count_out(26) <= vector_in(26) and (not vector_in(25)) and (not vector_in(24));
	count_out(27) <= vector_in(27) and (not vector_in(26)) and (not vector_in(25));
	count_out(28) <= vector_in(28) and (not vector_in(27)) and (not vector_in(26));
	count_out(29) <= vector_in(29) and (not vector_in(28)) and (not vector_in(27));
	count_out(30) <= vector_in(30) and (not vector_in(29)) and (not vector_in(28));
	count_out(31) <= vector_in(31) and (not vector_in(30)) and (not vector_in(29));
	count_out(32) <= vector_in(32) and (not vector_in(31)) and (not vector_in(30));
	count_out(33) <= vector_in(33) and (not vector_in(32)) and (not vector_in(31));
	count_out(34) <= vector_in(34) and (not vector_in(33)) and (not vector_in(32));
	count_out(35) <= vector_in(35) and (not vector_in(34)) and (not vector_in(33));
	count_out(36) <= vector_in(36) and (not vector_in(35)) and (not vector_in(34));
	count_out(37) <= vector_in(37) and (not vector_in(36)) and (not vector_in(35));
	count_out(38) <= vector_in(38) and (not vector_in(37)) and (not vector_in(36));
	count_out(39) <= vector_in(39) and (not vector_in(38)) and (not vector_in(37));
	count_out(40) <= vector_in(40) and (not vector_in(39)) and (not vector_in(38));
	count_out(41) <= vector_in(41) and (not vector_in(40)) and (not vector_in(39));
	count_out(42) <= vector_in(42) and (not vector_in(41)) and (not vector_in(40));
	count_out(43) <= vector_in(43) and (not vector_in(42)) and (not vector_in(41));
	count_out(44) <= vector_in(44) and (not vector_in(43)) and (not vector_in(42));
	count_out(45) <= vector_in(45) and (not vector_in(44)) and (not vector_in(43));
	count_out(46) <= vector_in(46) and (not vector_in(45)) and (not vector_in(44));
	count_out(47) <= vector_in(47) and (not vector_in(46)) and (not vector_in(45));
	count_out(48) <= vector_in(48) and (not vector_in(47)) and (not vector_in(46));
	count_out(49) <= vector_in(49) and (not vector_in(48)) and (not vector_in(47));
	count_out(50) <= vector_in(50) and (not vector_in(49)) and (not vector_in(48));
	count_out(51) <= vector_in(51) and (not vector_in(50)) and (not vector_in(49));
	count_out(52) <= vector_in(52) and (not vector_in(51)) and (not vector_in(50));
	count_out(53) <= vector_in(53) and (not vector_in(52)) and (not vector_in(51));
	count_out(54) <= vector_in(54) and (not vector_in(53)) and (not vector_in(52));
	count_out(55) <= vector_in(55) and (not vector_in(54)) and (not vector_in(53));
	count_out(56) <= vector_in(56) and (not vector_in(55)) and (not vector_in(54));
	count_out(57) <= vector_in(57) and (not vector_in(56)) and (not vector_in(55));
	count_out(58) <= vector_in(58) and (not vector_in(57)) and (not vector_in(56));
	count_out(59) <= vector_in(59) and (not vector_in(58)) and (not vector_in(57));
	count_out(60) <= vector_in(60) and (not vector_in(59)) and (not vector_in(58));
	count_out(61) <= vector_in(61) and (not vector_in(60)) and (not vector_in(59));
	count_out(62) <= vector_in(62) and (not vector_in(61)) and (not vector_in(60));
	count_out(63) <= vector_in(63) and (not vector_in(62)) and (not vector_in(61));
	count_out(64) <= vector_in(64) and (not vector_in(63)) and (not vector_in(62));
	count_out(65) <= vector_in(65) and (not vector_in(64)) and (not vector_in(63));
	count_out(66) <= vector_in(66) and (not vector_in(65)) and (not vector_in(64));
	count_out(67) <= vector_in(67) and (not vector_in(66)) and (not vector_in(65));
	count_out(68) <= vector_in(68) and (not vector_in(67)) and (not vector_in(66));
	count_out(69) <= vector_in(69) and (not vector_in(68)) and (not vector_in(67));
	count_out(70) <= vector_in(70) and (not vector_in(69)) and (not vector_in(68));
	count_out(71) <= vector_in(71) and (not vector_in(70)) and (not vector_in(69));
	count_out(72) <= vector_in(72) and (not vector_in(71)) and (not vector_in(70));
	count_out(73) <= vector_in(73) and (not vector_in(72)) and (not vector_in(71));
	count_out(74) <= vector_in(74) and (not vector_in(73)) and (not vector_in(72));
	count_out(75) <= vector_in(75) and (not vector_in(74)) and (not vector_in(73));
	count_out(76) <= vector_in(76) and (not vector_in(75)) and (not vector_in(74));
	count_out(77) <= vector_in(77) and (not vector_in(76)) and (not vector_in(75));
	count_out(78) <= vector_in(78) and (not vector_in(77)) and (not vector_in(76));
	count_out(79) <= vector_in(79) and (not vector_in(78)) and (not vector_in(77));
	count_out(80) <= vector_in(80) and (not vector_in(79)) and (not vector_in(78));
	count_out(81) <= vector_in(81) and (not vector_in(80)) and (not vector_in(79));
	count_out(82) <= vector_in(82) and (not vector_in(81)) and (not vector_in(80));
	count_out(83) <= vector_in(83) and (not vector_in(82)) and (not vector_in(81));
	count_out(84) <= vector_in(84) and (not vector_in(83)) and (not vector_in(82));
	count_out(85) <= vector_in(85) and (not vector_in(84)) and (not vector_in(83));
	count_out(86) <= vector_in(86) and (not vector_in(85)) and (not vector_in(84));
	count_out(87) <= vector_in(87) and (not vector_in(86)) and (not vector_in(85));
	count_out(88) <= vector_in(88) and (not vector_in(87)) and (not vector_in(86));
	count_out(89) <= vector_in(89) and (not vector_in(88)) and (not vector_in(87));
	count_out(90) <= vector_in(90) and (not vector_in(89)) and (not vector_in(88));
	count_out(91) <= vector_in(91) and (not vector_in(90)) and (not vector_in(89));
	count_out(92) <= vector_in(92) and (not vector_in(91)) and (not vector_in(90));
	count_out(93) <= vector_in(93) and (not vector_in(92)) and (not vector_in(91));
	count_out(94) <= vector_in(94) and (not vector_in(93)) and (not vector_in(92));
	count_out(95) <= vector_in(95) and (not vector_in(94)) and (not vector_in(93));
	count_out(96) <= vector_in(96) and (not vector_in(95)) and (not vector_in(94));
	count_out(97) <= vector_in(97) and (not vector_in(96)) and (not vector_in(95));
	count_out(98) <= vector_in(98) and (not vector_in(97)) and (not vector_in(96));
	count_out(99) <= vector_in(99) and (not vector_in(98)) and (not vector_in(97));
	count_out(100) <= vector_in(100) and (not vector_in(99)) and (not vector_in(98));
	count_out(101) <= vector_in(101) and (not vector_in(100)) and (not vector_in(99));
	count_out(102) <= vector_in(102) and (not vector_in(101)) and (not vector_in(100));
	count_out(103) <= vector_in(103) and (not vector_in(102)) and (not vector_in(101));
	count_out(104) <= vector_in(104) and (not vector_in(103)) and (not vector_in(102));
	count_out(105) <= vector_in(105) and (not vector_in(104)) and (not vector_in(103));
	count_out(106) <= vector_in(106) and (not vector_in(105)) and (not vector_in(104));
	count_out(107) <= vector_in(107) and (not vector_in(106)) and (not vector_in(105));
	count_out(108) <= vector_in(108) and (not vector_in(107)) and (not vector_in(106));
	count_out(109) <= vector_in(109) and (not vector_in(108)) and (not vector_in(107));
	count_out(110) <= vector_in(110) and (not vector_in(109)) and (not vector_in(108));
	count_out(111) <= vector_in(111) and (not vector_in(110)) and (not vector_in(109));
	count_out(112) <= vector_in(112) and (not vector_in(111)) and (not vector_in(110));
	count_out(113) <= vector_in(113) and (not vector_in(112)) and (not vector_in(111));
	count_out(114) <= vector_in(114) and (not vector_in(113)) and (not vector_in(112));
	count_out(115) <= vector_in(115) and (not vector_in(114)) and (not vector_in(113));
	count_out(116) <= vector_in(116) and (not vector_in(115)) and (not vector_in(114));
	count_out(117) <= vector_in(117) and (not vector_in(116)) and (not vector_in(115));
	count_out(118) <= vector_in(118) and (not vector_in(117)) and (not vector_in(116));
	count_out(119) <= vector_in(119) and (not vector_in(118)) and (not vector_in(117));
	count_out(120) <= vector_in(120) and (not vector_in(119)) and (not vector_in(118));
	count_out(121) <= vector_in(121) and (not vector_in(120)) and (not vector_in(119));
	count_out(122) <= vector_in(122) and (not vector_in(121)) and (not vector_in(120));
	count_out(123) <= vector_in(123) and (not vector_in(122)) and (not vector_in(121));
	count_out(124) <= vector_in(124) and (not vector_in(123)) and (not vector_in(122));
	count_out(125) <= vector_in(125) and (not vector_in(124)) and (not vector_in(123));
	count_out(126) <= vector_in(126) and (not vector_in(125)) and (not vector_in(124));
	count_out(127) <= vector_in(127) and (not vector_in(126)) and (not vector_in(125));
		
	end if;
    end process;
end architecture Behavioral;