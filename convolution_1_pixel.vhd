LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY convolution_1_pixel IS 
	PORT (
			clk														: IN STD_LOGIC;
			i1, i2, i3, i4, i5, i6, i7, i8, i9 				: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			f1, f2, f3, f4, f5, f6, f7, f8, f9, 
			f10, f11, f12, f13, f14, f15, f16, f17, f18  : IN STD_LOGIC_VECTOR (8 DOWNTO 0);
			cv_o														: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
END convolution_1_pixel;

ARCHITECTURE cv_1_bit OF convolution_1_pixel IS
SHARED VARIABLE temp			:  STD_LOGIC_VECTOR(9 DOWNTO 0);
SHARED VARIABLE temp2		:	STD_LOGIC_VECTOR(9 DOWNTO 0);

BEGIN
	convolution	: PROCESS(clk)
	BEGIN
		IF (RISING_EDGE(clk)) THEN
			temp			:=	STD_LOGIC_VECTOR(	resize(SIGNED("00" & i1) * SIGNED(f1(8) & '0' & f1 (7 downto 0)), 10) + resize(SIGNED("00" & i2) * SIGNED(f2(8) & '0' & f2 (7 downto 0)), 10) +
														resize(SIGNED("00" & i3) * SIGNED(f3(8) & '0' & f3 (7 downto 0)), 10) + resize(SIGNED("00" & i4) * SIGNED(f4(8) & '0' & f4 (7 downto 0)), 10) +
														resize(SIGNED("00" & i5) * SIGNED(f5(8) & '0' & f5 (7 downto 0)), 10) + resize(SIGNED("00" & i6) * SIGNED(f6(8) & '0' & f6 (7 downto 0)), 10) +
														resize(SIGNED("00" & i7) * SIGNED(f7(8) & '0' & f7 (7 downto 0)), 10) + resize(SIGNED("00" & i8) * SIGNED(f8(8) & '0' & f8 (7 downto 0)), 10) +
														resize(SIGNED("00" & i9) * SIGNED(f9(8) & '0' & f9 (7 downto 0)), 10));
														
			temp2			:=	STD_LOGIC_VECTOR(	resize(SIGNED("00" & i1) * SIGNED(f10(8) & '0' & f10 (7 downto 0)), 10) + resize(SIGNED("00" & i2) * SIGNED(f11(8) & '0' & f11 (7 downto 0)), 10) +
														resize(SIGNED("00" & i3) * SIGNED(f12(8) & '0' & f12 (7 downto 0)), 10) + resize(SIGNED("00" & i4) * SIGNED(f13(8) & '0' & f13 (7 downto 0)), 10) +
														resize(SIGNED("00" & i5) * SIGNED(f14(8) & '0' & f14 (7 downto 0)), 10) + resize(SIGNED("00" & i6) * SIGNED(f15(8) & '0' & f15 (7 downto 0)), 10) +
														resize(SIGNED("00" & i7) * SIGNED(f16(8) & '0' & f16 (7 downto 0)), 10) + resize(SIGNED("00" & i8) * SIGNED(f17(8) & '0' & f17 (7 downto 0)), 10) +
														resize(SIGNED("00" & i9) * SIGNED(f18(8) & '0' & f18 (7 downto 0)), 10));
			temp := STD_LOGIC_VECTOR(ABS(SIGNED(temp) + SIGNED(temp2)));											
			IF (temp(9) = '1') THEN
			   cv_o <= "00000000"; 
			ELSIF (temp(8) = '1') THEN
				cv_o <= "11111111";
			ELSE
			   cv_o <= STD_LOGIC_VECTOR(temp(7 DOWNTO 0));
			END IF;
		END IF;
	END PROCESS convolution;
END cv_1_bit;