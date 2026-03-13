----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2026 03:20:27 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is

    component sevenseg_decoder is
      Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
             o_seg_n : out STD_LOGIC_VECTOR (6 downto 0)
        );    
     end component sevenseg_decoder;

      signal w_in : std_logic_vector(3 downto 0) := x"0";
      signal w_disp : std_logic_vector(6 downto 0) := b"0000000";

begin
    sevenseg_decoder_uut: sevenseg_decoder port map (
        i_Hex   => w_in,
        o_seg_n => w_disp
    );
    
    stimulus : process
    begin
        w_in <= x"0"; wait for 10 ns;
	       assert (w_disp = b"1000000") report "0 improperly displayed" severity failure;
	       
	    w_in <= x"1"; wait for 10 ns;
	       assert (w_disp = b"1111001") report "1 improperly displayed" severity failure;
	    
	    w_in <= x"2"; wait for 10 ns;
	       assert (w_disp = b"0100100") report "2 improperly displayed" severity failure;
	    
	    w_in <= x"3"; wait for 10 ns;
	       assert (w_disp = b"0110000") report "3 improperly displayed" severity failure;
	    
	    w_in <= x"4"; wait for 10 ns;
	       assert (w_disp = b"0011001") report "4 improperly displayed" severity failure;
	       
	    w_in <= x"5"; wait for 10 ns;
	       assert (w_disp = b"0010010") report "5 improperly displayed" severity failure;
	    
	    w_in <= x"6"; wait for 10 ns;
	       assert (w_disp = b"0000010") report "6 improperly displayed" severity failure;
	    
	    w_in <= x"7"; wait for 10 ns;
	       assert (w_disp = b"1111000") report "7 improperly displayed" severity failure;
	    
	    w_in <= x"8"; wait for 10 ns;
	       assert (w_disp = b"0000000") report "8 improperly displayed" severity failure;
	       
	    w_in <= x"9"; wait for 10 ns;
	       assert (w_disp = b"0010000") report "9 improperly displayed" severity failure;
	    
	    w_in <= x"A"; wait for 10 ns;
	       assert (w_disp = b"0001000") report "A improperly displayed" severity failure;
	    
	    w_in <= x"B"; wait for 10 ns;
	       assert (w_disp = b"0000011") report "B improperly displayed" severity failure;
	    
	    w_in <= x"C"; wait for 10 ns;
	       assert (w_disp = b"0100111") report "C improperly displayed" severity failure;
	       
	    w_in <= x"D"; wait for 10 ns;
	       assert (w_disp = b"0100001") report "D improperly displayed" severity failure;
	    
	    w_in <= x"E"; wait for 10 ns;
	       assert (w_disp = b"0000110") report "E improperly displayed" severity failure;
	    
	    w_in <= x"F"; wait for 10 ns;
	       assert (w_disp = b"0001110") report "F improperly displayed" severity failure;
    
        wait;
    end process;

end Behavioral;
