LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY I2C_lcd_user_logic_tb IS
	                  
END I2C_lcd_user_logic_tb;


ARCHITECTURE user_logic_tb OF I2C_lcd_user_logic_tb IS

component I2C_lcd_user_logic IS
	GENERIC (
		CONSTANT cnt_max : integer := 208333/2); -- -- (THIS INFO IS WRONG, this cnt max isnt much of importance) 5 ms for 3 states -> 1.677 ms, since there is a clock div by 2 in design, divide this by 2. 
  PORT(
    clk       : IN     STD_LOGIC;                     --system clock
    reset_n   : IN     STD_LOGIC;
    data_i    : IN     STD_LOGIC_VECTOR(15 DOWNTO 0); -- 16 bits, to be displayed
    addr_i    : IN     STD_LOGIC_VECTOR(7 DOWNTO 0);  -- 8 bits, to be displayed
    selectPWM : IN     STD_LOGIC_VECTOR(1 DOWNTO 0);  --00 = 60hz, 01 = 120hz, 10 = 1000hz
    selectMode: IN     STD_LOGIC_VECTOR(1 DOWNTO 0);  --00 = Initialization, 01 = TestMode, 10 = PauseMode, 11 = PWMMode
    data_o    : OUT    STD_LOGIC_VECTOR(7 DOWNTO 0);  -- 8 bits, MSB is RS
    RS        : OUT    STD_LOGIC;
    EN        : OUT    STD_LOGIC
    );                   
END component;











DUT : I2C_lcd_user_logic
PORT MAP(
	 clk        =>    ,
    reset_n    =>    ,
    data_i     =>    ,
    addr_i     =>    ,
    selectPWM  =>    ,
    selectMode =>    ,
    data_o     =>    ,
    RS         =>    ,
    EN         =>    ,
);








end user_logic_tb;  