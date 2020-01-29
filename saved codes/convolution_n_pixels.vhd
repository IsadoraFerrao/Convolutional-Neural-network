LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY convolution_n_pixels IS
PORT (
        clk			: IN  STD_LOGIC;
		  cv_n_o		: OUT STD_LOGIC_VECTOR(7 downto 0);
		  reset		: IN	STD_LOGIC
	 );
END convolution_n_pixels;

ARCHITECTURE cv_n_pixels OF convolution_n_pixels IS
COMPONENT convolution_1_pixel IS 
	PORT (
			clk											: IN STD_LOGIC;
			i1, i2, i3, i4, i5, i6, i7, i8, i9 	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			f1, f2, f3, f4, f5, f6, f7, f8, f9 	: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
			cv_o											: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
END COMPONENT;

COMPONENT img IS
	PORT
	(
		--address_a	: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
		--address_b	: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
		address_a	: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		address_b	: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		clock			: IN STD_LOGIC  := '1';
		q_a			: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		q_b			: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END COMPONENT;

component filter
	PORT
	(
		address_a		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		address_b		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q_a		: OUT STD_LOGIC_VECTOR (8 DOWNTO 0);
		q_b		: OUT STD_LOGIC_VECTOR (8 DOWNTO 0)
	);
end component;

SUBTYPE word_img 		IS STD_LOGIC_VECTOR(7 DOWNTO 0);
SUBTYPE word_filter	IS STD_LOGIC_VECTOR(8 DOWNTO 0);
TYPE matrix 			IS ARRAY(0 TO 10) OF word_img;
TYPE type_filter 			IS ARRAY(0 TO 10) OF word_filter;

SIGNAL sig_clk			: STD_LOGIC;
SIGNAL input_matrix	: matrix;
SIGNAL input_filter	: type_filter;
SIGNAL sig_cv_o		: STD_LOGIC_VECTOR (7 DOWNTO 0);

--SIGNAL img_address_a 		: STD_LOGIC_VECTOR (12 DOWNTO 0) := (OTHERS => '0');
--SIGNAL img_address_b 		: STD_LOGIC_VECTOR (12 DOWNTO 0) := "0000000000001";
SIGNAL img_address_a 		: STD_LOGIC_VECTOR (4 DOWNTO 0) := (OTHERS => '0');
SIGNAL img_address_b 		: STD_LOGIC_VECTOR (4 DOWNTO 0) := "00001";
SIGNAL filter_address_a 	: STD_LOGIC_VECTOR (4 DOWNTO 0)  := (OTHERS => '0');
SIGNAL filter_address_b 	: STD_LOGIC_VECTOR (4 DOWNTO 0)  := "00001";

signal img_out_a				:	STD_LOGIC_VECTOR(7 DOWNTO 0);
signal img_out_b				:	STD_LOGIC_VECTOR(7 DOWNTO 0);
signal filter_out_a			:	STD_LOGIC_VECTOR(8 DOWNTO 0);
signal filter_out_b			:	STD_LOGIC_VECTOR(8 DOWNTO 0);
signal reg_output				:	STD_LOGIC_VECTOR(7 DOWNTO 0);
	
BEGIN
	
	cv_1 : convolution_1_pixel PORT MAP (clk => clk,
													 i1 => input_matrix(0), i2 => input_matrix(1), i3 => input_matrix(2),
													 i4 => input_matrix(3), i5 => input_matrix(4), i6 => input_matrix(5),
													 i7 => input_matrix(6), i8 => input_matrix(7), i9 => input_matrix(8),
													 
													 f1 => input_filter(0), f2 => input_filter(1), f3 => input_filter(2),
													 f4 => input_filter(3), f5 => input_filter(4), f6 => input_filter(5),
													 f7 => input_filter(6), f8 => input_filter(7), f9 => input_filter(8),
													 
													 cv_o => cv_n_o
													);
	
	
	rom_img : img PORT MAP	(clock => clk,
									 address_a => img_address_a,
									 address_b => img_address_b,
									 q_a => img_out_a,
									 q_b => img_out_b
									);
	
	rom_filter : filter PORT MAP	(clock => clk,
									 address_a => filter_address_a,
									 address_b => filter_address_b,
									 q_a => filter_out_a,
									 q_b => filter_out_b
									);

	convolution : process(clk)
	VARIABLE cont_clock				: INTEGER RANGE 1 TO 6;
	VARIABLE index_matrix			: INTEGER RANGE 0 TO 10;
	VARIABLE enable_buffer_filter	: STD_LOGIC := '1'; --true
	VARIABLE delay 					: INTEGER RANGE 1 TO 3;
	
	BEGIN	
		IF (RISING_EDGE(clk)) THEN
			IF (reset = '1') THEN
				index_matrix			:=	0;
				enable_buffer_filter	:=	'1';
				img_address_a			<= (OTHERS => '0');
				img_address_b			<=	(0 => '1', OTHERS => '0');
				filter_address_a		<= (OTHERS => '0');
				filter_address_b		<=	(0 => '1', OTHERS => '0');
				cont_clock				:=	1;
			
			ELSIF(delay < 3) THEN
				input_matrix(index_matrix) 	<= img_out_a; --port a da rom
				input_matrix(index_matrix+1) 	<= img_out_b; --por b da rom
				IF(enable_buffer_filter = '1') THEN
						input_filter(index_matrix) 	<= filter_out_a;
						input_filter(index_matrix+1) 	<= filter_out_b;
				END IF;
				delay	:=	delay + 1;
			--IF (cont_clock < 5	AND	img_address_a < 4942) THEN
			ELSIF (delay = 3 AND cont_clock < 5) THEN -- dois pixels do filtro por ciclo de clock
				input_matrix(index_matrix) 	<= img_out_a; --port a da rom
				input_matrix(index_matrix+1) 	<= img_out_b; --por b da rom
				IF(enable_buffer_filter = '1') THEN
						input_filter(index_matrix) 	<= filter_out_a;
						input_filter(index_matrix+1) 	<= filter_out_b;
						filter_address_a 					<= filter_address_a + 2;
						filter_address_b 					<= filter_address_b + 2;
				END IF;
				
				index_matrix  						:= index_matrix + 2;
				img_address_a 						<= img_address_a + 2;
				img_address_b 						<= img_address_b + 2;
				cont_clock							:= cont_clock + 1;
				delay := 1;
			ELSIF (cont_clock = 5 AND delay = 3) THEN	--AND img_address_a	<	4942) THEN
				input_matrix(8) 			<= img_out_a;
				IF (enable_buffer_filter = '1') THEN
						input_filter(8) 			<= filter_out_a;
				END IF;
				cont_clock					:= cont_clock + 1; --pronto para calcular
				enable_buffer_filter 	:= '0'; --false
				delay := 1;
			ELSE
				--terminou os calculos que foram feitos no cv_1_pixel
				--e ja mandou pra saida pq esta mapeada
				cont_clock	:=	1;
				index_matrix := 0;
			END IF;
		END IF;
	END PROCESS;
END cv_n_pixels;