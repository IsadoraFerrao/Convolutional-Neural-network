-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Standard Edition"

-- DATE "07/08/2019 18:55:57"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	convolution_n_pixels IS
    PORT (
	clk : IN std_logic;
	cv_n_o : OUT std_logic_vector(7 DOWNTO 0);
	reset : IN std_logic
	);
END convolution_n_pixels;

-- Design Ports Information
-- cv_n_o[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cv_n_o[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cv_n_o[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cv_n_o[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cv_n_o[4]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cv_n_o[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cv_n_o[6]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cv_n_o[7]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF convolution_n_pixels IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_cv_n_o : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL \cv_1|Mult17~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cv_1|Mult17~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult17~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult17~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cv_1|Mult17~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \cv_1|Mult17~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \cv_1|Mult16~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cv_1|Mult16~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult16~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult16~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cv_1|Mult16~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \cv_1|Mult16~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \cv_1|Mult15~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cv_1|Mult15~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult15~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult15~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cv_1|Mult15~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \cv_1|Mult15~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \cv_1|Mult14~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cv_1|Mult14~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult14~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult14~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cv_1|Mult14~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \cv_1|Mult14~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \cv_1|Mult13~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cv_1|Mult13~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult13~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult13~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cv_1|Mult13~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \cv_1|Mult13~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \cv_1|Mult12~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cv_1|Mult12~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult12~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult12~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cv_1|Mult12~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \cv_1|Mult12~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \cv_1|Mult11~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cv_1|Mult11~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult11~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult11~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cv_1|Mult11~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \cv_1|Mult11~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \cv_1|Mult10~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cv_1|Mult10~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult10~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult10~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cv_1|Mult10~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \cv_1|Mult10~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \cv_1|Mult9~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cv_1|Mult9~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult9~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult9~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cv_1|Mult9~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \cv_1|Mult9~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \cv_1|Mult8~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cv_1|Mult8~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult8~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult8~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cv_1|Mult8~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \cv_1|Mult8~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \cv_1|Mult7~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cv_1|Mult7~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult7~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult7~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cv_1|Mult7~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \cv_1|Mult7~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \cv_1|Mult6~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cv_1|Mult6~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult6~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult6~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cv_1|Mult6~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \cv_1|Mult6~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \cv_1|Mult5~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cv_1|Mult5~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult5~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult5~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cv_1|Mult5~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \cv_1|Mult5~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \cv_1|Mult4~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cv_1|Mult4~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult4~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult4~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cv_1|Mult4~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \cv_1|Mult4~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \cv_1|Mult3~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cv_1|Mult3~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult3~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult3~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cv_1|Mult3~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \cv_1|Mult3~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \cv_1|Mult2~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cv_1|Mult2~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult2~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult2~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cv_1|Mult2~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \cv_1|Mult2~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \cv_1|Mult1~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cv_1|Mult1~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult1~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult1~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cv_1|Mult1~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \cv_1|Mult1~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \cv_1|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cv_1|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cv_1|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cv_1|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \cv_1|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \cv_1|Mult17~17\ : std_logic;
SIGNAL \cv_1|Mult17~18\ : std_logic;
SIGNAL \cv_1|Mult17~19\ : std_logic;
SIGNAL \cv_1|Mult17~20\ : std_logic;
SIGNAL \cv_1|Mult17~21\ : std_logic;
SIGNAL \cv_1|Mult17~22\ : std_logic;
SIGNAL \cv_1|Mult17~23\ : std_logic;
SIGNAL \cv_1|Mult17~24\ : std_logic;
SIGNAL \cv_1|Mult17~26\ : std_logic;
SIGNAL \cv_1|Mult17~27\ : std_logic;
SIGNAL \cv_1|Mult17~28\ : std_logic;
SIGNAL \cv_1|Mult17~29\ : std_logic;
SIGNAL \cv_1|Mult17~30\ : std_logic;
SIGNAL \cv_1|Mult17~31\ : std_logic;
SIGNAL \cv_1|Mult17~32\ : std_logic;
SIGNAL \cv_1|Mult17~33\ : std_logic;
SIGNAL \cv_1|Mult17~34\ : std_logic;
SIGNAL \cv_1|Mult17~35\ : std_logic;
SIGNAL \cv_1|Mult17~36\ : std_logic;
SIGNAL \cv_1|Mult17~37\ : std_logic;
SIGNAL \cv_1|Mult17~38\ : std_logic;
SIGNAL \cv_1|Mult17~39\ : std_logic;
SIGNAL \cv_1|Mult17~40\ : std_logic;
SIGNAL \cv_1|Mult17~41\ : std_logic;
SIGNAL \cv_1|Mult17~42\ : std_logic;
SIGNAL \cv_1|Mult17~43\ : std_logic;
SIGNAL \cv_1|Mult17~44\ : std_logic;
SIGNAL \cv_1|Mult17~45\ : std_logic;
SIGNAL \cv_1|Mult17~46\ : std_logic;
SIGNAL \cv_1|Mult17~47\ : std_logic;
SIGNAL \cv_1|Mult17~48\ : std_logic;
SIGNAL \cv_1|Mult17~49\ : std_logic;
SIGNAL \cv_1|Mult17~50\ : std_logic;
SIGNAL \cv_1|Mult17~51\ : std_logic;
SIGNAL \cv_1|Mult17~52\ : std_logic;
SIGNAL \cv_1|Mult17~53\ : std_logic;
SIGNAL \cv_1|Mult17~54\ : std_logic;
SIGNAL \cv_1|Mult17~55\ : std_logic;
SIGNAL \cv_1|Mult17~56\ : std_logic;
SIGNAL \cv_1|Mult17~57\ : std_logic;
SIGNAL \cv_1|Mult17~58\ : std_logic;
SIGNAL \cv_1|Mult17~59\ : std_logic;
SIGNAL \cv_1|Mult17~60\ : std_logic;
SIGNAL \cv_1|Mult17~61\ : std_logic;
SIGNAL \cv_1|Mult17~62\ : std_logic;
SIGNAL \cv_1|Mult17~63\ : std_logic;
SIGNAL \cv_1|Mult17~64\ : std_logic;
SIGNAL \cv_1|Mult17~65\ : std_logic;
SIGNAL \cv_1|Mult17~66\ : std_logic;
SIGNAL \cv_1|Mult17~67\ : std_logic;
SIGNAL \cv_1|Mult17~68\ : std_logic;
SIGNAL \cv_1|Mult17~69\ : std_logic;
SIGNAL \cv_1|Mult17~70\ : std_logic;
SIGNAL \cv_1|Mult17~71\ : std_logic;
SIGNAL \cv_1|Mult16~17\ : std_logic;
SIGNAL \cv_1|Mult16~18\ : std_logic;
SIGNAL \cv_1|Mult16~19\ : std_logic;
SIGNAL \cv_1|Mult16~20\ : std_logic;
SIGNAL \cv_1|Mult16~21\ : std_logic;
SIGNAL \cv_1|Mult16~22\ : std_logic;
SIGNAL \cv_1|Mult16~23\ : std_logic;
SIGNAL \cv_1|Mult16~24\ : std_logic;
SIGNAL \cv_1|Mult16~26\ : std_logic;
SIGNAL \cv_1|Mult16~27\ : std_logic;
SIGNAL \cv_1|Mult16~28\ : std_logic;
SIGNAL \cv_1|Mult16~29\ : std_logic;
SIGNAL \cv_1|Mult16~30\ : std_logic;
SIGNAL \cv_1|Mult16~31\ : std_logic;
SIGNAL \cv_1|Mult16~32\ : std_logic;
SIGNAL \cv_1|Mult16~33\ : std_logic;
SIGNAL \cv_1|Mult16~34\ : std_logic;
SIGNAL \cv_1|Mult16~35\ : std_logic;
SIGNAL \cv_1|Mult16~36\ : std_logic;
SIGNAL \cv_1|Mult16~37\ : std_logic;
SIGNAL \cv_1|Mult16~38\ : std_logic;
SIGNAL \cv_1|Mult16~39\ : std_logic;
SIGNAL \cv_1|Mult16~40\ : std_logic;
SIGNAL \cv_1|Mult16~41\ : std_logic;
SIGNAL \cv_1|Mult16~42\ : std_logic;
SIGNAL \cv_1|Mult16~43\ : std_logic;
SIGNAL \cv_1|Mult16~44\ : std_logic;
SIGNAL \cv_1|Mult16~45\ : std_logic;
SIGNAL \cv_1|Mult16~46\ : std_logic;
SIGNAL \cv_1|Mult16~47\ : std_logic;
SIGNAL \cv_1|Mult16~48\ : std_logic;
SIGNAL \cv_1|Mult16~49\ : std_logic;
SIGNAL \cv_1|Mult16~50\ : std_logic;
SIGNAL \cv_1|Mult16~51\ : std_logic;
SIGNAL \cv_1|Mult16~52\ : std_logic;
SIGNAL \cv_1|Mult16~53\ : std_logic;
SIGNAL \cv_1|Mult16~54\ : std_logic;
SIGNAL \cv_1|Mult16~55\ : std_logic;
SIGNAL \cv_1|Mult16~56\ : std_logic;
SIGNAL \cv_1|Mult16~57\ : std_logic;
SIGNAL \cv_1|Mult16~58\ : std_logic;
SIGNAL \cv_1|Mult16~59\ : std_logic;
SIGNAL \cv_1|Mult16~60\ : std_logic;
SIGNAL \cv_1|Mult16~61\ : std_logic;
SIGNAL \cv_1|Mult16~62\ : std_logic;
SIGNAL \cv_1|Mult16~63\ : std_logic;
SIGNAL \cv_1|Mult16~64\ : std_logic;
SIGNAL \cv_1|Mult16~65\ : std_logic;
SIGNAL \cv_1|Mult16~66\ : std_logic;
SIGNAL \cv_1|Mult16~67\ : std_logic;
SIGNAL \cv_1|Mult16~68\ : std_logic;
SIGNAL \cv_1|Mult16~69\ : std_logic;
SIGNAL \cv_1|Mult16~70\ : std_logic;
SIGNAL \cv_1|Mult16~71\ : std_logic;
SIGNAL \cv_1|Mult15~17\ : std_logic;
SIGNAL \cv_1|Mult15~18\ : std_logic;
SIGNAL \cv_1|Mult15~19\ : std_logic;
SIGNAL \cv_1|Mult15~20\ : std_logic;
SIGNAL \cv_1|Mult15~21\ : std_logic;
SIGNAL \cv_1|Mult15~22\ : std_logic;
SIGNAL \cv_1|Mult15~23\ : std_logic;
SIGNAL \cv_1|Mult15~24\ : std_logic;
SIGNAL \cv_1|Mult15~26\ : std_logic;
SIGNAL \cv_1|Mult15~27\ : std_logic;
SIGNAL \cv_1|Mult15~28\ : std_logic;
SIGNAL \cv_1|Mult15~29\ : std_logic;
SIGNAL \cv_1|Mult15~30\ : std_logic;
SIGNAL \cv_1|Mult15~31\ : std_logic;
SIGNAL \cv_1|Mult15~32\ : std_logic;
SIGNAL \cv_1|Mult15~33\ : std_logic;
SIGNAL \cv_1|Mult15~34\ : std_logic;
SIGNAL \cv_1|Mult15~35\ : std_logic;
SIGNAL \cv_1|Mult15~36\ : std_logic;
SIGNAL \cv_1|Mult15~37\ : std_logic;
SIGNAL \cv_1|Mult15~38\ : std_logic;
SIGNAL \cv_1|Mult15~39\ : std_logic;
SIGNAL \cv_1|Mult15~40\ : std_logic;
SIGNAL \cv_1|Mult15~41\ : std_logic;
SIGNAL \cv_1|Mult15~42\ : std_logic;
SIGNAL \cv_1|Mult15~43\ : std_logic;
SIGNAL \cv_1|Mult15~44\ : std_logic;
SIGNAL \cv_1|Mult15~45\ : std_logic;
SIGNAL \cv_1|Mult15~46\ : std_logic;
SIGNAL \cv_1|Mult15~47\ : std_logic;
SIGNAL \cv_1|Mult15~48\ : std_logic;
SIGNAL \cv_1|Mult15~49\ : std_logic;
SIGNAL \cv_1|Mult15~50\ : std_logic;
SIGNAL \cv_1|Mult15~51\ : std_logic;
SIGNAL \cv_1|Mult15~52\ : std_logic;
SIGNAL \cv_1|Mult15~53\ : std_logic;
SIGNAL \cv_1|Mult15~54\ : std_logic;
SIGNAL \cv_1|Mult15~55\ : std_logic;
SIGNAL \cv_1|Mult15~56\ : std_logic;
SIGNAL \cv_1|Mult15~57\ : std_logic;
SIGNAL \cv_1|Mult15~58\ : std_logic;
SIGNAL \cv_1|Mult15~59\ : std_logic;
SIGNAL \cv_1|Mult15~60\ : std_logic;
SIGNAL \cv_1|Mult15~61\ : std_logic;
SIGNAL \cv_1|Mult15~62\ : std_logic;
SIGNAL \cv_1|Mult15~63\ : std_logic;
SIGNAL \cv_1|Mult15~64\ : std_logic;
SIGNAL \cv_1|Mult15~65\ : std_logic;
SIGNAL \cv_1|Mult15~66\ : std_logic;
SIGNAL \cv_1|Mult15~67\ : std_logic;
SIGNAL \cv_1|Mult15~68\ : std_logic;
SIGNAL \cv_1|Mult15~69\ : std_logic;
SIGNAL \cv_1|Mult15~70\ : std_logic;
SIGNAL \cv_1|Mult15~71\ : std_logic;
SIGNAL \cv_1|Mult14~17\ : std_logic;
SIGNAL \cv_1|Mult14~18\ : std_logic;
SIGNAL \cv_1|Mult14~19\ : std_logic;
SIGNAL \cv_1|Mult14~20\ : std_logic;
SIGNAL \cv_1|Mult14~21\ : std_logic;
SIGNAL \cv_1|Mult14~22\ : std_logic;
SIGNAL \cv_1|Mult14~23\ : std_logic;
SIGNAL \cv_1|Mult14~24\ : std_logic;
SIGNAL \cv_1|Mult14~26\ : std_logic;
SIGNAL \cv_1|Mult14~27\ : std_logic;
SIGNAL \cv_1|Mult14~28\ : std_logic;
SIGNAL \cv_1|Mult14~29\ : std_logic;
SIGNAL \cv_1|Mult14~30\ : std_logic;
SIGNAL \cv_1|Mult14~31\ : std_logic;
SIGNAL \cv_1|Mult14~32\ : std_logic;
SIGNAL \cv_1|Mult14~33\ : std_logic;
SIGNAL \cv_1|Mult14~34\ : std_logic;
SIGNAL \cv_1|Mult14~35\ : std_logic;
SIGNAL \cv_1|Mult14~36\ : std_logic;
SIGNAL \cv_1|Mult14~37\ : std_logic;
SIGNAL \cv_1|Mult14~38\ : std_logic;
SIGNAL \cv_1|Mult14~39\ : std_logic;
SIGNAL \cv_1|Mult14~40\ : std_logic;
SIGNAL \cv_1|Mult14~41\ : std_logic;
SIGNAL \cv_1|Mult14~42\ : std_logic;
SIGNAL \cv_1|Mult14~43\ : std_logic;
SIGNAL \cv_1|Mult14~44\ : std_logic;
SIGNAL \cv_1|Mult14~45\ : std_logic;
SIGNAL \cv_1|Mult14~46\ : std_logic;
SIGNAL \cv_1|Mult14~47\ : std_logic;
SIGNAL \cv_1|Mult14~48\ : std_logic;
SIGNAL \cv_1|Mult14~49\ : std_logic;
SIGNAL \cv_1|Mult14~50\ : std_logic;
SIGNAL \cv_1|Mult14~51\ : std_logic;
SIGNAL \cv_1|Mult14~52\ : std_logic;
SIGNAL \cv_1|Mult14~53\ : std_logic;
SIGNAL \cv_1|Mult14~54\ : std_logic;
SIGNAL \cv_1|Mult14~55\ : std_logic;
SIGNAL \cv_1|Mult14~56\ : std_logic;
SIGNAL \cv_1|Mult14~57\ : std_logic;
SIGNAL \cv_1|Mult14~58\ : std_logic;
SIGNAL \cv_1|Mult14~59\ : std_logic;
SIGNAL \cv_1|Mult14~60\ : std_logic;
SIGNAL \cv_1|Mult14~61\ : std_logic;
SIGNAL \cv_1|Mult14~62\ : std_logic;
SIGNAL \cv_1|Mult14~63\ : std_logic;
SIGNAL \cv_1|Mult14~64\ : std_logic;
SIGNAL \cv_1|Mult14~65\ : std_logic;
SIGNAL \cv_1|Mult14~66\ : std_logic;
SIGNAL \cv_1|Mult14~67\ : std_logic;
SIGNAL \cv_1|Mult14~68\ : std_logic;
SIGNAL \cv_1|Mult14~69\ : std_logic;
SIGNAL \cv_1|Mult14~70\ : std_logic;
SIGNAL \cv_1|Mult14~71\ : std_logic;
SIGNAL \cv_1|Mult13~17\ : std_logic;
SIGNAL \cv_1|Mult13~18\ : std_logic;
SIGNAL \cv_1|Mult13~19\ : std_logic;
SIGNAL \cv_1|Mult13~20\ : std_logic;
SIGNAL \cv_1|Mult13~21\ : std_logic;
SIGNAL \cv_1|Mult13~22\ : std_logic;
SIGNAL \cv_1|Mult13~23\ : std_logic;
SIGNAL \cv_1|Mult13~24\ : std_logic;
SIGNAL \cv_1|Mult13~26\ : std_logic;
SIGNAL \cv_1|Mult13~27\ : std_logic;
SIGNAL \cv_1|Mult13~28\ : std_logic;
SIGNAL \cv_1|Mult13~29\ : std_logic;
SIGNAL \cv_1|Mult13~30\ : std_logic;
SIGNAL \cv_1|Mult13~31\ : std_logic;
SIGNAL \cv_1|Mult13~32\ : std_logic;
SIGNAL \cv_1|Mult13~33\ : std_logic;
SIGNAL \cv_1|Mult13~34\ : std_logic;
SIGNAL \cv_1|Mult13~35\ : std_logic;
SIGNAL \cv_1|Mult13~36\ : std_logic;
SIGNAL \cv_1|Mult13~37\ : std_logic;
SIGNAL \cv_1|Mult13~38\ : std_logic;
SIGNAL \cv_1|Mult13~39\ : std_logic;
SIGNAL \cv_1|Mult13~40\ : std_logic;
SIGNAL \cv_1|Mult13~41\ : std_logic;
SIGNAL \cv_1|Mult13~42\ : std_logic;
SIGNAL \cv_1|Mult13~43\ : std_logic;
SIGNAL \cv_1|Mult13~44\ : std_logic;
SIGNAL \cv_1|Mult13~45\ : std_logic;
SIGNAL \cv_1|Mult13~46\ : std_logic;
SIGNAL \cv_1|Mult13~47\ : std_logic;
SIGNAL \cv_1|Mult13~48\ : std_logic;
SIGNAL \cv_1|Mult13~49\ : std_logic;
SIGNAL \cv_1|Mult13~50\ : std_logic;
SIGNAL \cv_1|Mult13~51\ : std_logic;
SIGNAL \cv_1|Mult13~52\ : std_logic;
SIGNAL \cv_1|Mult13~53\ : std_logic;
SIGNAL \cv_1|Mult13~54\ : std_logic;
SIGNAL \cv_1|Mult13~55\ : std_logic;
SIGNAL \cv_1|Mult13~56\ : std_logic;
SIGNAL \cv_1|Mult13~57\ : std_logic;
SIGNAL \cv_1|Mult13~58\ : std_logic;
SIGNAL \cv_1|Mult13~59\ : std_logic;
SIGNAL \cv_1|Mult13~60\ : std_logic;
SIGNAL \cv_1|Mult13~61\ : std_logic;
SIGNAL \cv_1|Mult13~62\ : std_logic;
SIGNAL \cv_1|Mult13~63\ : std_logic;
SIGNAL \cv_1|Mult13~64\ : std_logic;
SIGNAL \cv_1|Mult13~65\ : std_logic;
SIGNAL \cv_1|Mult13~66\ : std_logic;
SIGNAL \cv_1|Mult13~67\ : std_logic;
SIGNAL \cv_1|Mult13~68\ : std_logic;
SIGNAL \cv_1|Mult13~69\ : std_logic;
SIGNAL \cv_1|Mult13~70\ : std_logic;
SIGNAL \cv_1|Mult13~71\ : std_logic;
SIGNAL \cv_1|Mult12~17\ : std_logic;
SIGNAL \cv_1|Mult12~18\ : std_logic;
SIGNAL \cv_1|Mult12~19\ : std_logic;
SIGNAL \cv_1|Mult12~20\ : std_logic;
SIGNAL \cv_1|Mult12~21\ : std_logic;
SIGNAL \cv_1|Mult12~22\ : std_logic;
SIGNAL \cv_1|Mult12~23\ : std_logic;
SIGNAL \cv_1|Mult12~24\ : std_logic;
SIGNAL \cv_1|Mult12~26\ : std_logic;
SIGNAL \cv_1|Mult12~27\ : std_logic;
SIGNAL \cv_1|Mult12~28\ : std_logic;
SIGNAL \cv_1|Mult12~29\ : std_logic;
SIGNAL \cv_1|Mult12~30\ : std_logic;
SIGNAL \cv_1|Mult12~31\ : std_logic;
SIGNAL \cv_1|Mult12~32\ : std_logic;
SIGNAL \cv_1|Mult12~33\ : std_logic;
SIGNAL \cv_1|Mult12~34\ : std_logic;
SIGNAL \cv_1|Mult12~35\ : std_logic;
SIGNAL \cv_1|Mult12~36\ : std_logic;
SIGNAL \cv_1|Mult12~37\ : std_logic;
SIGNAL \cv_1|Mult12~38\ : std_logic;
SIGNAL \cv_1|Mult12~39\ : std_logic;
SIGNAL \cv_1|Mult12~40\ : std_logic;
SIGNAL \cv_1|Mult12~41\ : std_logic;
SIGNAL \cv_1|Mult12~42\ : std_logic;
SIGNAL \cv_1|Mult12~43\ : std_logic;
SIGNAL \cv_1|Mult12~44\ : std_logic;
SIGNAL \cv_1|Mult12~45\ : std_logic;
SIGNAL \cv_1|Mult12~46\ : std_logic;
SIGNAL \cv_1|Mult12~47\ : std_logic;
SIGNAL \cv_1|Mult12~48\ : std_logic;
SIGNAL \cv_1|Mult12~49\ : std_logic;
SIGNAL \cv_1|Mult12~50\ : std_logic;
SIGNAL \cv_1|Mult12~51\ : std_logic;
SIGNAL \cv_1|Mult12~52\ : std_logic;
SIGNAL \cv_1|Mult12~53\ : std_logic;
SIGNAL \cv_1|Mult12~54\ : std_logic;
SIGNAL \cv_1|Mult12~55\ : std_logic;
SIGNAL \cv_1|Mult12~56\ : std_logic;
SIGNAL \cv_1|Mult12~57\ : std_logic;
SIGNAL \cv_1|Mult12~58\ : std_logic;
SIGNAL \cv_1|Mult12~59\ : std_logic;
SIGNAL \cv_1|Mult12~60\ : std_logic;
SIGNAL \cv_1|Mult12~61\ : std_logic;
SIGNAL \cv_1|Mult12~62\ : std_logic;
SIGNAL \cv_1|Mult12~63\ : std_logic;
SIGNAL \cv_1|Mult12~64\ : std_logic;
SIGNAL \cv_1|Mult12~65\ : std_logic;
SIGNAL \cv_1|Mult12~66\ : std_logic;
SIGNAL \cv_1|Mult12~67\ : std_logic;
SIGNAL \cv_1|Mult12~68\ : std_logic;
SIGNAL \cv_1|Mult12~69\ : std_logic;
SIGNAL \cv_1|Mult12~70\ : std_logic;
SIGNAL \cv_1|Mult12~71\ : std_logic;
SIGNAL \cv_1|Mult11~17\ : std_logic;
SIGNAL \cv_1|Mult11~18\ : std_logic;
SIGNAL \cv_1|Mult11~19\ : std_logic;
SIGNAL \cv_1|Mult11~20\ : std_logic;
SIGNAL \cv_1|Mult11~21\ : std_logic;
SIGNAL \cv_1|Mult11~22\ : std_logic;
SIGNAL \cv_1|Mult11~23\ : std_logic;
SIGNAL \cv_1|Mult11~24\ : std_logic;
SIGNAL \cv_1|Mult11~26\ : std_logic;
SIGNAL \cv_1|Mult11~27\ : std_logic;
SIGNAL \cv_1|Mult11~28\ : std_logic;
SIGNAL \cv_1|Mult11~29\ : std_logic;
SIGNAL \cv_1|Mult11~30\ : std_logic;
SIGNAL \cv_1|Mult11~31\ : std_logic;
SIGNAL \cv_1|Mult11~32\ : std_logic;
SIGNAL \cv_1|Mult11~33\ : std_logic;
SIGNAL \cv_1|Mult11~34\ : std_logic;
SIGNAL \cv_1|Mult11~35\ : std_logic;
SIGNAL \cv_1|Mult11~36\ : std_logic;
SIGNAL \cv_1|Mult11~37\ : std_logic;
SIGNAL \cv_1|Mult11~38\ : std_logic;
SIGNAL \cv_1|Mult11~39\ : std_logic;
SIGNAL \cv_1|Mult11~40\ : std_logic;
SIGNAL \cv_1|Mult11~41\ : std_logic;
SIGNAL \cv_1|Mult11~42\ : std_logic;
SIGNAL \cv_1|Mult11~43\ : std_logic;
SIGNAL \cv_1|Mult11~44\ : std_logic;
SIGNAL \cv_1|Mult11~45\ : std_logic;
SIGNAL \cv_1|Mult11~46\ : std_logic;
SIGNAL \cv_1|Mult11~47\ : std_logic;
SIGNAL \cv_1|Mult11~48\ : std_logic;
SIGNAL \cv_1|Mult11~49\ : std_logic;
SIGNAL \cv_1|Mult11~50\ : std_logic;
SIGNAL \cv_1|Mult11~51\ : std_logic;
SIGNAL \cv_1|Mult11~52\ : std_logic;
SIGNAL \cv_1|Mult11~53\ : std_logic;
SIGNAL \cv_1|Mult11~54\ : std_logic;
SIGNAL \cv_1|Mult11~55\ : std_logic;
SIGNAL \cv_1|Mult11~56\ : std_logic;
SIGNAL \cv_1|Mult11~57\ : std_logic;
SIGNAL \cv_1|Mult11~58\ : std_logic;
SIGNAL \cv_1|Mult11~59\ : std_logic;
SIGNAL \cv_1|Mult11~60\ : std_logic;
SIGNAL \cv_1|Mult11~61\ : std_logic;
SIGNAL \cv_1|Mult11~62\ : std_logic;
SIGNAL \cv_1|Mult11~63\ : std_logic;
SIGNAL \cv_1|Mult11~64\ : std_logic;
SIGNAL \cv_1|Mult11~65\ : std_logic;
SIGNAL \cv_1|Mult11~66\ : std_logic;
SIGNAL \cv_1|Mult11~67\ : std_logic;
SIGNAL \cv_1|Mult11~68\ : std_logic;
SIGNAL \cv_1|Mult11~69\ : std_logic;
SIGNAL \cv_1|Mult11~70\ : std_logic;
SIGNAL \cv_1|Mult11~71\ : std_logic;
SIGNAL \cv_1|Mult10~17\ : std_logic;
SIGNAL \cv_1|Mult10~18\ : std_logic;
SIGNAL \cv_1|Mult10~19\ : std_logic;
SIGNAL \cv_1|Mult10~20\ : std_logic;
SIGNAL \cv_1|Mult10~21\ : std_logic;
SIGNAL \cv_1|Mult10~22\ : std_logic;
SIGNAL \cv_1|Mult10~23\ : std_logic;
SIGNAL \cv_1|Mult10~24\ : std_logic;
SIGNAL \cv_1|Mult10~26\ : std_logic;
SIGNAL \cv_1|Mult10~27\ : std_logic;
SIGNAL \cv_1|Mult10~28\ : std_logic;
SIGNAL \cv_1|Mult10~29\ : std_logic;
SIGNAL \cv_1|Mult10~30\ : std_logic;
SIGNAL \cv_1|Mult10~31\ : std_logic;
SIGNAL \cv_1|Mult10~32\ : std_logic;
SIGNAL \cv_1|Mult10~33\ : std_logic;
SIGNAL \cv_1|Mult10~34\ : std_logic;
SIGNAL \cv_1|Mult10~35\ : std_logic;
SIGNAL \cv_1|Mult10~36\ : std_logic;
SIGNAL \cv_1|Mult10~37\ : std_logic;
SIGNAL \cv_1|Mult10~38\ : std_logic;
SIGNAL \cv_1|Mult10~39\ : std_logic;
SIGNAL \cv_1|Mult10~40\ : std_logic;
SIGNAL \cv_1|Mult10~41\ : std_logic;
SIGNAL \cv_1|Mult10~42\ : std_logic;
SIGNAL \cv_1|Mult10~43\ : std_logic;
SIGNAL \cv_1|Mult10~44\ : std_logic;
SIGNAL \cv_1|Mult10~45\ : std_logic;
SIGNAL \cv_1|Mult10~46\ : std_logic;
SIGNAL \cv_1|Mult10~47\ : std_logic;
SIGNAL \cv_1|Mult10~48\ : std_logic;
SIGNAL \cv_1|Mult10~49\ : std_logic;
SIGNAL \cv_1|Mult10~50\ : std_logic;
SIGNAL \cv_1|Mult10~51\ : std_logic;
SIGNAL \cv_1|Mult10~52\ : std_logic;
SIGNAL \cv_1|Mult10~53\ : std_logic;
SIGNAL \cv_1|Mult10~54\ : std_logic;
SIGNAL \cv_1|Mult10~55\ : std_logic;
SIGNAL \cv_1|Mult10~56\ : std_logic;
SIGNAL \cv_1|Mult10~57\ : std_logic;
SIGNAL \cv_1|Mult10~58\ : std_logic;
SIGNAL \cv_1|Mult10~59\ : std_logic;
SIGNAL \cv_1|Mult10~60\ : std_logic;
SIGNAL \cv_1|Mult10~61\ : std_logic;
SIGNAL \cv_1|Mult10~62\ : std_logic;
SIGNAL \cv_1|Mult10~63\ : std_logic;
SIGNAL \cv_1|Mult10~64\ : std_logic;
SIGNAL \cv_1|Mult10~65\ : std_logic;
SIGNAL \cv_1|Mult10~66\ : std_logic;
SIGNAL \cv_1|Mult10~67\ : std_logic;
SIGNAL \cv_1|Mult10~68\ : std_logic;
SIGNAL \cv_1|Mult10~69\ : std_logic;
SIGNAL \cv_1|Mult10~70\ : std_logic;
SIGNAL \cv_1|Mult10~71\ : std_logic;
SIGNAL \cv_1|Mult9~17\ : std_logic;
SIGNAL \cv_1|Mult9~18\ : std_logic;
SIGNAL \cv_1|Mult9~19\ : std_logic;
SIGNAL \cv_1|Mult9~20\ : std_logic;
SIGNAL \cv_1|Mult9~21\ : std_logic;
SIGNAL \cv_1|Mult9~22\ : std_logic;
SIGNAL \cv_1|Mult9~23\ : std_logic;
SIGNAL \cv_1|Mult9~24\ : std_logic;
SIGNAL \cv_1|Mult9~26\ : std_logic;
SIGNAL \cv_1|Mult9~27\ : std_logic;
SIGNAL \cv_1|Mult9~28\ : std_logic;
SIGNAL \cv_1|Mult9~29\ : std_logic;
SIGNAL \cv_1|Mult9~30\ : std_logic;
SIGNAL \cv_1|Mult9~31\ : std_logic;
SIGNAL \cv_1|Mult9~32\ : std_logic;
SIGNAL \cv_1|Mult9~33\ : std_logic;
SIGNAL \cv_1|Mult9~34\ : std_logic;
SIGNAL \cv_1|Mult9~35\ : std_logic;
SIGNAL \cv_1|Mult9~36\ : std_logic;
SIGNAL \cv_1|Mult9~37\ : std_logic;
SIGNAL \cv_1|Mult9~38\ : std_logic;
SIGNAL \cv_1|Mult9~39\ : std_logic;
SIGNAL \cv_1|Mult9~40\ : std_logic;
SIGNAL \cv_1|Mult9~41\ : std_logic;
SIGNAL \cv_1|Mult9~42\ : std_logic;
SIGNAL \cv_1|Mult9~43\ : std_logic;
SIGNAL \cv_1|Mult9~44\ : std_logic;
SIGNAL \cv_1|Mult9~45\ : std_logic;
SIGNAL \cv_1|Mult9~46\ : std_logic;
SIGNAL \cv_1|Mult9~47\ : std_logic;
SIGNAL \cv_1|Mult9~48\ : std_logic;
SIGNAL \cv_1|Mult9~49\ : std_logic;
SIGNAL \cv_1|Mult9~50\ : std_logic;
SIGNAL \cv_1|Mult9~51\ : std_logic;
SIGNAL \cv_1|Mult9~52\ : std_logic;
SIGNAL \cv_1|Mult9~53\ : std_logic;
SIGNAL \cv_1|Mult9~54\ : std_logic;
SIGNAL \cv_1|Mult9~55\ : std_logic;
SIGNAL \cv_1|Mult9~56\ : std_logic;
SIGNAL \cv_1|Mult9~57\ : std_logic;
SIGNAL \cv_1|Mult9~58\ : std_logic;
SIGNAL \cv_1|Mult9~59\ : std_logic;
SIGNAL \cv_1|Mult9~60\ : std_logic;
SIGNAL \cv_1|Mult9~61\ : std_logic;
SIGNAL \cv_1|Mult9~62\ : std_logic;
SIGNAL \cv_1|Mult9~63\ : std_logic;
SIGNAL \cv_1|Mult9~64\ : std_logic;
SIGNAL \cv_1|Mult9~65\ : std_logic;
SIGNAL \cv_1|Mult9~66\ : std_logic;
SIGNAL \cv_1|Mult9~67\ : std_logic;
SIGNAL \cv_1|Mult9~68\ : std_logic;
SIGNAL \cv_1|Mult9~69\ : std_logic;
SIGNAL \cv_1|Mult9~70\ : std_logic;
SIGNAL \cv_1|Mult9~71\ : std_logic;
SIGNAL \cv_1|Mult8~17\ : std_logic;
SIGNAL \cv_1|Mult8~18\ : std_logic;
SIGNAL \cv_1|Mult8~19\ : std_logic;
SIGNAL \cv_1|Mult8~20\ : std_logic;
SIGNAL \cv_1|Mult8~21\ : std_logic;
SIGNAL \cv_1|Mult8~22\ : std_logic;
SIGNAL \cv_1|Mult8~23\ : std_logic;
SIGNAL \cv_1|Mult8~24\ : std_logic;
SIGNAL \cv_1|Mult8~26\ : std_logic;
SIGNAL \cv_1|Mult8~27\ : std_logic;
SIGNAL \cv_1|Mult8~28\ : std_logic;
SIGNAL \cv_1|Mult8~29\ : std_logic;
SIGNAL \cv_1|Mult8~30\ : std_logic;
SIGNAL \cv_1|Mult8~31\ : std_logic;
SIGNAL \cv_1|Mult8~32\ : std_logic;
SIGNAL \cv_1|Mult8~33\ : std_logic;
SIGNAL \cv_1|Mult8~34\ : std_logic;
SIGNAL \cv_1|Mult8~35\ : std_logic;
SIGNAL \cv_1|Mult8~36\ : std_logic;
SIGNAL \cv_1|Mult8~37\ : std_logic;
SIGNAL \cv_1|Mult8~38\ : std_logic;
SIGNAL \cv_1|Mult8~39\ : std_logic;
SIGNAL \cv_1|Mult8~40\ : std_logic;
SIGNAL \cv_1|Mult8~41\ : std_logic;
SIGNAL \cv_1|Mult8~42\ : std_logic;
SIGNAL \cv_1|Mult8~43\ : std_logic;
SIGNAL \cv_1|Mult8~44\ : std_logic;
SIGNAL \cv_1|Mult8~45\ : std_logic;
SIGNAL \cv_1|Mult8~46\ : std_logic;
SIGNAL \cv_1|Mult8~47\ : std_logic;
SIGNAL \cv_1|Mult8~48\ : std_logic;
SIGNAL \cv_1|Mult8~49\ : std_logic;
SIGNAL \cv_1|Mult8~50\ : std_logic;
SIGNAL \cv_1|Mult8~51\ : std_logic;
SIGNAL \cv_1|Mult8~52\ : std_logic;
SIGNAL \cv_1|Mult8~53\ : std_logic;
SIGNAL \cv_1|Mult8~54\ : std_logic;
SIGNAL \cv_1|Mult8~55\ : std_logic;
SIGNAL \cv_1|Mult8~56\ : std_logic;
SIGNAL \cv_1|Mult8~57\ : std_logic;
SIGNAL \cv_1|Mult8~58\ : std_logic;
SIGNAL \cv_1|Mult8~59\ : std_logic;
SIGNAL \cv_1|Mult8~60\ : std_logic;
SIGNAL \cv_1|Mult8~61\ : std_logic;
SIGNAL \cv_1|Mult8~62\ : std_logic;
SIGNAL \cv_1|Mult8~63\ : std_logic;
SIGNAL \cv_1|Mult8~64\ : std_logic;
SIGNAL \cv_1|Mult8~65\ : std_logic;
SIGNAL \cv_1|Mult8~66\ : std_logic;
SIGNAL \cv_1|Mult8~67\ : std_logic;
SIGNAL \cv_1|Mult8~68\ : std_logic;
SIGNAL \cv_1|Mult8~69\ : std_logic;
SIGNAL \cv_1|Mult8~70\ : std_logic;
SIGNAL \cv_1|Mult8~71\ : std_logic;
SIGNAL \cv_1|Mult7~17\ : std_logic;
SIGNAL \cv_1|Mult7~18\ : std_logic;
SIGNAL \cv_1|Mult7~19\ : std_logic;
SIGNAL \cv_1|Mult7~20\ : std_logic;
SIGNAL \cv_1|Mult7~21\ : std_logic;
SIGNAL \cv_1|Mult7~22\ : std_logic;
SIGNAL \cv_1|Mult7~23\ : std_logic;
SIGNAL \cv_1|Mult7~24\ : std_logic;
SIGNAL \cv_1|Mult7~26\ : std_logic;
SIGNAL \cv_1|Mult7~27\ : std_logic;
SIGNAL \cv_1|Mult7~28\ : std_logic;
SIGNAL \cv_1|Mult7~29\ : std_logic;
SIGNAL \cv_1|Mult7~30\ : std_logic;
SIGNAL \cv_1|Mult7~31\ : std_logic;
SIGNAL \cv_1|Mult7~32\ : std_logic;
SIGNAL \cv_1|Mult7~33\ : std_logic;
SIGNAL \cv_1|Mult7~34\ : std_logic;
SIGNAL \cv_1|Mult7~35\ : std_logic;
SIGNAL \cv_1|Mult7~36\ : std_logic;
SIGNAL \cv_1|Mult7~37\ : std_logic;
SIGNAL \cv_1|Mult7~38\ : std_logic;
SIGNAL \cv_1|Mult7~39\ : std_logic;
SIGNAL \cv_1|Mult7~40\ : std_logic;
SIGNAL \cv_1|Mult7~41\ : std_logic;
SIGNAL \cv_1|Mult7~42\ : std_logic;
SIGNAL \cv_1|Mult7~43\ : std_logic;
SIGNAL \cv_1|Mult7~44\ : std_logic;
SIGNAL \cv_1|Mult7~45\ : std_logic;
SIGNAL \cv_1|Mult7~46\ : std_logic;
SIGNAL \cv_1|Mult7~47\ : std_logic;
SIGNAL \cv_1|Mult7~48\ : std_logic;
SIGNAL \cv_1|Mult7~49\ : std_logic;
SIGNAL \cv_1|Mult7~50\ : std_logic;
SIGNAL \cv_1|Mult7~51\ : std_logic;
SIGNAL \cv_1|Mult7~52\ : std_logic;
SIGNAL \cv_1|Mult7~53\ : std_logic;
SIGNAL \cv_1|Mult7~54\ : std_logic;
SIGNAL \cv_1|Mult7~55\ : std_logic;
SIGNAL \cv_1|Mult7~56\ : std_logic;
SIGNAL \cv_1|Mult7~57\ : std_logic;
SIGNAL \cv_1|Mult7~58\ : std_logic;
SIGNAL \cv_1|Mult7~59\ : std_logic;
SIGNAL \cv_1|Mult7~60\ : std_logic;
SIGNAL \cv_1|Mult7~61\ : std_logic;
SIGNAL \cv_1|Mult7~62\ : std_logic;
SIGNAL \cv_1|Mult7~63\ : std_logic;
SIGNAL \cv_1|Mult7~64\ : std_logic;
SIGNAL \cv_1|Mult7~65\ : std_logic;
SIGNAL \cv_1|Mult7~66\ : std_logic;
SIGNAL \cv_1|Mult7~67\ : std_logic;
SIGNAL \cv_1|Mult7~68\ : std_logic;
SIGNAL \cv_1|Mult7~69\ : std_logic;
SIGNAL \cv_1|Mult7~70\ : std_logic;
SIGNAL \cv_1|Mult7~71\ : std_logic;
SIGNAL \cv_1|Mult6~17\ : std_logic;
SIGNAL \cv_1|Mult6~18\ : std_logic;
SIGNAL \cv_1|Mult6~19\ : std_logic;
SIGNAL \cv_1|Mult6~20\ : std_logic;
SIGNAL \cv_1|Mult6~21\ : std_logic;
SIGNAL \cv_1|Mult6~22\ : std_logic;
SIGNAL \cv_1|Mult6~23\ : std_logic;
SIGNAL \cv_1|Mult6~24\ : std_logic;
SIGNAL \cv_1|Mult6~26\ : std_logic;
SIGNAL \cv_1|Mult6~27\ : std_logic;
SIGNAL \cv_1|Mult6~28\ : std_logic;
SIGNAL \cv_1|Mult6~29\ : std_logic;
SIGNAL \cv_1|Mult6~30\ : std_logic;
SIGNAL \cv_1|Mult6~31\ : std_logic;
SIGNAL \cv_1|Mult6~32\ : std_logic;
SIGNAL \cv_1|Mult6~33\ : std_logic;
SIGNAL \cv_1|Mult6~34\ : std_logic;
SIGNAL \cv_1|Mult6~35\ : std_logic;
SIGNAL \cv_1|Mult6~36\ : std_logic;
SIGNAL \cv_1|Mult6~37\ : std_logic;
SIGNAL \cv_1|Mult6~38\ : std_logic;
SIGNAL \cv_1|Mult6~39\ : std_logic;
SIGNAL \cv_1|Mult6~40\ : std_logic;
SIGNAL \cv_1|Mult6~41\ : std_logic;
SIGNAL \cv_1|Mult6~42\ : std_logic;
SIGNAL \cv_1|Mult6~43\ : std_logic;
SIGNAL \cv_1|Mult6~44\ : std_logic;
SIGNAL \cv_1|Mult6~45\ : std_logic;
SIGNAL \cv_1|Mult6~46\ : std_logic;
SIGNAL \cv_1|Mult6~47\ : std_logic;
SIGNAL \cv_1|Mult6~48\ : std_logic;
SIGNAL \cv_1|Mult6~49\ : std_logic;
SIGNAL \cv_1|Mult6~50\ : std_logic;
SIGNAL \cv_1|Mult6~51\ : std_logic;
SIGNAL \cv_1|Mult6~52\ : std_logic;
SIGNAL \cv_1|Mult6~53\ : std_logic;
SIGNAL \cv_1|Mult6~54\ : std_logic;
SIGNAL \cv_1|Mult6~55\ : std_logic;
SIGNAL \cv_1|Mult6~56\ : std_logic;
SIGNAL \cv_1|Mult6~57\ : std_logic;
SIGNAL \cv_1|Mult6~58\ : std_logic;
SIGNAL \cv_1|Mult6~59\ : std_logic;
SIGNAL \cv_1|Mult6~60\ : std_logic;
SIGNAL \cv_1|Mult6~61\ : std_logic;
SIGNAL \cv_1|Mult6~62\ : std_logic;
SIGNAL \cv_1|Mult6~63\ : std_logic;
SIGNAL \cv_1|Mult6~64\ : std_logic;
SIGNAL \cv_1|Mult6~65\ : std_logic;
SIGNAL \cv_1|Mult6~66\ : std_logic;
SIGNAL \cv_1|Mult6~67\ : std_logic;
SIGNAL \cv_1|Mult6~68\ : std_logic;
SIGNAL \cv_1|Mult6~69\ : std_logic;
SIGNAL \cv_1|Mult6~70\ : std_logic;
SIGNAL \cv_1|Mult6~71\ : std_logic;
SIGNAL \cv_1|Mult5~17\ : std_logic;
SIGNAL \cv_1|Mult5~18\ : std_logic;
SIGNAL \cv_1|Mult5~19\ : std_logic;
SIGNAL \cv_1|Mult5~20\ : std_logic;
SIGNAL \cv_1|Mult5~21\ : std_logic;
SIGNAL \cv_1|Mult5~22\ : std_logic;
SIGNAL \cv_1|Mult5~23\ : std_logic;
SIGNAL \cv_1|Mult5~24\ : std_logic;
SIGNAL \cv_1|Mult5~26\ : std_logic;
SIGNAL \cv_1|Mult5~27\ : std_logic;
SIGNAL \cv_1|Mult5~28\ : std_logic;
SIGNAL \cv_1|Mult5~29\ : std_logic;
SIGNAL \cv_1|Mult5~30\ : std_logic;
SIGNAL \cv_1|Mult5~31\ : std_logic;
SIGNAL \cv_1|Mult5~32\ : std_logic;
SIGNAL \cv_1|Mult5~33\ : std_logic;
SIGNAL \cv_1|Mult5~34\ : std_logic;
SIGNAL \cv_1|Mult5~35\ : std_logic;
SIGNAL \cv_1|Mult5~36\ : std_logic;
SIGNAL \cv_1|Mult5~37\ : std_logic;
SIGNAL \cv_1|Mult5~38\ : std_logic;
SIGNAL \cv_1|Mult5~39\ : std_logic;
SIGNAL \cv_1|Mult5~40\ : std_logic;
SIGNAL \cv_1|Mult5~41\ : std_logic;
SIGNAL \cv_1|Mult5~42\ : std_logic;
SIGNAL \cv_1|Mult5~43\ : std_logic;
SIGNAL \cv_1|Mult5~44\ : std_logic;
SIGNAL \cv_1|Mult5~45\ : std_logic;
SIGNAL \cv_1|Mult5~46\ : std_logic;
SIGNAL \cv_1|Mult5~47\ : std_logic;
SIGNAL \cv_1|Mult5~48\ : std_logic;
SIGNAL \cv_1|Mult5~49\ : std_logic;
SIGNAL \cv_1|Mult5~50\ : std_logic;
SIGNAL \cv_1|Mult5~51\ : std_logic;
SIGNAL \cv_1|Mult5~52\ : std_logic;
SIGNAL \cv_1|Mult5~53\ : std_logic;
SIGNAL \cv_1|Mult5~54\ : std_logic;
SIGNAL \cv_1|Mult5~55\ : std_logic;
SIGNAL \cv_1|Mult5~56\ : std_logic;
SIGNAL \cv_1|Mult5~57\ : std_logic;
SIGNAL \cv_1|Mult5~58\ : std_logic;
SIGNAL \cv_1|Mult5~59\ : std_logic;
SIGNAL \cv_1|Mult5~60\ : std_logic;
SIGNAL \cv_1|Mult5~61\ : std_logic;
SIGNAL \cv_1|Mult5~62\ : std_logic;
SIGNAL \cv_1|Mult5~63\ : std_logic;
SIGNAL \cv_1|Mult5~64\ : std_logic;
SIGNAL \cv_1|Mult5~65\ : std_logic;
SIGNAL \cv_1|Mult5~66\ : std_logic;
SIGNAL \cv_1|Mult5~67\ : std_logic;
SIGNAL \cv_1|Mult5~68\ : std_logic;
SIGNAL \cv_1|Mult5~69\ : std_logic;
SIGNAL \cv_1|Mult5~70\ : std_logic;
SIGNAL \cv_1|Mult5~71\ : std_logic;
SIGNAL \cv_1|Mult4~17\ : std_logic;
SIGNAL \cv_1|Mult4~18\ : std_logic;
SIGNAL \cv_1|Mult4~19\ : std_logic;
SIGNAL \cv_1|Mult4~20\ : std_logic;
SIGNAL \cv_1|Mult4~21\ : std_logic;
SIGNAL \cv_1|Mult4~22\ : std_logic;
SIGNAL \cv_1|Mult4~23\ : std_logic;
SIGNAL \cv_1|Mult4~24\ : std_logic;
SIGNAL \cv_1|Mult4~26\ : std_logic;
SIGNAL \cv_1|Mult4~27\ : std_logic;
SIGNAL \cv_1|Mult4~28\ : std_logic;
SIGNAL \cv_1|Mult4~29\ : std_logic;
SIGNAL \cv_1|Mult4~30\ : std_logic;
SIGNAL \cv_1|Mult4~31\ : std_logic;
SIGNAL \cv_1|Mult4~32\ : std_logic;
SIGNAL \cv_1|Mult4~33\ : std_logic;
SIGNAL \cv_1|Mult4~34\ : std_logic;
SIGNAL \cv_1|Mult4~35\ : std_logic;
SIGNAL \cv_1|Mult4~36\ : std_logic;
SIGNAL \cv_1|Mult4~37\ : std_logic;
SIGNAL \cv_1|Mult4~38\ : std_logic;
SIGNAL \cv_1|Mult4~39\ : std_logic;
SIGNAL \cv_1|Mult4~40\ : std_logic;
SIGNAL \cv_1|Mult4~41\ : std_logic;
SIGNAL \cv_1|Mult4~42\ : std_logic;
SIGNAL \cv_1|Mult4~43\ : std_logic;
SIGNAL \cv_1|Mult4~44\ : std_logic;
SIGNAL \cv_1|Mult4~45\ : std_logic;
SIGNAL \cv_1|Mult4~46\ : std_logic;
SIGNAL \cv_1|Mult4~47\ : std_logic;
SIGNAL \cv_1|Mult4~48\ : std_logic;
SIGNAL \cv_1|Mult4~49\ : std_logic;
SIGNAL \cv_1|Mult4~50\ : std_logic;
SIGNAL \cv_1|Mult4~51\ : std_logic;
SIGNAL \cv_1|Mult4~52\ : std_logic;
SIGNAL \cv_1|Mult4~53\ : std_logic;
SIGNAL \cv_1|Mult4~54\ : std_logic;
SIGNAL \cv_1|Mult4~55\ : std_logic;
SIGNAL \cv_1|Mult4~56\ : std_logic;
SIGNAL \cv_1|Mult4~57\ : std_logic;
SIGNAL \cv_1|Mult4~58\ : std_logic;
SIGNAL \cv_1|Mult4~59\ : std_logic;
SIGNAL \cv_1|Mult4~60\ : std_logic;
SIGNAL \cv_1|Mult4~61\ : std_logic;
SIGNAL \cv_1|Mult4~62\ : std_logic;
SIGNAL \cv_1|Mult4~63\ : std_logic;
SIGNAL \cv_1|Mult4~64\ : std_logic;
SIGNAL \cv_1|Mult4~65\ : std_logic;
SIGNAL \cv_1|Mult4~66\ : std_logic;
SIGNAL \cv_1|Mult4~67\ : std_logic;
SIGNAL \cv_1|Mult4~68\ : std_logic;
SIGNAL \cv_1|Mult4~69\ : std_logic;
SIGNAL \cv_1|Mult4~70\ : std_logic;
SIGNAL \cv_1|Mult4~71\ : std_logic;
SIGNAL \cv_1|Mult3~17\ : std_logic;
SIGNAL \cv_1|Mult3~18\ : std_logic;
SIGNAL \cv_1|Mult3~19\ : std_logic;
SIGNAL \cv_1|Mult3~20\ : std_logic;
SIGNAL \cv_1|Mult3~21\ : std_logic;
SIGNAL \cv_1|Mult3~22\ : std_logic;
SIGNAL \cv_1|Mult3~23\ : std_logic;
SIGNAL \cv_1|Mult3~24\ : std_logic;
SIGNAL \cv_1|Mult3~26\ : std_logic;
SIGNAL \cv_1|Mult3~27\ : std_logic;
SIGNAL \cv_1|Mult3~28\ : std_logic;
SIGNAL \cv_1|Mult3~29\ : std_logic;
SIGNAL \cv_1|Mult3~30\ : std_logic;
SIGNAL \cv_1|Mult3~31\ : std_logic;
SIGNAL \cv_1|Mult3~32\ : std_logic;
SIGNAL \cv_1|Mult3~33\ : std_logic;
SIGNAL \cv_1|Mult3~34\ : std_logic;
SIGNAL \cv_1|Mult3~35\ : std_logic;
SIGNAL \cv_1|Mult3~36\ : std_logic;
SIGNAL \cv_1|Mult3~37\ : std_logic;
SIGNAL \cv_1|Mult3~38\ : std_logic;
SIGNAL \cv_1|Mult3~39\ : std_logic;
SIGNAL \cv_1|Mult3~40\ : std_logic;
SIGNAL \cv_1|Mult3~41\ : std_logic;
SIGNAL \cv_1|Mult3~42\ : std_logic;
SIGNAL \cv_1|Mult3~43\ : std_logic;
SIGNAL \cv_1|Mult3~44\ : std_logic;
SIGNAL \cv_1|Mult3~45\ : std_logic;
SIGNAL \cv_1|Mult3~46\ : std_logic;
SIGNAL \cv_1|Mult3~47\ : std_logic;
SIGNAL \cv_1|Mult3~48\ : std_logic;
SIGNAL \cv_1|Mult3~49\ : std_logic;
SIGNAL \cv_1|Mult3~50\ : std_logic;
SIGNAL \cv_1|Mult3~51\ : std_logic;
SIGNAL \cv_1|Mult3~52\ : std_logic;
SIGNAL \cv_1|Mult3~53\ : std_logic;
SIGNAL \cv_1|Mult3~54\ : std_logic;
SIGNAL \cv_1|Mult3~55\ : std_logic;
SIGNAL \cv_1|Mult3~56\ : std_logic;
SIGNAL \cv_1|Mult3~57\ : std_logic;
SIGNAL \cv_1|Mult3~58\ : std_logic;
SIGNAL \cv_1|Mult3~59\ : std_logic;
SIGNAL \cv_1|Mult3~60\ : std_logic;
SIGNAL \cv_1|Mult3~61\ : std_logic;
SIGNAL \cv_1|Mult3~62\ : std_logic;
SIGNAL \cv_1|Mult3~63\ : std_logic;
SIGNAL \cv_1|Mult3~64\ : std_logic;
SIGNAL \cv_1|Mult3~65\ : std_logic;
SIGNAL \cv_1|Mult3~66\ : std_logic;
SIGNAL \cv_1|Mult3~67\ : std_logic;
SIGNAL \cv_1|Mult3~68\ : std_logic;
SIGNAL \cv_1|Mult3~69\ : std_logic;
SIGNAL \cv_1|Mult3~70\ : std_logic;
SIGNAL \cv_1|Mult3~71\ : std_logic;
SIGNAL \cv_1|Mult2~17\ : std_logic;
SIGNAL \cv_1|Mult2~18\ : std_logic;
SIGNAL \cv_1|Mult2~19\ : std_logic;
SIGNAL \cv_1|Mult2~20\ : std_logic;
SIGNAL \cv_1|Mult2~21\ : std_logic;
SIGNAL \cv_1|Mult2~22\ : std_logic;
SIGNAL \cv_1|Mult2~23\ : std_logic;
SIGNAL \cv_1|Mult2~24\ : std_logic;
SIGNAL \cv_1|Mult2~26\ : std_logic;
SIGNAL \cv_1|Mult2~27\ : std_logic;
SIGNAL \cv_1|Mult2~28\ : std_logic;
SIGNAL \cv_1|Mult2~29\ : std_logic;
SIGNAL \cv_1|Mult2~30\ : std_logic;
SIGNAL \cv_1|Mult2~31\ : std_logic;
SIGNAL \cv_1|Mult2~32\ : std_logic;
SIGNAL \cv_1|Mult2~33\ : std_logic;
SIGNAL \cv_1|Mult2~34\ : std_logic;
SIGNAL \cv_1|Mult2~35\ : std_logic;
SIGNAL \cv_1|Mult2~36\ : std_logic;
SIGNAL \cv_1|Mult2~37\ : std_logic;
SIGNAL \cv_1|Mult2~38\ : std_logic;
SIGNAL \cv_1|Mult2~39\ : std_logic;
SIGNAL \cv_1|Mult2~40\ : std_logic;
SIGNAL \cv_1|Mult2~41\ : std_logic;
SIGNAL \cv_1|Mult2~42\ : std_logic;
SIGNAL \cv_1|Mult2~43\ : std_logic;
SIGNAL \cv_1|Mult2~44\ : std_logic;
SIGNAL \cv_1|Mult2~45\ : std_logic;
SIGNAL \cv_1|Mult2~46\ : std_logic;
SIGNAL \cv_1|Mult2~47\ : std_logic;
SIGNAL \cv_1|Mult2~48\ : std_logic;
SIGNAL \cv_1|Mult2~49\ : std_logic;
SIGNAL \cv_1|Mult2~50\ : std_logic;
SIGNAL \cv_1|Mult2~51\ : std_logic;
SIGNAL \cv_1|Mult2~52\ : std_logic;
SIGNAL \cv_1|Mult2~53\ : std_logic;
SIGNAL \cv_1|Mult2~54\ : std_logic;
SIGNAL \cv_1|Mult2~55\ : std_logic;
SIGNAL \cv_1|Mult2~56\ : std_logic;
SIGNAL \cv_1|Mult2~57\ : std_logic;
SIGNAL \cv_1|Mult2~58\ : std_logic;
SIGNAL \cv_1|Mult2~59\ : std_logic;
SIGNAL \cv_1|Mult2~60\ : std_logic;
SIGNAL \cv_1|Mult2~61\ : std_logic;
SIGNAL \cv_1|Mult2~62\ : std_logic;
SIGNAL \cv_1|Mult2~63\ : std_logic;
SIGNAL \cv_1|Mult2~64\ : std_logic;
SIGNAL \cv_1|Mult2~65\ : std_logic;
SIGNAL \cv_1|Mult2~66\ : std_logic;
SIGNAL \cv_1|Mult2~67\ : std_logic;
SIGNAL \cv_1|Mult2~68\ : std_logic;
SIGNAL \cv_1|Mult2~69\ : std_logic;
SIGNAL \cv_1|Mult2~70\ : std_logic;
SIGNAL \cv_1|Mult2~71\ : std_logic;
SIGNAL \cv_1|Mult1~17\ : std_logic;
SIGNAL \cv_1|Mult1~18\ : std_logic;
SIGNAL \cv_1|Mult1~19\ : std_logic;
SIGNAL \cv_1|Mult1~20\ : std_logic;
SIGNAL \cv_1|Mult1~21\ : std_logic;
SIGNAL \cv_1|Mult1~22\ : std_logic;
SIGNAL \cv_1|Mult1~23\ : std_logic;
SIGNAL \cv_1|Mult1~24\ : std_logic;
SIGNAL \cv_1|Mult1~26\ : std_logic;
SIGNAL \cv_1|Mult1~27\ : std_logic;
SIGNAL \cv_1|Mult1~28\ : std_logic;
SIGNAL \cv_1|Mult1~29\ : std_logic;
SIGNAL \cv_1|Mult1~30\ : std_logic;
SIGNAL \cv_1|Mult1~31\ : std_logic;
SIGNAL \cv_1|Mult1~32\ : std_logic;
SIGNAL \cv_1|Mult1~33\ : std_logic;
SIGNAL \cv_1|Mult1~34\ : std_logic;
SIGNAL \cv_1|Mult1~35\ : std_logic;
SIGNAL \cv_1|Mult1~36\ : std_logic;
SIGNAL \cv_1|Mult1~37\ : std_logic;
SIGNAL \cv_1|Mult1~38\ : std_logic;
SIGNAL \cv_1|Mult1~39\ : std_logic;
SIGNAL \cv_1|Mult1~40\ : std_logic;
SIGNAL \cv_1|Mult1~41\ : std_logic;
SIGNAL \cv_1|Mult1~42\ : std_logic;
SIGNAL \cv_1|Mult1~43\ : std_logic;
SIGNAL \cv_1|Mult1~44\ : std_logic;
SIGNAL \cv_1|Mult1~45\ : std_logic;
SIGNAL \cv_1|Mult1~46\ : std_logic;
SIGNAL \cv_1|Mult1~47\ : std_logic;
SIGNAL \cv_1|Mult1~48\ : std_logic;
SIGNAL \cv_1|Mult1~49\ : std_logic;
SIGNAL \cv_1|Mult1~50\ : std_logic;
SIGNAL \cv_1|Mult1~51\ : std_logic;
SIGNAL \cv_1|Mult1~52\ : std_logic;
SIGNAL \cv_1|Mult1~53\ : std_logic;
SIGNAL \cv_1|Mult1~54\ : std_logic;
SIGNAL \cv_1|Mult1~55\ : std_logic;
SIGNAL \cv_1|Mult1~56\ : std_logic;
SIGNAL \cv_1|Mult1~57\ : std_logic;
SIGNAL \cv_1|Mult1~58\ : std_logic;
SIGNAL \cv_1|Mult1~59\ : std_logic;
SIGNAL \cv_1|Mult1~60\ : std_logic;
SIGNAL \cv_1|Mult1~61\ : std_logic;
SIGNAL \cv_1|Mult1~62\ : std_logic;
SIGNAL \cv_1|Mult1~63\ : std_logic;
SIGNAL \cv_1|Mult1~64\ : std_logic;
SIGNAL \cv_1|Mult1~65\ : std_logic;
SIGNAL \cv_1|Mult1~66\ : std_logic;
SIGNAL \cv_1|Mult1~67\ : std_logic;
SIGNAL \cv_1|Mult1~68\ : std_logic;
SIGNAL \cv_1|Mult1~69\ : std_logic;
SIGNAL \cv_1|Mult1~70\ : std_logic;
SIGNAL \cv_1|Mult1~71\ : std_logic;
SIGNAL \cv_1|Mult0~17\ : std_logic;
SIGNAL \cv_1|Mult0~18\ : std_logic;
SIGNAL \cv_1|Mult0~19\ : std_logic;
SIGNAL \cv_1|Mult0~20\ : std_logic;
SIGNAL \cv_1|Mult0~21\ : std_logic;
SIGNAL \cv_1|Mult0~22\ : std_logic;
SIGNAL \cv_1|Mult0~23\ : std_logic;
SIGNAL \cv_1|Mult0~24\ : std_logic;
SIGNAL \cv_1|Mult0~26\ : std_logic;
SIGNAL \cv_1|Mult0~27\ : std_logic;
SIGNAL \cv_1|Mult0~28\ : std_logic;
SIGNAL \cv_1|Mult0~29\ : std_logic;
SIGNAL \cv_1|Mult0~30\ : std_logic;
SIGNAL \cv_1|Mult0~31\ : std_logic;
SIGNAL \cv_1|Mult0~32\ : std_logic;
SIGNAL \cv_1|Mult0~33\ : std_logic;
SIGNAL \cv_1|Mult0~34\ : std_logic;
SIGNAL \cv_1|Mult0~35\ : std_logic;
SIGNAL \cv_1|Mult0~36\ : std_logic;
SIGNAL \cv_1|Mult0~37\ : std_logic;
SIGNAL \cv_1|Mult0~38\ : std_logic;
SIGNAL \cv_1|Mult0~39\ : std_logic;
SIGNAL \cv_1|Mult0~40\ : std_logic;
SIGNAL \cv_1|Mult0~41\ : std_logic;
SIGNAL \cv_1|Mult0~42\ : std_logic;
SIGNAL \cv_1|Mult0~43\ : std_logic;
SIGNAL \cv_1|Mult0~44\ : std_logic;
SIGNAL \cv_1|Mult0~45\ : std_logic;
SIGNAL \cv_1|Mult0~46\ : std_logic;
SIGNAL \cv_1|Mult0~47\ : std_logic;
SIGNAL \cv_1|Mult0~48\ : std_logic;
SIGNAL \cv_1|Mult0~49\ : std_logic;
SIGNAL \cv_1|Mult0~50\ : std_logic;
SIGNAL \cv_1|Mult0~51\ : std_logic;
SIGNAL \cv_1|Mult0~52\ : std_logic;
SIGNAL \cv_1|Mult0~53\ : std_logic;
SIGNAL \cv_1|Mult0~54\ : std_logic;
SIGNAL \cv_1|Mult0~55\ : std_logic;
SIGNAL \cv_1|Mult0~56\ : std_logic;
SIGNAL \cv_1|Mult0~57\ : std_logic;
SIGNAL \cv_1|Mult0~58\ : std_logic;
SIGNAL \cv_1|Mult0~59\ : std_logic;
SIGNAL \cv_1|Mult0~60\ : std_logic;
SIGNAL \cv_1|Mult0~61\ : std_logic;
SIGNAL \cv_1|Mult0~62\ : std_logic;
SIGNAL \cv_1|Mult0~63\ : std_logic;
SIGNAL \cv_1|Mult0~64\ : std_logic;
SIGNAL \cv_1|Mult0~65\ : std_logic;
SIGNAL \cv_1|Mult0~66\ : std_logic;
SIGNAL \cv_1|Mult0~67\ : std_logic;
SIGNAL \cv_1|Mult0~68\ : std_logic;
SIGNAL \cv_1|Mult0~69\ : std_logic;
SIGNAL \cv_1|Mult0~70\ : std_logic;
SIGNAL \cv_1|Mult0~71\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \convolution:delay[0]~0_combout\ : std_logic;
SIGNAL \convolution:delay[0]~q\ : std_logic;
SIGNAL \convolution:delay[1]~0_combout\ : std_logic;
SIGNAL \convolution:delay[1]~q\ : std_logic;
SIGNAL \cont_clock~1_combout\ : std_logic;
SIGNAL \convolution:cont_clock[0]~q\ : std_logic;
SIGNAL \cont_clock~2_combout\ : std_logic;
SIGNAL \convolution:cont_clock[1]~0_combout\ : std_logic;
SIGNAL \convolution:cont_clock[1]~q\ : std_logic;
SIGNAL \cont_clock~0_combout\ : std_logic;
SIGNAL \convolution:cont_clock[2]~q\ : std_logic;
SIGNAL \input_matrix~0_combout\ : std_logic;
SIGNAL \convolution:index_matrix[1]~0_combout\ : std_logic;
SIGNAL \index_matrix~1_combout\ : std_logic;
SIGNAL \convolution:index_matrix[1]~1_combout\ : std_logic;
SIGNAL \convolution:index_matrix[1]~q\ : std_logic;
SIGNAL \index_matrix~2_combout\ : std_logic;
SIGNAL \convolution:index_matrix[2]~q\ : std_logic;
SIGNAL \index_matrix~0_combout\ : std_logic;
SIGNAL \convolution:index_matrix[3]~q\ : std_logic;
SIGNAL \Decoder1~1_combout\ : std_logic;
SIGNAL \input_matrix[5][0]~5_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \img_address_a[1]~_wirecell_combout\ : std_logic;
SIGNAL \filter_address_a[3]~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add7~1_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \input_matrix[8][0]~1_combout\ : std_logic;
SIGNAL \enable_buffer_filter~0_combout\ : std_logic;
SIGNAL \convolution:enable_buffer_filter~q\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~3_combout\ : std_logic;
SIGNAL \input_filter[13][0]~feeder_combout\ : std_logic;
SIGNAL \input_filter[13][0]~4_combout\ : std_logic;
SIGNAL \input_filter[13][0]~q\ : std_logic;
SIGNAL \input_filter[13][1]~feeder_combout\ : std_logic;
SIGNAL \input_filter[13][1]~q\ : std_logic;
SIGNAL \input_filter[13][2]~feeder_combout\ : std_logic;
SIGNAL \input_filter[13][2]~q\ : std_logic;
SIGNAL \input_filter[13][3]~feeder_combout\ : std_logic;
SIGNAL \input_filter[13][3]~q\ : std_logic;
SIGNAL \input_filter[13][4]~feeder_combout\ : std_logic;
SIGNAL \input_filter[13][4]~q\ : std_logic;
SIGNAL \input_filter[13][5]~feeder_combout\ : std_logic;
SIGNAL \input_filter[13][5]~q\ : std_logic;
SIGNAL \input_filter[13][6]~feeder_combout\ : std_logic;
SIGNAL \input_filter[13][6]~q\ : std_logic;
SIGNAL \input_filter[13][7]~feeder_combout\ : std_logic;
SIGNAL \input_filter[13][7]~q\ : std_logic;
SIGNAL \input_filter[13][8]~feeder_combout\ : std_logic;
SIGNAL \input_filter[13][8]~q\ : std_logic;
SIGNAL \cv_1|Mult13~16\ : std_logic;
SIGNAL \Decoder1~2_combout\ : std_logic;
SIGNAL \input_filter[12][0]~5_combout\ : std_logic;
SIGNAL \input_matrix[3][0]~6_combout\ : std_logic;
SIGNAL \cv_1|Mult12~16\ : std_logic;
SIGNAL \input_filter[14][0]~3_combout\ : std_logic;
SIGNAL \cv_1|Mult14~16\ : std_logic;
SIGNAL \cv_1|Mult13~15\ : std_logic;
SIGNAL \cv_1|Mult14~15\ : std_logic;
SIGNAL \cv_1|Mult12~15\ : std_logic;
SIGNAL \cv_1|Mult12~14\ : std_logic;
SIGNAL \cv_1|Mult13~14\ : std_logic;
SIGNAL \cv_1|Mult14~14\ : std_logic;
SIGNAL \cv_1|Mult14~13\ : std_logic;
SIGNAL \cv_1|Mult13~13\ : std_logic;
SIGNAL \cv_1|Mult12~13\ : std_logic;
SIGNAL \cv_1|Mult12~12\ : std_logic;
SIGNAL \cv_1|Mult13~12\ : std_logic;
SIGNAL \cv_1|Mult14~12\ : std_logic;
SIGNAL \cv_1|Mult14~11\ : std_logic;
SIGNAL \cv_1|Mult13~11\ : std_logic;
SIGNAL \cv_1|Mult12~11\ : std_logic;
SIGNAL \cv_1|Mult13~10\ : std_logic;
SIGNAL \cv_1|Mult14~10\ : std_logic;
SIGNAL \cv_1|Mult12~10\ : std_logic;
SIGNAL \cv_1|Mult12~9\ : std_logic;
SIGNAL \cv_1|Mult14~9\ : std_logic;
SIGNAL \cv_1|Mult13~9\ : std_logic;
SIGNAL \cv_1|Mult14~8_resulta\ : std_logic;
SIGNAL \cv_1|Mult12~8_resulta\ : std_logic;
SIGNAL \cv_1|Mult13~8_resulta\ : std_logic;
SIGNAL \cv_1|Add9~2\ : std_logic;
SIGNAL \cv_1|Add9~3\ : std_logic;
SIGNAL \cv_1|Add9~14\ : std_logic;
SIGNAL \cv_1|Add9~15\ : std_logic;
SIGNAL \cv_1|Add9~18\ : std_logic;
SIGNAL \cv_1|Add9~19\ : std_logic;
SIGNAL \cv_1|Add9~22\ : std_logic;
SIGNAL \cv_1|Add9~23\ : std_logic;
SIGNAL \cv_1|Add9~26\ : std_logic;
SIGNAL \cv_1|Add9~27\ : std_logic;
SIGNAL \cv_1|Add9~30\ : std_logic;
SIGNAL \cv_1|Add9~31\ : std_logic;
SIGNAL \cv_1|Add9~34\ : std_logic;
SIGNAL \cv_1|Add9~35\ : std_logic;
SIGNAL \cv_1|Add9~38\ : std_logic;
SIGNAL \cv_1|Add9~39\ : std_logic;
SIGNAL \cv_1|Add9~5_sumout\ : std_logic;
SIGNAL \Decoder1~3_combout\ : std_logic;
SIGNAL \input_matrix[1][0]~7_combout\ : std_logic;
SIGNAL \input_filter[9][0]~feeder_combout\ : std_logic;
SIGNAL \input_filter[9][0]~8_combout\ : std_logic;
SIGNAL \input_filter[9][0]~q\ : std_logic;
SIGNAL \input_filter[9][1]~feeder_combout\ : std_logic;
SIGNAL \input_filter[9][1]~q\ : std_logic;
SIGNAL \input_filter[9][2]~feeder_combout\ : std_logic;
SIGNAL \input_filter[9][2]~q\ : std_logic;
SIGNAL \input_filter[9][3]~feeder_combout\ : std_logic;
SIGNAL \input_filter[9][3]~q\ : std_logic;
SIGNAL \input_filter[9][4]~feeder_combout\ : std_logic;
SIGNAL \input_filter[9][4]~q\ : std_logic;
SIGNAL \input_filter[9][5]~feeder_combout\ : std_logic;
SIGNAL \input_filter[9][5]~q\ : std_logic;
SIGNAL \input_filter[9][6]~feeder_combout\ : std_logic;
SIGNAL \input_filter[9][6]~q\ : std_logic;
SIGNAL \input_filter[9][7]~feeder_combout\ : std_logic;
SIGNAL \input_filter[9][7]~q\ : std_logic;
SIGNAL \input_filter[9][8]~feeder_combout\ : std_logic;
SIGNAL \input_filter[9][8]~q\ : std_logic;
SIGNAL \cv_1|Mult9~16\ : std_logic;
SIGNAL \input_filter[11][0]~feeder_combout\ : std_logic;
SIGNAL \input_filter[11][0]~6_combout\ : std_logic;
SIGNAL \input_filter[11][0]~q\ : std_logic;
SIGNAL \input_filter[11][1]~feeder_combout\ : std_logic;
SIGNAL \input_filter[11][1]~q\ : std_logic;
SIGNAL \input_filter[11][2]~feeder_combout\ : std_logic;
SIGNAL \input_filter[11][2]~q\ : std_logic;
SIGNAL \input_filter[11][3]~feeder_combout\ : std_logic;
SIGNAL \input_filter[11][3]~q\ : std_logic;
SIGNAL \input_filter[11][4]~feeder_combout\ : std_logic;
SIGNAL \input_filter[11][4]~q\ : std_logic;
SIGNAL \input_filter[11][5]~feeder_combout\ : std_logic;
SIGNAL \input_filter[11][5]~q\ : std_logic;
SIGNAL \input_filter[11][6]~feeder_combout\ : std_logic;
SIGNAL \input_filter[11][6]~q\ : std_logic;
SIGNAL \input_filter[11][7]~feeder_combout\ : std_logic;
SIGNAL \input_filter[11][7]~q\ : std_logic;
SIGNAL \input_filter[11][8]~feeder_combout\ : std_logic;
SIGNAL \input_filter[11][8]~q\ : std_logic;
SIGNAL \cv_1|Mult11~16\ : std_logic;
SIGNAL \input_filter[10][0]~feeder_combout\ : std_logic;
SIGNAL \input_filter[10][0]~7_combout\ : std_logic;
SIGNAL \input_filter[10][0]~q\ : std_logic;
SIGNAL \input_filter[10][1]~feeder_combout\ : std_logic;
SIGNAL \input_filter[10][1]~q\ : std_logic;
SIGNAL \input_filter[10][2]~feeder_combout\ : std_logic;
SIGNAL \input_filter[10][2]~q\ : std_logic;
SIGNAL \input_filter[10][3]~feeder_combout\ : std_logic;
SIGNAL \input_filter[10][3]~q\ : std_logic;
SIGNAL \input_filter[10][4]~feeder_combout\ : std_logic;
SIGNAL \input_filter[10][4]~q\ : std_logic;
SIGNAL \input_filter[10][5]~feeder_combout\ : std_logic;
SIGNAL \input_filter[10][5]~q\ : std_logic;
SIGNAL \input_filter[10][6]~feeder_combout\ : std_logic;
SIGNAL \input_filter[10][6]~q\ : std_logic;
SIGNAL \input_filter[10][7]~feeder_combout\ : std_logic;
SIGNAL \input_filter[10][7]~q\ : std_logic;
SIGNAL \input_filter[10][8]~feeder_combout\ : std_logic;
SIGNAL \input_filter[10][8]~q\ : std_logic;
SIGNAL \cv_1|Mult10~16\ : std_logic;
SIGNAL \cv_1|Mult9~15\ : std_logic;
SIGNAL \cv_1|Mult11~15\ : std_logic;
SIGNAL \cv_1|Mult10~15\ : std_logic;
SIGNAL \cv_1|Mult9~14\ : std_logic;
SIGNAL \cv_1|Mult10~14\ : std_logic;
SIGNAL \cv_1|Mult11~14\ : std_logic;
SIGNAL \cv_1|Mult9~13\ : std_logic;
SIGNAL \cv_1|Mult11~13\ : std_logic;
SIGNAL \cv_1|Mult10~13\ : std_logic;
SIGNAL \cv_1|Mult9~12\ : std_logic;
SIGNAL \cv_1|Mult11~12\ : std_logic;
SIGNAL \cv_1|Mult10~12\ : std_logic;
SIGNAL \cv_1|Mult10~11\ : std_logic;
SIGNAL \cv_1|Mult9~11\ : std_logic;
SIGNAL \cv_1|Mult11~11\ : std_logic;
SIGNAL \cv_1|Mult9~10\ : std_logic;
SIGNAL \cv_1|Mult10~10\ : std_logic;
SIGNAL \cv_1|Mult11~10\ : std_logic;
SIGNAL \cv_1|Mult9~9\ : std_logic;
SIGNAL \cv_1|Mult10~9\ : std_logic;
SIGNAL \cv_1|Mult11~9\ : std_logic;
SIGNAL \cv_1|Mult9~8_resulta\ : std_logic;
SIGNAL \cv_1|Mult10~8_resulta\ : std_logic;
SIGNAL \cv_1|Mult11~8_resulta\ : std_logic;
SIGNAL \cv_1|Add8~42\ : std_logic;
SIGNAL \cv_1|Add8~43\ : std_logic;
SIGNAL \cv_1|Add8~54\ : std_logic;
SIGNAL \cv_1|Add8~55\ : std_logic;
SIGNAL \cv_1|Add8~58\ : std_logic;
SIGNAL \cv_1|Add8~59\ : std_logic;
SIGNAL \cv_1|Add8~62\ : std_logic;
SIGNAL \cv_1|Add8~63\ : std_logic;
SIGNAL \cv_1|Add8~66\ : std_logic;
SIGNAL \cv_1|Add8~67\ : std_logic;
SIGNAL \cv_1|Add8~70\ : std_logic;
SIGNAL \cv_1|Add8~71\ : std_logic;
SIGNAL \cv_1|Add8~74\ : std_logic;
SIGNAL \cv_1|Add8~75\ : std_logic;
SIGNAL \cv_1|Add8~78\ : std_logic;
SIGNAL \cv_1|Add8~79\ : std_logic;
SIGNAL \cv_1|Add8~45_sumout\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \input_matrix[7][0]~4_combout\ : std_logic;
SIGNAL \input_filter[15][0]~feeder_combout\ : std_logic;
SIGNAL \input_filter[15][0]~2_combout\ : std_logic;
SIGNAL \input_filter[15][0]~q\ : std_logic;
SIGNAL \input_filter[15][1]~feeder_combout\ : std_logic;
SIGNAL \input_filter[15][1]~q\ : std_logic;
SIGNAL \input_filter[15][2]~feeder_combout\ : std_logic;
SIGNAL \input_filter[15][2]~q\ : std_logic;
SIGNAL \input_filter[15][3]~feeder_combout\ : std_logic;
SIGNAL \input_filter[15][3]~q\ : std_logic;
SIGNAL \input_filter[15][4]~feeder_combout\ : std_logic;
SIGNAL \input_filter[15][4]~q\ : std_logic;
SIGNAL \input_filter[15][5]~feeder_combout\ : std_logic;
SIGNAL \input_filter[15][5]~q\ : std_logic;
SIGNAL \input_filter[15][6]~feeder_combout\ : std_logic;
SIGNAL \input_filter[15][6]~q\ : std_logic;
SIGNAL \input_filter[15][7]~feeder_combout\ : std_logic;
SIGNAL \input_filter[15][7]~q\ : std_logic;
SIGNAL \input_filter[15][8]~feeder_combout\ : std_logic;
SIGNAL \input_filter[15][8]~q\ : std_logic;
SIGNAL \cv_1|Mult15~16\ : std_logic;
SIGNAL \input_filter[16][0]~1_combout\ : std_logic;
SIGNAL \cv_1|Mult16~16\ : std_logic;
SIGNAL \input_matrix[8][0]~2_combout\ : std_logic;
SIGNAL \input_filter[17][0]~0_combout\ : std_logic;
SIGNAL \input_matrix[8][0]~3_combout\ : std_logic;
SIGNAL \cv_1|Mult17~16\ : std_logic;
SIGNAL \cv_1|Mult17~15\ : std_logic;
SIGNAL \cv_1|Mult16~15\ : std_logic;
SIGNAL \cv_1|Mult15~15\ : std_logic;
SIGNAL \cv_1|Mult17~14\ : std_logic;
SIGNAL \cv_1|Mult16~14\ : std_logic;
SIGNAL \cv_1|Mult15~14\ : std_logic;
SIGNAL \cv_1|Mult17~13\ : std_logic;
SIGNAL \cv_1|Mult15~13\ : std_logic;
SIGNAL \cv_1|Mult16~13\ : std_logic;
SIGNAL \cv_1|Mult17~12\ : std_logic;
SIGNAL \cv_1|Mult16~12\ : std_logic;
SIGNAL \cv_1|Mult15~12\ : std_logic;
SIGNAL \cv_1|Mult17~11\ : std_logic;
SIGNAL \cv_1|Mult15~11\ : std_logic;
SIGNAL \cv_1|Mult16~11\ : std_logic;
SIGNAL \cv_1|Mult16~10\ : std_logic;
SIGNAL \cv_1|Mult17~10\ : std_logic;
SIGNAL \cv_1|Mult15~10\ : std_logic;
SIGNAL \cv_1|Mult17~9\ : std_logic;
SIGNAL \cv_1|Mult16~9\ : std_logic;
SIGNAL \cv_1|Mult15~9\ : std_logic;
SIGNAL \cv_1|Mult17~8_resulta\ : std_logic;
SIGNAL \cv_1|Mult15~8_resulta\ : std_logic;
SIGNAL \cv_1|Mult16~8_resulta\ : std_logic;
SIGNAL \cv_1|Add13~2\ : std_logic;
SIGNAL \cv_1|Add13~3\ : std_logic;
SIGNAL \cv_1|Add13~14\ : std_logic;
SIGNAL \cv_1|Add13~15\ : std_logic;
SIGNAL \cv_1|Add13~18\ : std_logic;
SIGNAL \cv_1|Add13~19\ : std_logic;
SIGNAL \cv_1|Add13~22\ : std_logic;
SIGNAL \cv_1|Add13~23\ : std_logic;
SIGNAL \cv_1|Add13~26\ : std_logic;
SIGNAL \cv_1|Add13~27\ : std_logic;
SIGNAL \cv_1|Add13~30\ : std_logic;
SIGNAL \cv_1|Add13~31\ : std_logic;
SIGNAL \cv_1|Add13~34\ : std_logic;
SIGNAL \cv_1|Add13~35\ : std_logic;
SIGNAL \cv_1|Add13~38\ : std_logic;
SIGNAL \cv_1|Add13~39\ : std_logic;
SIGNAL \cv_1|Add13~5_sumout\ : std_logic;
SIGNAL \cv_1|Add9~37_sumout\ : std_logic;
SIGNAL \cv_1|Add8~77_sumout\ : std_logic;
SIGNAL \cv_1|Add13~37_sumout\ : std_logic;
SIGNAL \cv_1|Add9~33_sumout\ : std_logic;
SIGNAL \cv_1|Add13~33_sumout\ : std_logic;
SIGNAL \cv_1|Add8~73_sumout\ : std_logic;
SIGNAL \cv_1|Add9~29_sumout\ : std_logic;
SIGNAL \cv_1|Add13~29_sumout\ : std_logic;
SIGNAL \cv_1|Add8~69_sumout\ : std_logic;
SIGNAL \cv_1|Add9~25_sumout\ : std_logic;
SIGNAL \cv_1|Add13~25_sumout\ : std_logic;
SIGNAL \cv_1|Add8~65_sumout\ : std_logic;
SIGNAL \cv_1|Add9~21_sumout\ : std_logic;
SIGNAL \cv_1|Add13~21_sumout\ : std_logic;
SIGNAL \cv_1|Add8~61_sumout\ : std_logic;
SIGNAL \cv_1|Add9~17_sumout\ : std_logic;
SIGNAL \cv_1|Add13~17_sumout\ : std_logic;
SIGNAL \cv_1|Add8~57_sumout\ : std_logic;
SIGNAL \cv_1|Add9~13_sumout\ : std_logic;
SIGNAL \cv_1|Add8~53_sumout\ : std_logic;
SIGNAL \cv_1|Add13~13_sumout\ : std_logic;
SIGNAL \cv_1|Add9~1_sumout\ : std_logic;
SIGNAL \cv_1|Add13~1_sumout\ : std_logic;
SIGNAL \cv_1|Add8~41_sumout\ : std_logic;
SIGNAL \cv_1|Add8~2\ : std_logic;
SIGNAL \cv_1|Add8~3\ : std_logic;
SIGNAL \cv_1|Add8~14\ : std_logic;
SIGNAL \cv_1|Add8~15\ : std_logic;
SIGNAL \cv_1|Add8~18\ : std_logic;
SIGNAL \cv_1|Add8~19\ : std_logic;
SIGNAL \cv_1|Add8~22\ : std_logic;
SIGNAL \cv_1|Add8~23\ : std_logic;
SIGNAL \cv_1|Add8~26\ : std_logic;
SIGNAL \cv_1|Add8~27\ : std_logic;
SIGNAL \cv_1|Add8~30\ : std_logic;
SIGNAL \cv_1|Add8~31\ : std_logic;
SIGNAL \cv_1|Add8~34\ : std_logic;
SIGNAL \cv_1|Add8~35\ : std_logic;
SIGNAL \cv_1|Add8~38\ : std_logic;
SIGNAL \cv_1|Add8~39\ : std_logic;
SIGNAL \cv_1|Add8~5_sumout\ : std_logic;
SIGNAL \cv_1|Mult4~16\ : std_logic;
SIGNAL \cv_1|Mult5~16\ : std_logic;
SIGNAL \cv_1|Mult3~16\ : std_logic;
SIGNAL \cv_1|Mult3~15\ : std_logic;
SIGNAL \cv_1|Mult4~15\ : std_logic;
SIGNAL \cv_1|Mult5~15\ : std_logic;
SIGNAL \cv_1|Mult5~14\ : std_logic;
SIGNAL \cv_1|Mult3~14\ : std_logic;
SIGNAL \cv_1|Mult4~14\ : std_logic;
SIGNAL \cv_1|Mult5~13\ : std_logic;
SIGNAL \cv_1|Mult3~13\ : std_logic;
SIGNAL \cv_1|Mult4~13\ : std_logic;
SIGNAL \cv_1|Mult4~12\ : std_logic;
SIGNAL \cv_1|Mult3~12\ : std_logic;
SIGNAL \cv_1|Mult5~12\ : std_logic;
SIGNAL \cv_1|Mult4~11\ : std_logic;
SIGNAL \cv_1|Mult3~11\ : std_logic;
SIGNAL \cv_1|Mult5~11\ : std_logic;
SIGNAL \cv_1|Mult4~10\ : std_logic;
SIGNAL \cv_1|Mult3~10\ : std_logic;
SIGNAL \cv_1|Mult5~10\ : std_logic;
SIGNAL \cv_1|Mult4~9\ : std_logic;
SIGNAL \cv_1|Mult3~9\ : std_logic;
SIGNAL \cv_1|Mult5~9\ : std_logic;
SIGNAL \cv_1|Mult4~8_resulta\ : std_logic;
SIGNAL \cv_1|Mult5~8_resulta\ : std_logic;
SIGNAL \cv_1|Mult3~8_resulta\ : std_logic;
SIGNAL \cv_1|Add1~2\ : std_logic;
SIGNAL \cv_1|Add1~3\ : std_logic;
SIGNAL \cv_1|Add1~14\ : std_logic;
SIGNAL \cv_1|Add1~15\ : std_logic;
SIGNAL \cv_1|Add1~18\ : std_logic;
SIGNAL \cv_1|Add1~19\ : std_logic;
SIGNAL \cv_1|Add1~22\ : std_logic;
SIGNAL \cv_1|Add1~23\ : std_logic;
SIGNAL \cv_1|Add1~26\ : std_logic;
SIGNAL \cv_1|Add1~27\ : std_logic;
SIGNAL \cv_1|Add1~30\ : std_logic;
SIGNAL \cv_1|Add1~31\ : std_logic;
SIGNAL \cv_1|Add1~34\ : std_logic;
SIGNAL \cv_1|Add1~35\ : std_logic;
SIGNAL \cv_1|Add1~38\ : std_logic;
SIGNAL \cv_1|Add1~39\ : std_logic;
SIGNAL \cv_1|Add1~5_sumout\ : std_logic;
SIGNAL \cv_1|Mult7~16\ : std_logic;
SIGNAL \cv_1|Mult6~16\ : std_logic;
SIGNAL \input_filter[8][0]~9_combout\ : std_logic;
SIGNAL \input_filter[8][0]~10_combout\ : std_logic;
SIGNAL \cv_1|Mult8~16\ : std_logic;
SIGNAL \cv_1|Mult6~15\ : std_logic;
SIGNAL \cv_1|Mult8~15\ : std_logic;
SIGNAL \cv_1|Mult7~15\ : std_logic;
SIGNAL \cv_1|Mult8~14\ : std_logic;
SIGNAL \cv_1|Mult6~14\ : std_logic;
SIGNAL \cv_1|Mult7~14\ : std_logic;
SIGNAL \cv_1|Mult8~13\ : std_logic;
SIGNAL \cv_1|Mult6~13\ : std_logic;
SIGNAL \cv_1|Mult7~13\ : std_logic;
SIGNAL \cv_1|Mult8~12\ : std_logic;
SIGNAL \cv_1|Mult6~12\ : std_logic;
SIGNAL \cv_1|Mult7~12\ : std_logic;
SIGNAL \cv_1|Mult6~11\ : std_logic;
SIGNAL \cv_1|Mult7~11\ : std_logic;
SIGNAL \cv_1|Mult8~11\ : std_logic;
SIGNAL \cv_1|Mult8~10\ : std_logic;
SIGNAL \cv_1|Mult7~10\ : std_logic;
SIGNAL \cv_1|Mult6~10\ : std_logic;
SIGNAL \cv_1|Mult8~9\ : std_logic;
SIGNAL \cv_1|Mult6~9\ : std_logic;
SIGNAL \cv_1|Mult7~9\ : std_logic;
SIGNAL \cv_1|Mult8~8_resulta\ : std_logic;
SIGNAL \cv_1|Mult6~8_resulta\ : std_logic;
SIGNAL \cv_1|Mult7~8_resulta\ : std_logic;
SIGNAL \cv_1|Add5~2\ : std_logic;
SIGNAL \cv_1|Add5~3\ : std_logic;
SIGNAL \cv_1|Add5~14\ : std_logic;
SIGNAL \cv_1|Add5~15\ : std_logic;
SIGNAL \cv_1|Add5~18\ : std_logic;
SIGNAL \cv_1|Add5~19\ : std_logic;
SIGNAL \cv_1|Add5~22\ : std_logic;
SIGNAL \cv_1|Add5~23\ : std_logic;
SIGNAL \cv_1|Add5~26\ : std_logic;
SIGNAL \cv_1|Add5~27\ : std_logic;
SIGNAL \cv_1|Add5~30\ : std_logic;
SIGNAL \cv_1|Add5~31\ : std_logic;
SIGNAL \cv_1|Add5~34\ : std_logic;
SIGNAL \cv_1|Add5~35\ : std_logic;
SIGNAL \cv_1|Add5~38\ : std_logic;
SIGNAL \cv_1|Add5~39\ : std_logic;
SIGNAL \cv_1|Add5~5_sumout\ : std_logic;
SIGNAL \cv_1|Mult2~16\ : std_logic;
SIGNAL \input_filter[1][0]~11_combout\ : std_logic;
SIGNAL \cv_1|Mult0~16\ : std_logic;
SIGNAL \cv_1|Mult1~16\ : std_logic;
SIGNAL \cv_1|Mult2~15\ : std_logic;
SIGNAL \cv_1|Mult0~15\ : std_logic;
SIGNAL \cv_1|Mult1~15\ : std_logic;
SIGNAL \cv_1|Mult2~14\ : std_logic;
SIGNAL \cv_1|Mult0~14\ : std_logic;
SIGNAL \cv_1|Mult1~14\ : std_logic;
SIGNAL \cv_1|Mult2~13\ : std_logic;
SIGNAL \cv_1|Mult0~13\ : std_logic;
SIGNAL \cv_1|Mult1~13\ : std_logic;
SIGNAL \cv_1|Mult0~12\ : std_logic;
SIGNAL \cv_1|Mult1~12\ : std_logic;
SIGNAL \cv_1|Mult2~12\ : std_logic;
SIGNAL \cv_1|Mult0~11\ : std_logic;
SIGNAL \cv_1|Mult1~11\ : std_logic;
SIGNAL \cv_1|Mult2~11\ : std_logic;
SIGNAL \cv_1|Mult2~10\ : std_logic;
SIGNAL \cv_1|Mult0~10\ : std_logic;
SIGNAL \cv_1|Mult1~10\ : std_logic;
SIGNAL \cv_1|Mult0~9\ : std_logic;
SIGNAL \cv_1|Mult1~9\ : std_logic;
SIGNAL \cv_1|Mult2~9\ : std_logic;
SIGNAL \cv_1|Mult1~8_resulta\ : std_logic;
SIGNAL \cv_1|Mult2~8_resulta\ : std_logic;
SIGNAL \cv_1|Mult0~8_resulta\ : std_logic;
SIGNAL \cv_1|Add0~82\ : std_logic;
SIGNAL \cv_1|Add0~83\ : std_logic;
SIGNAL \cv_1|Add0~94\ : std_logic;
SIGNAL \cv_1|Add0~95\ : std_logic;
SIGNAL \cv_1|Add0~98\ : std_logic;
SIGNAL \cv_1|Add0~99\ : std_logic;
SIGNAL \cv_1|Add0~102\ : std_logic;
SIGNAL \cv_1|Add0~103\ : std_logic;
SIGNAL \cv_1|Add0~106\ : std_logic;
SIGNAL \cv_1|Add0~107\ : std_logic;
SIGNAL \cv_1|Add0~110\ : std_logic;
SIGNAL \cv_1|Add0~111\ : std_logic;
SIGNAL \cv_1|Add0~114\ : std_logic;
SIGNAL \cv_1|Add0~115\ : std_logic;
SIGNAL \cv_1|Add0~118\ : std_logic;
SIGNAL \cv_1|Add0~119\ : std_logic;
SIGNAL \cv_1|Add0~85_sumout\ : std_logic;
SIGNAL \cv_1|Add0~117_sumout\ : std_logic;
SIGNAL \cv_1|Add1~37_sumout\ : std_logic;
SIGNAL \cv_1|Add5~37_sumout\ : std_logic;
SIGNAL \cv_1|Add0~113_sumout\ : std_logic;
SIGNAL \cv_1|Add5~33_sumout\ : std_logic;
SIGNAL \cv_1|Add1~33_sumout\ : std_logic;
SIGNAL \cv_1|Add1~29_sumout\ : std_logic;
SIGNAL \cv_1|Add5~29_sumout\ : std_logic;
SIGNAL \cv_1|Add0~109_sumout\ : std_logic;
SIGNAL \cv_1|Add0~105_sumout\ : std_logic;
SIGNAL \cv_1|Add5~25_sumout\ : std_logic;
SIGNAL \cv_1|Add1~25_sumout\ : std_logic;
SIGNAL \cv_1|Add0~101_sumout\ : std_logic;
SIGNAL \cv_1|Add5~21_sumout\ : std_logic;
SIGNAL \cv_1|Add1~21_sumout\ : std_logic;
SIGNAL \cv_1|Add5~17_sumout\ : std_logic;
SIGNAL \cv_1|Add1~17_sumout\ : std_logic;
SIGNAL \cv_1|Add0~97_sumout\ : std_logic;
SIGNAL \cv_1|Add0~93_sumout\ : std_logic;
SIGNAL \cv_1|Add5~13_sumout\ : std_logic;
SIGNAL \cv_1|Add1~13_sumout\ : std_logic;
SIGNAL \cv_1|Add1~1_sumout\ : std_logic;
SIGNAL \cv_1|Add0~81_sumout\ : std_logic;
SIGNAL \cv_1|Add5~1_sumout\ : std_logic;
SIGNAL \cv_1|Add0~42\ : std_logic;
SIGNAL \cv_1|Add0~43\ : std_logic;
SIGNAL \cv_1|Add0~54\ : std_logic;
SIGNAL \cv_1|Add0~55\ : std_logic;
SIGNAL \cv_1|Add0~58\ : std_logic;
SIGNAL \cv_1|Add0~59\ : std_logic;
SIGNAL \cv_1|Add0~62\ : std_logic;
SIGNAL \cv_1|Add0~63\ : std_logic;
SIGNAL \cv_1|Add0~66\ : std_logic;
SIGNAL \cv_1|Add0~67\ : std_logic;
SIGNAL \cv_1|Add0~70\ : std_logic;
SIGNAL \cv_1|Add0~71\ : std_logic;
SIGNAL \cv_1|Add0~74\ : std_logic;
SIGNAL \cv_1|Add0~75\ : std_logic;
SIGNAL \cv_1|Add0~78\ : std_logic;
SIGNAL \cv_1|Add0~79\ : std_logic;
SIGNAL \cv_1|Add0~45_sumout\ : std_logic;
SIGNAL \cv_1|Add0~77_sumout\ : std_logic;
SIGNAL \cv_1|Add8~37_sumout\ : std_logic;
SIGNAL \cv_1|Add8~33_sumout\ : std_logic;
SIGNAL \cv_1|Add0~73_sumout\ : std_logic;
SIGNAL \cv_1|Add0~69_sumout\ : std_logic;
SIGNAL \cv_1|Add8~29_sumout\ : std_logic;
SIGNAL \cv_1|Add8~25_sumout\ : std_logic;
SIGNAL \cv_1|Add0~65_sumout\ : std_logic;
SIGNAL \cv_1|Add0~61_sumout\ : std_logic;
SIGNAL \cv_1|Add8~21_sumout\ : std_logic;
SIGNAL \cv_1|Add0~57_sumout\ : std_logic;
SIGNAL \cv_1|Add8~17_sumout\ : std_logic;
SIGNAL \cv_1|Add0~53_sumout\ : std_logic;
SIGNAL \cv_1|Add8~13_sumout\ : std_logic;
SIGNAL \cv_1|Add0~41_sumout\ : std_logic;
SIGNAL \cv_1|Add8~1_sumout\ : std_logic;
SIGNAL \cv_1|Add0~2\ : std_logic;
SIGNAL \cv_1|Add0~14\ : std_logic;
SIGNAL \cv_1|Add0~18\ : std_logic;
SIGNAL \cv_1|Add0~22\ : std_logic;
SIGNAL \cv_1|Add0~26\ : std_logic;
SIGNAL \cv_1|Add0~30\ : std_logic;
SIGNAL \cv_1|Add0~34\ : std_logic;
SIGNAL \cv_1|Add0~38\ : std_logic;
SIGNAL \cv_1|Add0~5_sumout\ : std_logic;
SIGNAL \cv_1|Add0~1_sumout\ : std_logic;
SIGNAL \cv_1|cv_o~0_combout\ : std_logic;
SIGNAL \cv_1|Mult1~25\ : std_logic;
SIGNAL \cv_1|Mult0~25\ : std_logic;
SIGNAL \cv_1|Mult2~25\ : std_logic;
SIGNAL \cv_1|Add0~86\ : std_logic;
SIGNAL \cv_1|Add0~87\ : std_logic;
SIGNAL \cv_1|Add0~89_sumout\ : std_logic;
SIGNAL \cv_1|Mult8~25\ : std_logic;
SIGNAL \cv_1|Mult7~25\ : std_logic;
SIGNAL \cv_1|Mult6~25\ : std_logic;
SIGNAL \cv_1|Add5~6\ : std_logic;
SIGNAL \cv_1|Add5~7\ : std_logic;
SIGNAL \cv_1|Add5~9_sumout\ : std_logic;
SIGNAL \cv_1|Mult4~25\ : std_logic;
SIGNAL \cv_1|Mult3~25\ : std_logic;
SIGNAL \cv_1|Mult5~25\ : std_logic;
SIGNAL \cv_1|Add1~6\ : std_logic;
SIGNAL \cv_1|Add1~7\ : std_logic;
SIGNAL \cv_1|Add1~9_sumout\ : std_logic;
SIGNAL \cv_1|Add0~46\ : std_logic;
SIGNAL \cv_1|Add0~47\ : std_logic;
SIGNAL \cv_1|Add0~49_sumout\ : std_logic;
SIGNAL \cv_1|Mult12~25\ : std_logic;
SIGNAL \cv_1|Mult14~25\ : std_logic;
SIGNAL \cv_1|Mult13~25\ : std_logic;
SIGNAL \cv_1|Add9~6\ : std_logic;
SIGNAL \cv_1|Add9~7\ : std_logic;
SIGNAL \cv_1|Add9~9_sumout\ : std_logic;
SIGNAL \cv_1|Mult9~25\ : std_logic;
SIGNAL \cv_1|Mult10~25\ : std_logic;
SIGNAL \cv_1|Mult11~25\ : std_logic;
SIGNAL \cv_1|Add8~46\ : std_logic;
SIGNAL \cv_1|Add8~47\ : std_logic;
SIGNAL \cv_1|Add8~49_sumout\ : std_logic;
SIGNAL \cv_1|Mult17~25\ : std_logic;
SIGNAL \cv_1|Mult16~25\ : std_logic;
SIGNAL \cv_1|Mult15~25\ : std_logic;
SIGNAL \cv_1|Add13~6\ : std_logic;
SIGNAL \cv_1|Add13~7\ : std_logic;
SIGNAL \cv_1|Add13~9_sumout\ : std_logic;
SIGNAL \cv_1|Add8~6\ : std_logic;
SIGNAL \cv_1|Add8~7\ : std_logic;
SIGNAL \cv_1|Add8~9_sumout\ : std_logic;
SIGNAL \cv_1|Add0~6\ : std_logic;
SIGNAL \cv_1|Add0~9_sumout\ : std_logic;
SIGNAL \cv_1|Add0~13_sumout\ : std_logic;
SIGNAL \cv_1|cv_o~1_combout\ : std_logic;
SIGNAL \cv_1|Add0~17_sumout\ : std_logic;
SIGNAL \cv_1|cv_o~2_combout\ : std_logic;
SIGNAL \cv_1|Add0~21_sumout\ : std_logic;
SIGNAL \cv_1|cv_o~3_combout\ : std_logic;
SIGNAL \cv_1|Add0~25_sumout\ : std_logic;
SIGNAL \cv_1|cv_o~4_combout\ : std_logic;
SIGNAL \cv_1|Add0~29_sumout\ : std_logic;
SIGNAL \cv_1|cv_o~5_combout\ : std_logic;
SIGNAL \cv_1|Add0~33_sumout\ : std_logic;
SIGNAL \cv_1|cv_o~6_combout\ : std_logic;
SIGNAL \cv_1|Add0~37_sumout\ : std_logic;
SIGNAL \cv_1|cv_o~7_combout\ : std_logic;
SIGNAL img_address_a : std_logic_vector(4 DOWNTO 0);
SIGNAL \rom_filter2|altsyncram_component|auto_generated|q_b\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rom_filter2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rom_filter1|altsyncram_component|auto_generated|q_b\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rom_filter1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rom_img|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rom_img|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL filter_address_a : std_logic_vector(4 DOWNTO 0);
SIGNAL \cv_1|cv_o\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_convolution:index_matrix[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_input_filter[8][0]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder1~0_combout\ : std_logic;
SIGNAL \ALT_INV_convolution:enable_buffer_filter~q\ : std_logic;
SIGNAL \ALT_INV_input_matrix[8][0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_convolution:index_matrix[2]~q\ : std_logic;
SIGNAL \ALT_INV_convolution:index_matrix[1]~q\ : std_logic;
SIGNAL \ALT_INV_convolution:index_matrix[3]~q\ : std_logic;
SIGNAL \ALT_INV_input_matrix[8][0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_input_matrix~0_combout\ : std_logic;
SIGNAL \ALT_INV_convolution:cont_clock[1]~q\ : std_logic;
SIGNAL \ALT_INV_convolution:cont_clock[0]~q\ : std_logic;
SIGNAL \ALT_INV_convolution:cont_clock[2]~q\ : std_logic;
SIGNAL \ALT_INV_convolution:delay[1]~q\ : std_logic;
SIGNAL \ALT_INV_convolution:delay[0]~q\ : std_logic;
SIGNAL ALT_INV_filter_address_a : std_logic_vector(4 DOWNTO 1);
SIGNAL ALT_INV_img_address_a : std_logic_vector(4 DOWNTO 1);
SIGNAL \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_b\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \cv_1|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult0~16\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult0~15\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult0~14\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult0~13\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult0~12\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult0~11\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult0~10\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult0~9\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult0~8_resulta\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult1~25\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult1~16\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult1~15\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult1~14\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult1~13\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult1~12\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult1~11\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult1~10\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult1~9\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult1~8_resulta\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult2~25\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult2~16\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult2~15\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult2~14\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult2~13\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult2~12\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult2~11\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult2~10\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult2~9\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult2~8_resulta\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult3~25\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult3~16\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult3~15\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult3~14\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult3~13\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult3~12\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult3~11\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult3~10\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult3~9\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult3~8_resulta\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult4~25\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult4~16\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult4~15\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult4~14\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult4~13\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult4~12\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult4~11\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult4~10\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult4~9\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult4~8_resulta\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult5~25\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult5~16\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult5~15\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult5~14\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult5~13\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult5~12\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult5~11\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult5~10\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult5~9\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult5~8_resulta\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult6~25\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult6~16\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult6~15\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult6~14\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult6~13\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult6~12\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult6~11\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult6~10\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult6~9\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult6~8_resulta\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult7~25\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult7~16\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult7~15\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult7~14\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult7~13\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult7~12\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult7~11\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult7~10\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult7~9\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult7~8_resulta\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult8~25\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult8~16\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult8~15\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult8~14\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult8~13\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult8~12\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult8~11\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult8~10\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult8~9\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult8~8_resulta\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult9~25\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult9~16\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult9~15\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult9~14\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult9~13\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult9~12\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult9~11\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult9~10\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult9~9\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult9~8_resulta\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult10~25\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult10~16\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult10~15\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult10~14\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult10~13\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult10~12\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult10~11\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult10~10\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult10~9\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult10~8_resulta\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult11~25\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult11~16\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult11~15\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult11~14\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult11~13\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult11~12\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult11~11\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult11~10\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult11~9\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult11~8_resulta\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult12~25\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult12~16\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult12~15\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult12~14\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult12~13\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult12~12\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult12~11\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult12~10\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult12~9\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult12~8_resulta\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult13~25\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult13~16\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult13~15\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult13~14\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult13~13\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult13~12\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult13~11\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult13~10\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult13~9\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult13~8_resulta\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult14~25\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult14~16\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult14~15\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult14~14\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult14~13\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult14~12\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult14~11\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult14~10\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult14~9\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult14~8_resulta\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult15~25\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult15~16\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult15~15\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult15~14\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult15~13\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult15~12\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult15~11\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult15~10\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult15~9\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult15~8_resulta\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult16~25\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult16~16\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult16~15\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult16~14\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult16~13\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult16~12\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult16~11\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult16~10\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult16~9\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult16~8_resulta\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult17~25\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult17~16\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult17~15\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult17~14\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult17~13\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult17~12\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult17~11\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult17~10\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult17~9\ : std_logic;
SIGNAL \cv_1|ALT_INV_Mult17~8_resulta\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add5~37_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~77_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add9~37_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add13~37_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add5~33_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~73_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add9~33_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add13~33_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~69_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add9~29_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add13~29_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~65_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add9~25_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add13~25_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~61_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add9~21_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add13~21_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~57_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add9~17_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add13~17_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~53_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add9~13_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add13~13_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~49_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add9~9_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add13~9_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~45_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add9~5_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add13~5_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~41_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add9~1_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add13~1_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~37_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~33_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~29_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~25_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~21_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~17_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \cv_1|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
cv_n_o <= ww_cv_n_o;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cv_1|Mult17~8_ACLR_bus\ <= (gnd & gnd);

\cv_1|Mult17~8_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\cv_1|Mult17~8_ENA_bus\ <= (vcc & \input_matrix[8][0]~3_combout\ & \input_filter[17][0]~0_combout\);

\cv_1|Mult17~8_AX_bus\ <= (\rom_img|altsyncram_component|auto_generated|q_a\(7) & \rom_img|altsyncram_component|auto_generated|q_a\(6) & \rom_img|altsyncram_component|auto_generated|q_a\(5) & \rom_img|altsyncram_component|auto_generated|q_a\(4) & 
\rom_img|altsyncram_component|auto_generated|q_a\(3) & \rom_img|altsyncram_component|auto_generated|q_a\(2) & \rom_img|altsyncram_component|auto_generated|q_a\(1) & \rom_img|altsyncram_component|auto_generated|q_a\(0));

\cv_1|Mult17~8_AY_bus\ <= (\rom_filter2|altsyncram_component|auto_generated|q_a\(8) & \rom_filter2|altsyncram_component|auto_generated|q_a\(8) & \rom_filter2|altsyncram_component|auto_generated|q_a\(8) & 
\rom_filter2|altsyncram_component|auto_generated|q_a\(8) & \rom_filter2|altsyncram_component|auto_generated|q_a\(8) & \rom_filter2|altsyncram_component|auto_generated|q_a\(8) & \rom_filter2|altsyncram_component|auto_generated|q_a\(8) & 
\rom_filter2|altsyncram_component|auto_generated|q_a\(8) & \rom_filter2|altsyncram_component|auto_generated|q_a\(8) & \rom_filter2|altsyncram_component|auto_generated|q_a\(8) & gnd & \rom_filter2|altsyncram_component|auto_generated|q_a\(7) & 
\rom_filter2|altsyncram_component|auto_generated|q_a\(6) & \rom_filter2|altsyncram_component|auto_generated|q_a\(5) & \rom_filter2|altsyncram_component|auto_generated|q_a\(4) & \rom_filter2|altsyncram_component|auto_generated|q_a\(3) & 
\rom_filter2|altsyncram_component|auto_generated|q_a\(2) & \rom_filter2|altsyncram_component|auto_generated|q_a\(1) & \rom_filter2|altsyncram_component|auto_generated|q_a\(0));

\cv_1|Mult17~8_resulta\ <= \cv_1|Mult17~8_RESULTA_bus\(0);
\cv_1|Mult17~9\ <= \cv_1|Mult17~8_RESULTA_bus\(1);
\cv_1|Mult17~10\ <= \cv_1|Mult17~8_RESULTA_bus\(2);
\cv_1|Mult17~11\ <= \cv_1|Mult17~8_RESULTA_bus\(3);
\cv_1|Mult17~12\ <= \cv_1|Mult17~8_RESULTA_bus\(4);
\cv_1|Mult17~13\ <= \cv_1|Mult17~8_RESULTA_bus\(5);
\cv_1|Mult17~14\ <= \cv_1|Mult17~8_RESULTA_bus\(6);
\cv_1|Mult17~15\ <= \cv_1|Mult17~8_RESULTA_bus\(7);
\cv_1|Mult17~16\ <= \cv_1|Mult17~8_RESULTA_bus\(8);
\cv_1|Mult17~17\ <= \cv_1|Mult17~8_RESULTA_bus\(9);
\cv_1|Mult17~18\ <= \cv_1|Mult17~8_RESULTA_bus\(10);
\cv_1|Mult17~19\ <= \cv_1|Mult17~8_RESULTA_bus\(11);
\cv_1|Mult17~20\ <= \cv_1|Mult17~8_RESULTA_bus\(12);
\cv_1|Mult17~21\ <= \cv_1|Mult17~8_RESULTA_bus\(13);
\cv_1|Mult17~22\ <= \cv_1|Mult17~8_RESULTA_bus\(14);
\cv_1|Mult17~23\ <= \cv_1|Mult17~8_RESULTA_bus\(15);
\cv_1|Mult17~24\ <= \cv_1|Mult17~8_RESULTA_bus\(16);
\cv_1|Mult17~25\ <= \cv_1|Mult17~8_RESULTA_bus\(17);
\cv_1|Mult17~26\ <= \cv_1|Mult17~8_RESULTA_bus\(18);
\cv_1|Mult17~27\ <= \cv_1|Mult17~8_RESULTA_bus\(19);
\cv_1|Mult17~28\ <= \cv_1|Mult17~8_RESULTA_bus\(20);
\cv_1|Mult17~29\ <= \cv_1|Mult17~8_RESULTA_bus\(21);
\cv_1|Mult17~30\ <= \cv_1|Mult17~8_RESULTA_bus\(22);
\cv_1|Mult17~31\ <= \cv_1|Mult17~8_RESULTA_bus\(23);
\cv_1|Mult17~32\ <= \cv_1|Mult17~8_RESULTA_bus\(24);
\cv_1|Mult17~33\ <= \cv_1|Mult17~8_RESULTA_bus\(25);
\cv_1|Mult17~34\ <= \cv_1|Mult17~8_RESULTA_bus\(26);
\cv_1|Mult17~35\ <= \cv_1|Mult17~8_RESULTA_bus\(27);
\cv_1|Mult17~36\ <= \cv_1|Mult17~8_RESULTA_bus\(28);
\cv_1|Mult17~37\ <= \cv_1|Mult17~8_RESULTA_bus\(29);
\cv_1|Mult17~38\ <= \cv_1|Mult17~8_RESULTA_bus\(30);
\cv_1|Mult17~39\ <= \cv_1|Mult17~8_RESULTA_bus\(31);
\cv_1|Mult17~40\ <= \cv_1|Mult17~8_RESULTA_bus\(32);
\cv_1|Mult17~41\ <= \cv_1|Mult17~8_RESULTA_bus\(33);
\cv_1|Mult17~42\ <= \cv_1|Mult17~8_RESULTA_bus\(34);
\cv_1|Mult17~43\ <= \cv_1|Mult17~8_RESULTA_bus\(35);
\cv_1|Mult17~44\ <= \cv_1|Mult17~8_RESULTA_bus\(36);
\cv_1|Mult17~45\ <= \cv_1|Mult17~8_RESULTA_bus\(37);
\cv_1|Mult17~46\ <= \cv_1|Mult17~8_RESULTA_bus\(38);
\cv_1|Mult17~47\ <= \cv_1|Mult17~8_RESULTA_bus\(39);
\cv_1|Mult17~48\ <= \cv_1|Mult17~8_RESULTA_bus\(40);
\cv_1|Mult17~49\ <= \cv_1|Mult17~8_RESULTA_bus\(41);
\cv_1|Mult17~50\ <= \cv_1|Mult17~8_RESULTA_bus\(42);
\cv_1|Mult17~51\ <= \cv_1|Mult17~8_RESULTA_bus\(43);
\cv_1|Mult17~52\ <= \cv_1|Mult17~8_RESULTA_bus\(44);
\cv_1|Mult17~53\ <= \cv_1|Mult17~8_RESULTA_bus\(45);
\cv_1|Mult17~54\ <= \cv_1|Mult17~8_RESULTA_bus\(46);
\cv_1|Mult17~55\ <= \cv_1|Mult17~8_RESULTA_bus\(47);
\cv_1|Mult17~56\ <= \cv_1|Mult17~8_RESULTA_bus\(48);
\cv_1|Mult17~57\ <= \cv_1|Mult17~8_RESULTA_bus\(49);
\cv_1|Mult17~58\ <= \cv_1|Mult17~8_RESULTA_bus\(50);
\cv_1|Mult17~59\ <= \cv_1|Mult17~8_RESULTA_bus\(51);
\cv_1|Mult17~60\ <= \cv_1|Mult17~8_RESULTA_bus\(52);
\cv_1|Mult17~61\ <= \cv_1|Mult17~8_RESULTA_bus\(53);
\cv_1|Mult17~62\ <= \cv_1|Mult17~8_RESULTA_bus\(54);
\cv_1|Mult17~63\ <= \cv_1|Mult17~8_RESULTA_bus\(55);
\cv_1|Mult17~64\ <= \cv_1|Mult17~8_RESULTA_bus\(56);
\cv_1|Mult17~65\ <= \cv_1|Mult17~8_RESULTA_bus\(57);
\cv_1|Mult17~66\ <= \cv_1|Mult17~8_RESULTA_bus\(58);
\cv_1|Mult17~67\ <= \cv_1|Mult17~8_RESULTA_bus\(59);
\cv_1|Mult17~68\ <= \cv_1|Mult17~8_RESULTA_bus\(60);
\cv_1|Mult17~69\ <= \cv_1|Mult17~8_RESULTA_bus\(61);
\cv_1|Mult17~70\ <= \cv_1|Mult17~8_RESULTA_bus\(62);
\cv_1|Mult17~71\ <= \cv_1|Mult17~8_RESULTA_bus\(63);

\cv_1|Mult16~8_ACLR_bus\ <= (gnd & gnd);

\cv_1|Mult16~8_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\cv_1|Mult16~8_ENA_bus\ <= (vcc & \input_matrix[7][0]~4_combout\ & \input_filter[16][0]~1_combout\);

\cv_1|Mult16~8_AX_bus\ <= (\rom_img|altsyncram_component|auto_generated|q_b\(7) & \rom_img|altsyncram_component|auto_generated|q_b\(6) & \rom_img|altsyncram_component|auto_generated|q_b\(5) & \rom_img|altsyncram_component|auto_generated|q_b\(4) & 
\rom_img|altsyncram_component|auto_generated|q_b\(3) & \rom_img|altsyncram_component|auto_generated|q_b\(2) & \rom_img|altsyncram_component|auto_generated|q_b\(1) & \rom_img|altsyncram_component|auto_generated|q_b\(0));

\cv_1|Mult16~8_AY_bus\ <= (\rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & gnd & \rom_filter2|altsyncram_component|auto_generated|q_b\(7) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(6) & \rom_filter2|altsyncram_component|auto_generated|q_b\(5) & \rom_filter2|altsyncram_component|auto_generated|q_b\(4) & \rom_filter2|altsyncram_component|auto_generated|q_b\(3) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(2) & \rom_filter2|altsyncram_component|auto_generated|q_b\(1) & \rom_filter2|altsyncram_component|auto_generated|q_b\(0));

\cv_1|Mult16~8_resulta\ <= \cv_1|Mult16~8_RESULTA_bus\(0);
\cv_1|Mult16~9\ <= \cv_1|Mult16~8_RESULTA_bus\(1);
\cv_1|Mult16~10\ <= \cv_1|Mult16~8_RESULTA_bus\(2);
\cv_1|Mult16~11\ <= \cv_1|Mult16~8_RESULTA_bus\(3);
\cv_1|Mult16~12\ <= \cv_1|Mult16~8_RESULTA_bus\(4);
\cv_1|Mult16~13\ <= \cv_1|Mult16~8_RESULTA_bus\(5);
\cv_1|Mult16~14\ <= \cv_1|Mult16~8_RESULTA_bus\(6);
\cv_1|Mult16~15\ <= \cv_1|Mult16~8_RESULTA_bus\(7);
\cv_1|Mult16~16\ <= \cv_1|Mult16~8_RESULTA_bus\(8);
\cv_1|Mult16~17\ <= \cv_1|Mult16~8_RESULTA_bus\(9);
\cv_1|Mult16~18\ <= \cv_1|Mult16~8_RESULTA_bus\(10);
\cv_1|Mult16~19\ <= \cv_1|Mult16~8_RESULTA_bus\(11);
\cv_1|Mult16~20\ <= \cv_1|Mult16~8_RESULTA_bus\(12);
\cv_1|Mult16~21\ <= \cv_1|Mult16~8_RESULTA_bus\(13);
\cv_1|Mult16~22\ <= \cv_1|Mult16~8_RESULTA_bus\(14);
\cv_1|Mult16~23\ <= \cv_1|Mult16~8_RESULTA_bus\(15);
\cv_1|Mult16~24\ <= \cv_1|Mult16~8_RESULTA_bus\(16);
\cv_1|Mult16~25\ <= \cv_1|Mult16~8_RESULTA_bus\(17);
\cv_1|Mult16~26\ <= \cv_1|Mult16~8_RESULTA_bus\(18);
\cv_1|Mult16~27\ <= \cv_1|Mult16~8_RESULTA_bus\(19);
\cv_1|Mult16~28\ <= \cv_1|Mult16~8_RESULTA_bus\(20);
\cv_1|Mult16~29\ <= \cv_1|Mult16~8_RESULTA_bus\(21);
\cv_1|Mult16~30\ <= \cv_1|Mult16~8_RESULTA_bus\(22);
\cv_1|Mult16~31\ <= \cv_1|Mult16~8_RESULTA_bus\(23);
\cv_1|Mult16~32\ <= \cv_1|Mult16~8_RESULTA_bus\(24);
\cv_1|Mult16~33\ <= \cv_1|Mult16~8_RESULTA_bus\(25);
\cv_1|Mult16~34\ <= \cv_1|Mult16~8_RESULTA_bus\(26);
\cv_1|Mult16~35\ <= \cv_1|Mult16~8_RESULTA_bus\(27);
\cv_1|Mult16~36\ <= \cv_1|Mult16~8_RESULTA_bus\(28);
\cv_1|Mult16~37\ <= \cv_1|Mult16~8_RESULTA_bus\(29);
\cv_1|Mult16~38\ <= \cv_1|Mult16~8_RESULTA_bus\(30);
\cv_1|Mult16~39\ <= \cv_1|Mult16~8_RESULTA_bus\(31);
\cv_1|Mult16~40\ <= \cv_1|Mult16~8_RESULTA_bus\(32);
\cv_1|Mult16~41\ <= \cv_1|Mult16~8_RESULTA_bus\(33);
\cv_1|Mult16~42\ <= \cv_1|Mult16~8_RESULTA_bus\(34);
\cv_1|Mult16~43\ <= \cv_1|Mult16~8_RESULTA_bus\(35);
\cv_1|Mult16~44\ <= \cv_1|Mult16~8_RESULTA_bus\(36);
\cv_1|Mult16~45\ <= \cv_1|Mult16~8_RESULTA_bus\(37);
\cv_1|Mult16~46\ <= \cv_1|Mult16~8_RESULTA_bus\(38);
\cv_1|Mult16~47\ <= \cv_1|Mult16~8_RESULTA_bus\(39);
\cv_1|Mult16~48\ <= \cv_1|Mult16~8_RESULTA_bus\(40);
\cv_1|Mult16~49\ <= \cv_1|Mult16~8_RESULTA_bus\(41);
\cv_1|Mult16~50\ <= \cv_1|Mult16~8_RESULTA_bus\(42);
\cv_1|Mult16~51\ <= \cv_1|Mult16~8_RESULTA_bus\(43);
\cv_1|Mult16~52\ <= \cv_1|Mult16~8_RESULTA_bus\(44);
\cv_1|Mult16~53\ <= \cv_1|Mult16~8_RESULTA_bus\(45);
\cv_1|Mult16~54\ <= \cv_1|Mult16~8_RESULTA_bus\(46);
\cv_1|Mult16~55\ <= \cv_1|Mult16~8_RESULTA_bus\(47);
\cv_1|Mult16~56\ <= \cv_1|Mult16~8_RESULTA_bus\(48);
\cv_1|Mult16~57\ <= \cv_1|Mult16~8_RESULTA_bus\(49);
\cv_1|Mult16~58\ <= \cv_1|Mult16~8_RESULTA_bus\(50);
\cv_1|Mult16~59\ <= \cv_1|Mult16~8_RESULTA_bus\(51);
\cv_1|Mult16~60\ <= \cv_1|Mult16~8_RESULTA_bus\(52);
\cv_1|Mult16~61\ <= \cv_1|Mult16~8_RESULTA_bus\(53);
\cv_1|Mult16~62\ <= \cv_1|Mult16~8_RESULTA_bus\(54);
\cv_1|Mult16~63\ <= \cv_1|Mult16~8_RESULTA_bus\(55);
\cv_1|Mult16~64\ <= \cv_1|Mult16~8_RESULTA_bus\(56);
\cv_1|Mult16~65\ <= \cv_1|Mult16~8_RESULTA_bus\(57);
\cv_1|Mult16~66\ <= \cv_1|Mult16~8_RESULTA_bus\(58);
\cv_1|Mult16~67\ <= \cv_1|Mult16~8_RESULTA_bus\(59);
\cv_1|Mult16~68\ <= \cv_1|Mult16~8_RESULTA_bus\(60);
\cv_1|Mult16~69\ <= \cv_1|Mult16~8_RESULTA_bus\(61);
\cv_1|Mult16~70\ <= \cv_1|Mult16~8_RESULTA_bus\(62);
\cv_1|Mult16~71\ <= \cv_1|Mult16~8_RESULTA_bus\(63);

\cv_1|Mult15~8_ACLR_bus\ <= (gnd & gnd);

\cv_1|Mult15~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\cv_1|Mult15~8_ENA_bus\ <= (vcc & vcc & \input_matrix[7][0]~4_combout\);

\cv_1|Mult15~8_AX_bus\ <= (\rom_img|altsyncram_component|auto_generated|q_a\(7) & \rom_img|altsyncram_component|auto_generated|q_a\(6) & \rom_img|altsyncram_component|auto_generated|q_a\(5) & \rom_img|altsyncram_component|auto_generated|q_a\(4) & 
\rom_img|altsyncram_component|auto_generated|q_a\(3) & \rom_img|altsyncram_component|auto_generated|q_a\(2) & \rom_img|altsyncram_component|auto_generated|q_a\(1) & \rom_img|altsyncram_component|auto_generated|q_a\(0));

\cv_1|Mult15~8_AY_bus\ <= (\input_filter[15][8]~q\ & \input_filter[15][8]~q\ & \input_filter[15][8]~q\ & \input_filter[15][8]~q\ & \input_filter[15][8]~q\ & \input_filter[15][8]~q\ & \input_filter[15][8]~q\ & \input_filter[15][8]~q\ & 
\input_filter[15][8]~q\ & \input_filter[15][8]~q\ & gnd & \input_filter[15][7]~q\ & \input_filter[15][6]~q\ & \input_filter[15][5]~q\ & \input_filter[15][4]~q\ & \input_filter[15][3]~q\ & \input_filter[15][2]~q\ & \input_filter[15][1]~q\ & 
\input_filter[15][0]~q\);

\cv_1|Mult15~8_resulta\ <= \cv_1|Mult15~8_RESULTA_bus\(0);
\cv_1|Mult15~9\ <= \cv_1|Mult15~8_RESULTA_bus\(1);
\cv_1|Mult15~10\ <= \cv_1|Mult15~8_RESULTA_bus\(2);
\cv_1|Mult15~11\ <= \cv_1|Mult15~8_RESULTA_bus\(3);
\cv_1|Mult15~12\ <= \cv_1|Mult15~8_RESULTA_bus\(4);
\cv_1|Mult15~13\ <= \cv_1|Mult15~8_RESULTA_bus\(5);
\cv_1|Mult15~14\ <= \cv_1|Mult15~8_RESULTA_bus\(6);
\cv_1|Mult15~15\ <= \cv_1|Mult15~8_RESULTA_bus\(7);
\cv_1|Mult15~16\ <= \cv_1|Mult15~8_RESULTA_bus\(8);
\cv_1|Mult15~17\ <= \cv_1|Mult15~8_RESULTA_bus\(9);
\cv_1|Mult15~18\ <= \cv_1|Mult15~8_RESULTA_bus\(10);
\cv_1|Mult15~19\ <= \cv_1|Mult15~8_RESULTA_bus\(11);
\cv_1|Mult15~20\ <= \cv_1|Mult15~8_RESULTA_bus\(12);
\cv_1|Mult15~21\ <= \cv_1|Mult15~8_RESULTA_bus\(13);
\cv_1|Mult15~22\ <= \cv_1|Mult15~8_RESULTA_bus\(14);
\cv_1|Mult15~23\ <= \cv_1|Mult15~8_RESULTA_bus\(15);
\cv_1|Mult15~24\ <= \cv_1|Mult15~8_RESULTA_bus\(16);
\cv_1|Mult15~25\ <= \cv_1|Mult15~8_RESULTA_bus\(17);
\cv_1|Mult15~26\ <= \cv_1|Mult15~8_RESULTA_bus\(18);
\cv_1|Mult15~27\ <= \cv_1|Mult15~8_RESULTA_bus\(19);
\cv_1|Mult15~28\ <= \cv_1|Mult15~8_RESULTA_bus\(20);
\cv_1|Mult15~29\ <= \cv_1|Mult15~8_RESULTA_bus\(21);
\cv_1|Mult15~30\ <= \cv_1|Mult15~8_RESULTA_bus\(22);
\cv_1|Mult15~31\ <= \cv_1|Mult15~8_RESULTA_bus\(23);
\cv_1|Mult15~32\ <= \cv_1|Mult15~8_RESULTA_bus\(24);
\cv_1|Mult15~33\ <= \cv_1|Mult15~8_RESULTA_bus\(25);
\cv_1|Mult15~34\ <= \cv_1|Mult15~8_RESULTA_bus\(26);
\cv_1|Mult15~35\ <= \cv_1|Mult15~8_RESULTA_bus\(27);
\cv_1|Mult15~36\ <= \cv_1|Mult15~8_RESULTA_bus\(28);
\cv_1|Mult15~37\ <= \cv_1|Mult15~8_RESULTA_bus\(29);
\cv_1|Mult15~38\ <= \cv_1|Mult15~8_RESULTA_bus\(30);
\cv_1|Mult15~39\ <= \cv_1|Mult15~8_RESULTA_bus\(31);
\cv_1|Mult15~40\ <= \cv_1|Mult15~8_RESULTA_bus\(32);
\cv_1|Mult15~41\ <= \cv_1|Mult15~8_RESULTA_bus\(33);
\cv_1|Mult15~42\ <= \cv_1|Mult15~8_RESULTA_bus\(34);
\cv_1|Mult15~43\ <= \cv_1|Mult15~8_RESULTA_bus\(35);
\cv_1|Mult15~44\ <= \cv_1|Mult15~8_RESULTA_bus\(36);
\cv_1|Mult15~45\ <= \cv_1|Mult15~8_RESULTA_bus\(37);
\cv_1|Mult15~46\ <= \cv_1|Mult15~8_RESULTA_bus\(38);
\cv_1|Mult15~47\ <= \cv_1|Mult15~8_RESULTA_bus\(39);
\cv_1|Mult15~48\ <= \cv_1|Mult15~8_RESULTA_bus\(40);
\cv_1|Mult15~49\ <= \cv_1|Mult15~8_RESULTA_bus\(41);
\cv_1|Mult15~50\ <= \cv_1|Mult15~8_RESULTA_bus\(42);
\cv_1|Mult15~51\ <= \cv_1|Mult15~8_RESULTA_bus\(43);
\cv_1|Mult15~52\ <= \cv_1|Mult15~8_RESULTA_bus\(44);
\cv_1|Mult15~53\ <= \cv_1|Mult15~8_RESULTA_bus\(45);
\cv_1|Mult15~54\ <= \cv_1|Mult15~8_RESULTA_bus\(46);
\cv_1|Mult15~55\ <= \cv_1|Mult15~8_RESULTA_bus\(47);
\cv_1|Mult15~56\ <= \cv_1|Mult15~8_RESULTA_bus\(48);
\cv_1|Mult15~57\ <= \cv_1|Mult15~8_RESULTA_bus\(49);
\cv_1|Mult15~58\ <= \cv_1|Mult15~8_RESULTA_bus\(50);
\cv_1|Mult15~59\ <= \cv_1|Mult15~8_RESULTA_bus\(51);
\cv_1|Mult15~60\ <= \cv_1|Mult15~8_RESULTA_bus\(52);
\cv_1|Mult15~61\ <= \cv_1|Mult15~8_RESULTA_bus\(53);
\cv_1|Mult15~62\ <= \cv_1|Mult15~8_RESULTA_bus\(54);
\cv_1|Mult15~63\ <= \cv_1|Mult15~8_RESULTA_bus\(55);
\cv_1|Mult15~64\ <= \cv_1|Mult15~8_RESULTA_bus\(56);
\cv_1|Mult15~65\ <= \cv_1|Mult15~8_RESULTA_bus\(57);
\cv_1|Mult15~66\ <= \cv_1|Mult15~8_RESULTA_bus\(58);
\cv_1|Mult15~67\ <= \cv_1|Mult15~8_RESULTA_bus\(59);
\cv_1|Mult15~68\ <= \cv_1|Mult15~8_RESULTA_bus\(60);
\cv_1|Mult15~69\ <= \cv_1|Mult15~8_RESULTA_bus\(61);
\cv_1|Mult15~70\ <= \cv_1|Mult15~8_RESULTA_bus\(62);
\cv_1|Mult15~71\ <= \cv_1|Mult15~8_RESULTA_bus\(63);

\cv_1|Mult14~8_ACLR_bus\ <= (gnd & gnd);

\cv_1|Mult14~8_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\cv_1|Mult14~8_ENA_bus\ <= (vcc & \input_matrix[5][0]~5_combout\ & \input_filter[14][0]~3_combout\);

\cv_1|Mult14~8_AX_bus\ <= (\rom_img|altsyncram_component|auto_generated|q_b\(7) & \rom_img|altsyncram_component|auto_generated|q_b\(6) & \rom_img|altsyncram_component|auto_generated|q_b\(5) & \rom_img|altsyncram_component|auto_generated|q_b\(4) & 
\rom_img|altsyncram_component|auto_generated|q_b\(3) & \rom_img|altsyncram_component|auto_generated|q_b\(2) & \rom_img|altsyncram_component|auto_generated|q_b\(1) & \rom_img|altsyncram_component|auto_generated|q_b\(0));

\cv_1|Mult14~8_AY_bus\ <= (\rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & gnd & \rom_filter2|altsyncram_component|auto_generated|q_b\(7) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(6) & \rom_filter2|altsyncram_component|auto_generated|q_b\(5) & \rom_filter2|altsyncram_component|auto_generated|q_b\(4) & \rom_filter2|altsyncram_component|auto_generated|q_b\(3) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(2) & \rom_filter2|altsyncram_component|auto_generated|q_b\(1) & \rom_filter2|altsyncram_component|auto_generated|q_b\(0));

\cv_1|Mult14~8_resulta\ <= \cv_1|Mult14~8_RESULTA_bus\(0);
\cv_1|Mult14~9\ <= \cv_1|Mult14~8_RESULTA_bus\(1);
\cv_1|Mult14~10\ <= \cv_1|Mult14~8_RESULTA_bus\(2);
\cv_1|Mult14~11\ <= \cv_1|Mult14~8_RESULTA_bus\(3);
\cv_1|Mult14~12\ <= \cv_1|Mult14~8_RESULTA_bus\(4);
\cv_1|Mult14~13\ <= \cv_1|Mult14~8_RESULTA_bus\(5);
\cv_1|Mult14~14\ <= \cv_1|Mult14~8_RESULTA_bus\(6);
\cv_1|Mult14~15\ <= \cv_1|Mult14~8_RESULTA_bus\(7);
\cv_1|Mult14~16\ <= \cv_1|Mult14~8_RESULTA_bus\(8);
\cv_1|Mult14~17\ <= \cv_1|Mult14~8_RESULTA_bus\(9);
\cv_1|Mult14~18\ <= \cv_1|Mult14~8_RESULTA_bus\(10);
\cv_1|Mult14~19\ <= \cv_1|Mult14~8_RESULTA_bus\(11);
\cv_1|Mult14~20\ <= \cv_1|Mult14~8_RESULTA_bus\(12);
\cv_1|Mult14~21\ <= \cv_1|Mult14~8_RESULTA_bus\(13);
\cv_1|Mult14~22\ <= \cv_1|Mult14~8_RESULTA_bus\(14);
\cv_1|Mult14~23\ <= \cv_1|Mult14~8_RESULTA_bus\(15);
\cv_1|Mult14~24\ <= \cv_1|Mult14~8_RESULTA_bus\(16);
\cv_1|Mult14~25\ <= \cv_1|Mult14~8_RESULTA_bus\(17);
\cv_1|Mult14~26\ <= \cv_1|Mult14~8_RESULTA_bus\(18);
\cv_1|Mult14~27\ <= \cv_1|Mult14~8_RESULTA_bus\(19);
\cv_1|Mult14~28\ <= \cv_1|Mult14~8_RESULTA_bus\(20);
\cv_1|Mult14~29\ <= \cv_1|Mult14~8_RESULTA_bus\(21);
\cv_1|Mult14~30\ <= \cv_1|Mult14~8_RESULTA_bus\(22);
\cv_1|Mult14~31\ <= \cv_1|Mult14~8_RESULTA_bus\(23);
\cv_1|Mult14~32\ <= \cv_1|Mult14~8_RESULTA_bus\(24);
\cv_1|Mult14~33\ <= \cv_1|Mult14~8_RESULTA_bus\(25);
\cv_1|Mult14~34\ <= \cv_1|Mult14~8_RESULTA_bus\(26);
\cv_1|Mult14~35\ <= \cv_1|Mult14~8_RESULTA_bus\(27);
\cv_1|Mult14~36\ <= \cv_1|Mult14~8_RESULTA_bus\(28);
\cv_1|Mult14~37\ <= \cv_1|Mult14~8_RESULTA_bus\(29);
\cv_1|Mult14~38\ <= \cv_1|Mult14~8_RESULTA_bus\(30);
\cv_1|Mult14~39\ <= \cv_1|Mult14~8_RESULTA_bus\(31);
\cv_1|Mult14~40\ <= \cv_1|Mult14~8_RESULTA_bus\(32);
\cv_1|Mult14~41\ <= \cv_1|Mult14~8_RESULTA_bus\(33);
\cv_1|Mult14~42\ <= \cv_1|Mult14~8_RESULTA_bus\(34);
\cv_1|Mult14~43\ <= \cv_1|Mult14~8_RESULTA_bus\(35);
\cv_1|Mult14~44\ <= \cv_1|Mult14~8_RESULTA_bus\(36);
\cv_1|Mult14~45\ <= \cv_1|Mult14~8_RESULTA_bus\(37);
\cv_1|Mult14~46\ <= \cv_1|Mult14~8_RESULTA_bus\(38);
\cv_1|Mult14~47\ <= \cv_1|Mult14~8_RESULTA_bus\(39);
\cv_1|Mult14~48\ <= \cv_1|Mult14~8_RESULTA_bus\(40);
\cv_1|Mult14~49\ <= \cv_1|Mult14~8_RESULTA_bus\(41);
\cv_1|Mult14~50\ <= \cv_1|Mult14~8_RESULTA_bus\(42);
\cv_1|Mult14~51\ <= \cv_1|Mult14~8_RESULTA_bus\(43);
\cv_1|Mult14~52\ <= \cv_1|Mult14~8_RESULTA_bus\(44);
\cv_1|Mult14~53\ <= \cv_1|Mult14~8_RESULTA_bus\(45);
\cv_1|Mult14~54\ <= \cv_1|Mult14~8_RESULTA_bus\(46);
\cv_1|Mult14~55\ <= \cv_1|Mult14~8_RESULTA_bus\(47);
\cv_1|Mult14~56\ <= \cv_1|Mult14~8_RESULTA_bus\(48);
\cv_1|Mult14~57\ <= \cv_1|Mult14~8_RESULTA_bus\(49);
\cv_1|Mult14~58\ <= \cv_1|Mult14~8_RESULTA_bus\(50);
\cv_1|Mult14~59\ <= \cv_1|Mult14~8_RESULTA_bus\(51);
\cv_1|Mult14~60\ <= \cv_1|Mult14~8_RESULTA_bus\(52);
\cv_1|Mult14~61\ <= \cv_1|Mult14~8_RESULTA_bus\(53);
\cv_1|Mult14~62\ <= \cv_1|Mult14~8_RESULTA_bus\(54);
\cv_1|Mult14~63\ <= \cv_1|Mult14~8_RESULTA_bus\(55);
\cv_1|Mult14~64\ <= \cv_1|Mult14~8_RESULTA_bus\(56);
\cv_1|Mult14~65\ <= \cv_1|Mult14~8_RESULTA_bus\(57);
\cv_1|Mult14~66\ <= \cv_1|Mult14~8_RESULTA_bus\(58);
\cv_1|Mult14~67\ <= \cv_1|Mult14~8_RESULTA_bus\(59);
\cv_1|Mult14~68\ <= \cv_1|Mult14~8_RESULTA_bus\(60);
\cv_1|Mult14~69\ <= \cv_1|Mult14~8_RESULTA_bus\(61);
\cv_1|Mult14~70\ <= \cv_1|Mult14~8_RESULTA_bus\(62);
\cv_1|Mult14~71\ <= \cv_1|Mult14~8_RESULTA_bus\(63);

\cv_1|Mult13~8_ACLR_bus\ <= (gnd & gnd);

\cv_1|Mult13~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\cv_1|Mult13~8_ENA_bus\ <= (vcc & vcc & \input_matrix[5][0]~5_combout\);

\cv_1|Mult13~8_AX_bus\ <= (\rom_img|altsyncram_component|auto_generated|q_a\(7) & \rom_img|altsyncram_component|auto_generated|q_a\(6) & \rom_img|altsyncram_component|auto_generated|q_a\(5) & \rom_img|altsyncram_component|auto_generated|q_a\(4) & 
\rom_img|altsyncram_component|auto_generated|q_a\(3) & \rom_img|altsyncram_component|auto_generated|q_a\(2) & \rom_img|altsyncram_component|auto_generated|q_a\(1) & \rom_img|altsyncram_component|auto_generated|q_a\(0));

\cv_1|Mult13~8_AY_bus\ <= (\input_filter[13][8]~q\ & \input_filter[13][8]~q\ & \input_filter[13][8]~q\ & \input_filter[13][8]~q\ & \input_filter[13][8]~q\ & \input_filter[13][8]~q\ & \input_filter[13][8]~q\ & \input_filter[13][8]~q\ & 
\input_filter[13][8]~q\ & \input_filter[13][8]~q\ & gnd & \input_filter[13][7]~q\ & \input_filter[13][6]~q\ & \input_filter[13][5]~q\ & \input_filter[13][4]~q\ & \input_filter[13][3]~q\ & \input_filter[13][2]~q\ & \input_filter[13][1]~q\ & 
\input_filter[13][0]~q\);

\cv_1|Mult13~8_resulta\ <= \cv_1|Mult13~8_RESULTA_bus\(0);
\cv_1|Mult13~9\ <= \cv_1|Mult13~8_RESULTA_bus\(1);
\cv_1|Mult13~10\ <= \cv_1|Mult13~8_RESULTA_bus\(2);
\cv_1|Mult13~11\ <= \cv_1|Mult13~8_RESULTA_bus\(3);
\cv_1|Mult13~12\ <= \cv_1|Mult13~8_RESULTA_bus\(4);
\cv_1|Mult13~13\ <= \cv_1|Mult13~8_RESULTA_bus\(5);
\cv_1|Mult13~14\ <= \cv_1|Mult13~8_RESULTA_bus\(6);
\cv_1|Mult13~15\ <= \cv_1|Mult13~8_RESULTA_bus\(7);
\cv_1|Mult13~16\ <= \cv_1|Mult13~8_RESULTA_bus\(8);
\cv_1|Mult13~17\ <= \cv_1|Mult13~8_RESULTA_bus\(9);
\cv_1|Mult13~18\ <= \cv_1|Mult13~8_RESULTA_bus\(10);
\cv_1|Mult13~19\ <= \cv_1|Mult13~8_RESULTA_bus\(11);
\cv_1|Mult13~20\ <= \cv_1|Mult13~8_RESULTA_bus\(12);
\cv_1|Mult13~21\ <= \cv_1|Mult13~8_RESULTA_bus\(13);
\cv_1|Mult13~22\ <= \cv_1|Mult13~8_RESULTA_bus\(14);
\cv_1|Mult13~23\ <= \cv_1|Mult13~8_RESULTA_bus\(15);
\cv_1|Mult13~24\ <= \cv_1|Mult13~8_RESULTA_bus\(16);
\cv_1|Mult13~25\ <= \cv_1|Mult13~8_RESULTA_bus\(17);
\cv_1|Mult13~26\ <= \cv_1|Mult13~8_RESULTA_bus\(18);
\cv_1|Mult13~27\ <= \cv_1|Mult13~8_RESULTA_bus\(19);
\cv_1|Mult13~28\ <= \cv_1|Mult13~8_RESULTA_bus\(20);
\cv_1|Mult13~29\ <= \cv_1|Mult13~8_RESULTA_bus\(21);
\cv_1|Mult13~30\ <= \cv_1|Mult13~8_RESULTA_bus\(22);
\cv_1|Mult13~31\ <= \cv_1|Mult13~8_RESULTA_bus\(23);
\cv_1|Mult13~32\ <= \cv_1|Mult13~8_RESULTA_bus\(24);
\cv_1|Mult13~33\ <= \cv_1|Mult13~8_RESULTA_bus\(25);
\cv_1|Mult13~34\ <= \cv_1|Mult13~8_RESULTA_bus\(26);
\cv_1|Mult13~35\ <= \cv_1|Mult13~8_RESULTA_bus\(27);
\cv_1|Mult13~36\ <= \cv_1|Mult13~8_RESULTA_bus\(28);
\cv_1|Mult13~37\ <= \cv_1|Mult13~8_RESULTA_bus\(29);
\cv_1|Mult13~38\ <= \cv_1|Mult13~8_RESULTA_bus\(30);
\cv_1|Mult13~39\ <= \cv_1|Mult13~8_RESULTA_bus\(31);
\cv_1|Mult13~40\ <= \cv_1|Mult13~8_RESULTA_bus\(32);
\cv_1|Mult13~41\ <= \cv_1|Mult13~8_RESULTA_bus\(33);
\cv_1|Mult13~42\ <= \cv_1|Mult13~8_RESULTA_bus\(34);
\cv_1|Mult13~43\ <= \cv_1|Mult13~8_RESULTA_bus\(35);
\cv_1|Mult13~44\ <= \cv_1|Mult13~8_RESULTA_bus\(36);
\cv_1|Mult13~45\ <= \cv_1|Mult13~8_RESULTA_bus\(37);
\cv_1|Mult13~46\ <= \cv_1|Mult13~8_RESULTA_bus\(38);
\cv_1|Mult13~47\ <= \cv_1|Mult13~8_RESULTA_bus\(39);
\cv_1|Mult13~48\ <= \cv_1|Mult13~8_RESULTA_bus\(40);
\cv_1|Mult13~49\ <= \cv_1|Mult13~8_RESULTA_bus\(41);
\cv_1|Mult13~50\ <= \cv_1|Mult13~8_RESULTA_bus\(42);
\cv_1|Mult13~51\ <= \cv_1|Mult13~8_RESULTA_bus\(43);
\cv_1|Mult13~52\ <= \cv_1|Mult13~8_RESULTA_bus\(44);
\cv_1|Mult13~53\ <= \cv_1|Mult13~8_RESULTA_bus\(45);
\cv_1|Mult13~54\ <= \cv_1|Mult13~8_RESULTA_bus\(46);
\cv_1|Mult13~55\ <= \cv_1|Mult13~8_RESULTA_bus\(47);
\cv_1|Mult13~56\ <= \cv_1|Mult13~8_RESULTA_bus\(48);
\cv_1|Mult13~57\ <= \cv_1|Mult13~8_RESULTA_bus\(49);
\cv_1|Mult13~58\ <= \cv_1|Mult13~8_RESULTA_bus\(50);
\cv_1|Mult13~59\ <= \cv_1|Mult13~8_RESULTA_bus\(51);
\cv_1|Mult13~60\ <= \cv_1|Mult13~8_RESULTA_bus\(52);
\cv_1|Mult13~61\ <= \cv_1|Mult13~8_RESULTA_bus\(53);
\cv_1|Mult13~62\ <= \cv_1|Mult13~8_RESULTA_bus\(54);
\cv_1|Mult13~63\ <= \cv_1|Mult13~8_RESULTA_bus\(55);
\cv_1|Mult13~64\ <= \cv_1|Mult13~8_RESULTA_bus\(56);
\cv_1|Mult13~65\ <= \cv_1|Mult13~8_RESULTA_bus\(57);
\cv_1|Mult13~66\ <= \cv_1|Mult13~8_RESULTA_bus\(58);
\cv_1|Mult13~67\ <= \cv_1|Mult13~8_RESULTA_bus\(59);
\cv_1|Mult13~68\ <= \cv_1|Mult13~8_RESULTA_bus\(60);
\cv_1|Mult13~69\ <= \cv_1|Mult13~8_RESULTA_bus\(61);
\cv_1|Mult13~70\ <= \cv_1|Mult13~8_RESULTA_bus\(62);
\cv_1|Mult13~71\ <= \cv_1|Mult13~8_RESULTA_bus\(63);

\cv_1|Mult12~8_ACLR_bus\ <= (gnd & gnd);

\cv_1|Mult12~8_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\cv_1|Mult12~8_ENA_bus\ <= (vcc & \input_matrix[3][0]~6_combout\ & \input_filter[12][0]~5_combout\);

\cv_1|Mult12~8_AX_bus\ <= (\rom_img|altsyncram_component|auto_generated|q_b\(7) & \rom_img|altsyncram_component|auto_generated|q_b\(6) & \rom_img|altsyncram_component|auto_generated|q_b\(5) & \rom_img|altsyncram_component|auto_generated|q_b\(4) & 
\rom_img|altsyncram_component|auto_generated|q_b\(3) & \rom_img|altsyncram_component|auto_generated|q_b\(2) & \rom_img|altsyncram_component|auto_generated|q_b\(1) & \rom_img|altsyncram_component|auto_generated|q_b\(0));

\cv_1|Mult12~8_AY_bus\ <= (\rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & gnd & \rom_filter2|altsyncram_component|auto_generated|q_b\(7) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(6) & \rom_filter2|altsyncram_component|auto_generated|q_b\(5) & \rom_filter2|altsyncram_component|auto_generated|q_b\(4) & \rom_filter2|altsyncram_component|auto_generated|q_b\(3) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(2) & \rom_filter2|altsyncram_component|auto_generated|q_b\(1) & \rom_filter2|altsyncram_component|auto_generated|q_b\(0));

\cv_1|Mult12~8_resulta\ <= \cv_1|Mult12~8_RESULTA_bus\(0);
\cv_1|Mult12~9\ <= \cv_1|Mult12~8_RESULTA_bus\(1);
\cv_1|Mult12~10\ <= \cv_1|Mult12~8_RESULTA_bus\(2);
\cv_1|Mult12~11\ <= \cv_1|Mult12~8_RESULTA_bus\(3);
\cv_1|Mult12~12\ <= \cv_1|Mult12~8_RESULTA_bus\(4);
\cv_1|Mult12~13\ <= \cv_1|Mult12~8_RESULTA_bus\(5);
\cv_1|Mult12~14\ <= \cv_1|Mult12~8_RESULTA_bus\(6);
\cv_1|Mult12~15\ <= \cv_1|Mult12~8_RESULTA_bus\(7);
\cv_1|Mult12~16\ <= \cv_1|Mult12~8_RESULTA_bus\(8);
\cv_1|Mult12~17\ <= \cv_1|Mult12~8_RESULTA_bus\(9);
\cv_1|Mult12~18\ <= \cv_1|Mult12~8_RESULTA_bus\(10);
\cv_1|Mult12~19\ <= \cv_1|Mult12~8_RESULTA_bus\(11);
\cv_1|Mult12~20\ <= \cv_1|Mult12~8_RESULTA_bus\(12);
\cv_1|Mult12~21\ <= \cv_1|Mult12~8_RESULTA_bus\(13);
\cv_1|Mult12~22\ <= \cv_1|Mult12~8_RESULTA_bus\(14);
\cv_1|Mult12~23\ <= \cv_1|Mult12~8_RESULTA_bus\(15);
\cv_1|Mult12~24\ <= \cv_1|Mult12~8_RESULTA_bus\(16);
\cv_1|Mult12~25\ <= \cv_1|Mult12~8_RESULTA_bus\(17);
\cv_1|Mult12~26\ <= \cv_1|Mult12~8_RESULTA_bus\(18);
\cv_1|Mult12~27\ <= \cv_1|Mult12~8_RESULTA_bus\(19);
\cv_1|Mult12~28\ <= \cv_1|Mult12~8_RESULTA_bus\(20);
\cv_1|Mult12~29\ <= \cv_1|Mult12~8_RESULTA_bus\(21);
\cv_1|Mult12~30\ <= \cv_1|Mult12~8_RESULTA_bus\(22);
\cv_1|Mult12~31\ <= \cv_1|Mult12~8_RESULTA_bus\(23);
\cv_1|Mult12~32\ <= \cv_1|Mult12~8_RESULTA_bus\(24);
\cv_1|Mult12~33\ <= \cv_1|Mult12~8_RESULTA_bus\(25);
\cv_1|Mult12~34\ <= \cv_1|Mult12~8_RESULTA_bus\(26);
\cv_1|Mult12~35\ <= \cv_1|Mult12~8_RESULTA_bus\(27);
\cv_1|Mult12~36\ <= \cv_1|Mult12~8_RESULTA_bus\(28);
\cv_1|Mult12~37\ <= \cv_1|Mult12~8_RESULTA_bus\(29);
\cv_1|Mult12~38\ <= \cv_1|Mult12~8_RESULTA_bus\(30);
\cv_1|Mult12~39\ <= \cv_1|Mult12~8_RESULTA_bus\(31);
\cv_1|Mult12~40\ <= \cv_1|Mult12~8_RESULTA_bus\(32);
\cv_1|Mult12~41\ <= \cv_1|Mult12~8_RESULTA_bus\(33);
\cv_1|Mult12~42\ <= \cv_1|Mult12~8_RESULTA_bus\(34);
\cv_1|Mult12~43\ <= \cv_1|Mult12~8_RESULTA_bus\(35);
\cv_1|Mult12~44\ <= \cv_1|Mult12~8_RESULTA_bus\(36);
\cv_1|Mult12~45\ <= \cv_1|Mult12~8_RESULTA_bus\(37);
\cv_1|Mult12~46\ <= \cv_1|Mult12~8_RESULTA_bus\(38);
\cv_1|Mult12~47\ <= \cv_1|Mult12~8_RESULTA_bus\(39);
\cv_1|Mult12~48\ <= \cv_1|Mult12~8_RESULTA_bus\(40);
\cv_1|Mult12~49\ <= \cv_1|Mult12~8_RESULTA_bus\(41);
\cv_1|Mult12~50\ <= \cv_1|Mult12~8_RESULTA_bus\(42);
\cv_1|Mult12~51\ <= \cv_1|Mult12~8_RESULTA_bus\(43);
\cv_1|Mult12~52\ <= \cv_1|Mult12~8_RESULTA_bus\(44);
\cv_1|Mult12~53\ <= \cv_1|Mult12~8_RESULTA_bus\(45);
\cv_1|Mult12~54\ <= \cv_1|Mult12~8_RESULTA_bus\(46);
\cv_1|Mult12~55\ <= \cv_1|Mult12~8_RESULTA_bus\(47);
\cv_1|Mult12~56\ <= \cv_1|Mult12~8_RESULTA_bus\(48);
\cv_1|Mult12~57\ <= \cv_1|Mult12~8_RESULTA_bus\(49);
\cv_1|Mult12~58\ <= \cv_1|Mult12~8_RESULTA_bus\(50);
\cv_1|Mult12~59\ <= \cv_1|Mult12~8_RESULTA_bus\(51);
\cv_1|Mult12~60\ <= \cv_1|Mult12~8_RESULTA_bus\(52);
\cv_1|Mult12~61\ <= \cv_1|Mult12~8_RESULTA_bus\(53);
\cv_1|Mult12~62\ <= \cv_1|Mult12~8_RESULTA_bus\(54);
\cv_1|Mult12~63\ <= \cv_1|Mult12~8_RESULTA_bus\(55);
\cv_1|Mult12~64\ <= \cv_1|Mult12~8_RESULTA_bus\(56);
\cv_1|Mult12~65\ <= \cv_1|Mult12~8_RESULTA_bus\(57);
\cv_1|Mult12~66\ <= \cv_1|Mult12~8_RESULTA_bus\(58);
\cv_1|Mult12~67\ <= \cv_1|Mult12~8_RESULTA_bus\(59);
\cv_1|Mult12~68\ <= \cv_1|Mult12~8_RESULTA_bus\(60);
\cv_1|Mult12~69\ <= \cv_1|Mult12~8_RESULTA_bus\(61);
\cv_1|Mult12~70\ <= \cv_1|Mult12~8_RESULTA_bus\(62);
\cv_1|Mult12~71\ <= \cv_1|Mult12~8_RESULTA_bus\(63);

\cv_1|Mult11~8_ACLR_bus\ <= (gnd & gnd);

\cv_1|Mult11~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\cv_1|Mult11~8_ENA_bus\ <= (vcc & vcc & \input_matrix[3][0]~6_combout\);

\cv_1|Mult11~8_AX_bus\ <= (\rom_img|altsyncram_component|auto_generated|q_a\(7) & \rom_img|altsyncram_component|auto_generated|q_a\(6) & \rom_img|altsyncram_component|auto_generated|q_a\(5) & \rom_img|altsyncram_component|auto_generated|q_a\(4) & 
\rom_img|altsyncram_component|auto_generated|q_a\(3) & \rom_img|altsyncram_component|auto_generated|q_a\(2) & \rom_img|altsyncram_component|auto_generated|q_a\(1) & \rom_img|altsyncram_component|auto_generated|q_a\(0));

\cv_1|Mult11~8_AY_bus\ <= (\input_filter[11][8]~q\ & \input_filter[11][8]~q\ & \input_filter[11][8]~q\ & \input_filter[11][8]~q\ & \input_filter[11][8]~q\ & \input_filter[11][8]~q\ & \input_filter[11][8]~q\ & \input_filter[11][8]~q\ & 
\input_filter[11][8]~q\ & \input_filter[11][8]~q\ & gnd & \input_filter[11][7]~q\ & \input_filter[11][6]~q\ & \input_filter[11][5]~q\ & \input_filter[11][4]~q\ & \input_filter[11][3]~q\ & \input_filter[11][2]~q\ & \input_filter[11][1]~q\ & 
\input_filter[11][0]~q\);

\cv_1|Mult11~8_resulta\ <= \cv_1|Mult11~8_RESULTA_bus\(0);
\cv_1|Mult11~9\ <= \cv_1|Mult11~8_RESULTA_bus\(1);
\cv_1|Mult11~10\ <= \cv_1|Mult11~8_RESULTA_bus\(2);
\cv_1|Mult11~11\ <= \cv_1|Mult11~8_RESULTA_bus\(3);
\cv_1|Mult11~12\ <= \cv_1|Mult11~8_RESULTA_bus\(4);
\cv_1|Mult11~13\ <= \cv_1|Mult11~8_RESULTA_bus\(5);
\cv_1|Mult11~14\ <= \cv_1|Mult11~8_RESULTA_bus\(6);
\cv_1|Mult11~15\ <= \cv_1|Mult11~8_RESULTA_bus\(7);
\cv_1|Mult11~16\ <= \cv_1|Mult11~8_RESULTA_bus\(8);
\cv_1|Mult11~17\ <= \cv_1|Mult11~8_RESULTA_bus\(9);
\cv_1|Mult11~18\ <= \cv_1|Mult11~8_RESULTA_bus\(10);
\cv_1|Mult11~19\ <= \cv_1|Mult11~8_RESULTA_bus\(11);
\cv_1|Mult11~20\ <= \cv_1|Mult11~8_RESULTA_bus\(12);
\cv_1|Mult11~21\ <= \cv_1|Mult11~8_RESULTA_bus\(13);
\cv_1|Mult11~22\ <= \cv_1|Mult11~8_RESULTA_bus\(14);
\cv_1|Mult11~23\ <= \cv_1|Mult11~8_RESULTA_bus\(15);
\cv_1|Mult11~24\ <= \cv_1|Mult11~8_RESULTA_bus\(16);
\cv_1|Mult11~25\ <= \cv_1|Mult11~8_RESULTA_bus\(17);
\cv_1|Mult11~26\ <= \cv_1|Mult11~8_RESULTA_bus\(18);
\cv_1|Mult11~27\ <= \cv_1|Mult11~8_RESULTA_bus\(19);
\cv_1|Mult11~28\ <= \cv_1|Mult11~8_RESULTA_bus\(20);
\cv_1|Mult11~29\ <= \cv_1|Mult11~8_RESULTA_bus\(21);
\cv_1|Mult11~30\ <= \cv_1|Mult11~8_RESULTA_bus\(22);
\cv_1|Mult11~31\ <= \cv_1|Mult11~8_RESULTA_bus\(23);
\cv_1|Mult11~32\ <= \cv_1|Mult11~8_RESULTA_bus\(24);
\cv_1|Mult11~33\ <= \cv_1|Mult11~8_RESULTA_bus\(25);
\cv_1|Mult11~34\ <= \cv_1|Mult11~8_RESULTA_bus\(26);
\cv_1|Mult11~35\ <= \cv_1|Mult11~8_RESULTA_bus\(27);
\cv_1|Mult11~36\ <= \cv_1|Mult11~8_RESULTA_bus\(28);
\cv_1|Mult11~37\ <= \cv_1|Mult11~8_RESULTA_bus\(29);
\cv_1|Mult11~38\ <= \cv_1|Mult11~8_RESULTA_bus\(30);
\cv_1|Mult11~39\ <= \cv_1|Mult11~8_RESULTA_bus\(31);
\cv_1|Mult11~40\ <= \cv_1|Mult11~8_RESULTA_bus\(32);
\cv_1|Mult11~41\ <= \cv_1|Mult11~8_RESULTA_bus\(33);
\cv_1|Mult11~42\ <= \cv_1|Mult11~8_RESULTA_bus\(34);
\cv_1|Mult11~43\ <= \cv_1|Mult11~8_RESULTA_bus\(35);
\cv_1|Mult11~44\ <= \cv_1|Mult11~8_RESULTA_bus\(36);
\cv_1|Mult11~45\ <= \cv_1|Mult11~8_RESULTA_bus\(37);
\cv_1|Mult11~46\ <= \cv_1|Mult11~8_RESULTA_bus\(38);
\cv_1|Mult11~47\ <= \cv_1|Mult11~8_RESULTA_bus\(39);
\cv_1|Mult11~48\ <= \cv_1|Mult11~8_RESULTA_bus\(40);
\cv_1|Mult11~49\ <= \cv_1|Mult11~8_RESULTA_bus\(41);
\cv_1|Mult11~50\ <= \cv_1|Mult11~8_RESULTA_bus\(42);
\cv_1|Mult11~51\ <= \cv_1|Mult11~8_RESULTA_bus\(43);
\cv_1|Mult11~52\ <= \cv_1|Mult11~8_RESULTA_bus\(44);
\cv_1|Mult11~53\ <= \cv_1|Mult11~8_RESULTA_bus\(45);
\cv_1|Mult11~54\ <= \cv_1|Mult11~8_RESULTA_bus\(46);
\cv_1|Mult11~55\ <= \cv_1|Mult11~8_RESULTA_bus\(47);
\cv_1|Mult11~56\ <= \cv_1|Mult11~8_RESULTA_bus\(48);
\cv_1|Mult11~57\ <= \cv_1|Mult11~8_RESULTA_bus\(49);
\cv_1|Mult11~58\ <= \cv_1|Mult11~8_RESULTA_bus\(50);
\cv_1|Mult11~59\ <= \cv_1|Mult11~8_RESULTA_bus\(51);
\cv_1|Mult11~60\ <= \cv_1|Mult11~8_RESULTA_bus\(52);
\cv_1|Mult11~61\ <= \cv_1|Mult11~8_RESULTA_bus\(53);
\cv_1|Mult11~62\ <= \cv_1|Mult11~8_RESULTA_bus\(54);
\cv_1|Mult11~63\ <= \cv_1|Mult11~8_RESULTA_bus\(55);
\cv_1|Mult11~64\ <= \cv_1|Mult11~8_RESULTA_bus\(56);
\cv_1|Mult11~65\ <= \cv_1|Mult11~8_RESULTA_bus\(57);
\cv_1|Mult11~66\ <= \cv_1|Mult11~8_RESULTA_bus\(58);
\cv_1|Mult11~67\ <= \cv_1|Mult11~8_RESULTA_bus\(59);
\cv_1|Mult11~68\ <= \cv_1|Mult11~8_RESULTA_bus\(60);
\cv_1|Mult11~69\ <= \cv_1|Mult11~8_RESULTA_bus\(61);
\cv_1|Mult11~70\ <= \cv_1|Mult11~8_RESULTA_bus\(62);
\cv_1|Mult11~71\ <= \cv_1|Mult11~8_RESULTA_bus\(63);

\cv_1|Mult10~8_ACLR_bus\ <= (gnd & gnd);

\cv_1|Mult10~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\cv_1|Mult10~8_ENA_bus\ <= (vcc & vcc & \input_matrix[1][0]~7_combout\);

\cv_1|Mult10~8_AX_bus\ <= (\rom_img|altsyncram_component|auto_generated|q_b\(7) & \rom_img|altsyncram_component|auto_generated|q_b\(6) & \rom_img|altsyncram_component|auto_generated|q_b\(5) & \rom_img|altsyncram_component|auto_generated|q_b\(4) & 
\rom_img|altsyncram_component|auto_generated|q_b\(3) & \rom_img|altsyncram_component|auto_generated|q_b\(2) & \rom_img|altsyncram_component|auto_generated|q_b\(1) & \rom_img|altsyncram_component|auto_generated|q_b\(0));

\cv_1|Mult10~8_AY_bus\ <= (\input_filter[10][8]~q\ & \input_filter[10][8]~q\ & \input_filter[10][8]~q\ & \input_filter[10][8]~q\ & \input_filter[10][8]~q\ & \input_filter[10][8]~q\ & \input_filter[10][8]~q\ & \input_filter[10][8]~q\ & 
\input_filter[10][8]~q\ & \input_filter[10][8]~q\ & gnd & \input_filter[10][7]~q\ & \input_filter[10][6]~q\ & \input_filter[10][5]~q\ & \input_filter[10][4]~q\ & \input_filter[10][3]~q\ & \input_filter[10][2]~q\ & \input_filter[10][1]~q\ & 
\input_filter[10][0]~q\);

\cv_1|Mult10~8_resulta\ <= \cv_1|Mult10~8_RESULTA_bus\(0);
\cv_1|Mult10~9\ <= \cv_1|Mult10~8_RESULTA_bus\(1);
\cv_1|Mult10~10\ <= \cv_1|Mult10~8_RESULTA_bus\(2);
\cv_1|Mult10~11\ <= \cv_1|Mult10~8_RESULTA_bus\(3);
\cv_1|Mult10~12\ <= \cv_1|Mult10~8_RESULTA_bus\(4);
\cv_1|Mult10~13\ <= \cv_1|Mult10~8_RESULTA_bus\(5);
\cv_1|Mult10~14\ <= \cv_1|Mult10~8_RESULTA_bus\(6);
\cv_1|Mult10~15\ <= \cv_1|Mult10~8_RESULTA_bus\(7);
\cv_1|Mult10~16\ <= \cv_1|Mult10~8_RESULTA_bus\(8);
\cv_1|Mult10~17\ <= \cv_1|Mult10~8_RESULTA_bus\(9);
\cv_1|Mult10~18\ <= \cv_1|Mult10~8_RESULTA_bus\(10);
\cv_1|Mult10~19\ <= \cv_1|Mult10~8_RESULTA_bus\(11);
\cv_1|Mult10~20\ <= \cv_1|Mult10~8_RESULTA_bus\(12);
\cv_1|Mult10~21\ <= \cv_1|Mult10~8_RESULTA_bus\(13);
\cv_1|Mult10~22\ <= \cv_1|Mult10~8_RESULTA_bus\(14);
\cv_1|Mult10~23\ <= \cv_1|Mult10~8_RESULTA_bus\(15);
\cv_1|Mult10~24\ <= \cv_1|Mult10~8_RESULTA_bus\(16);
\cv_1|Mult10~25\ <= \cv_1|Mult10~8_RESULTA_bus\(17);
\cv_1|Mult10~26\ <= \cv_1|Mult10~8_RESULTA_bus\(18);
\cv_1|Mult10~27\ <= \cv_1|Mult10~8_RESULTA_bus\(19);
\cv_1|Mult10~28\ <= \cv_1|Mult10~8_RESULTA_bus\(20);
\cv_1|Mult10~29\ <= \cv_1|Mult10~8_RESULTA_bus\(21);
\cv_1|Mult10~30\ <= \cv_1|Mult10~8_RESULTA_bus\(22);
\cv_1|Mult10~31\ <= \cv_1|Mult10~8_RESULTA_bus\(23);
\cv_1|Mult10~32\ <= \cv_1|Mult10~8_RESULTA_bus\(24);
\cv_1|Mult10~33\ <= \cv_1|Mult10~8_RESULTA_bus\(25);
\cv_1|Mult10~34\ <= \cv_1|Mult10~8_RESULTA_bus\(26);
\cv_1|Mult10~35\ <= \cv_1|Mult10~8_RESULTA_bus\(27);
\cv_1|Mult10~36\ <= \cv_1|Mult10~8_RESULTA_bus\(28);
\cv_1|Mult10~37\ <= \cv_1|Mult10~8_RESULTA_bus\(29);
\cv_1|Mult10~38\ <= \cv_1|Mult10~8_RESULTA_bus\(30);
\cv_1|Mult10~39\ <= \cv_1|Mult10~8_RESULTA_bus\(31);
\cv_1|Mult10~40\ <= \cv_1|Mult10~8_RESULTA_bus\(32);
\cv_1|Mult10~41\ <= \cv_1|Mult10~8_RESULTA_bus\(33);
\cv_1|Mult10~42\ <= \cv_1|Mult10~8_RESULTA_bus\(34);
\cv_1|Mult10~43\ <= \cv_1|Mult10~8_RESULTA_bus\(35);
\cv_1|Mult10~44\ <= \cv_1|Mult10~8_RESULTA_bus\(36);
\cv_1|Mult10~45\ <= \cv_1|Mult10~8_RESULTA_bus\(37);
\cv_1|Mult10~46\ <= \cv_1|Mult10~8_RESULTA_bus\(38);
\cv_1|Mult10~47\ <= \cv_1|Mult10~8_RESULTA_bus\(39);
\cv_1|Mult10~48\ <= \cv_1|Mult10~8_RESULTA_bus\(40);
\cv_1|Mult10~49\ <= \cv_1|Mult10~8_RESULTA_bus\(41);
\cv_1|Mult10~50\ <= \cv_1|Mult10~8_RESULTA_bus\(42);
\cv_1|Mult10~51\ <= \cv_1|Mult10~8_RESULTA_bus\(43);
\cv_1|Mult10~52\ <= \cv_1|Mult10~8_RESULTA_bus\(44);
\cv_1|Mult10~53\ <= \cv_1|Mult10~8_RESULTA_bus\(45);
\cv_1|Mult10~54\ <= \cv_1|Mult10~8_RESULTA_bus\(46);
\cv_1|Mult10~55\ <= \cv_1|Mult10~8_RESULTA_bus\(47);
\cv_1|Mult10~56\ <= \cv_1|Mult10~8_RESULTA_bus\(48);
\cv_1|Mult10~57\ <= \cv_1|Mult10~8_RESULTA_bus\(49);
\cv_1|Mult10~58\ <= \cv_1|Mult10~8_RESULTA_bus\(50);
\cv_1|Mult10~59\ <= \cv_1|Mult10~8_RESULTA_bus\(51);
\cv_1|Mult10~60\ <= \cv_1|Mult10~8_RESULTA_bus\(52);
\cv_1|Mult10~61\ <= \cv_1|Mult10~8_RESULTA_bus\(53);
\cv_1|Mult10~62\ <= \cv_1|Mult10~8_RESULTA_bus\(54);
\cv_1|Mult10~63\ <= \cv_1|Mult10~8_RESULTA_bus\(55);
\cv_1|Mult10~64\ <= \cv_1|Mult10~8_RESULTA_bus\(56);
\cv_1|Mult10~65\ <= \cv_1|Mult10~8_RESULTA_bus\(57);
\cv_1|Mult10~66\ <= \cv_1|Mult10~8_RESULTA_bus\(58);
\cv_1|Mult10~67\ <= \cv_1|Mult10~8_RESULTA_bus\(59);
\cv_1|Mult10~68\ <= \cv_1|Mult10~8_RESULTA_bus\(60);
\cv_1|Mult10~69\ <= \cv_1|Mult10~8_RESULTA_bus\(61);
\cv_1|Mult10~70\ <= \cv_1|Mult10~8_RESULTA_bus\(62);
\cv_1|Mult10~71\ <= \cv_1|Mult10~8_RESULTA_bus\(63);

\cv_1|Mult9~8_ACLR_bus\ <= (gnd & gnd);

\cv_1|Mult9~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\cv_1|Mult9~8_ENA_bus\ <= (vcc & vcc & \input_matrix[1][0]~7_combout\);

\cv_1|Mult9~8_AX_bus\ <= (\rom_img|altsyncram_component|auto_generated|q_a\(7) & \rom_img|altsyncram_component|auto_generated|q_a\(6) & \rom_img|altsyncram_component|auto_generated|q_a\(5) & \rom_img|altsyncram_component|auto_generated|q_a\(4) & 
\rom_img|altsyncram_component|auto_generated|q_a\(3) & \rom_img|altsyncram_component|auto_generated|q_a\(2) & \rom_img|altsyncram_component|auto_generated|q_a\(1) & \rom_img|altsyncram_component|auto_generated|q_a\(0));

\cv_1|Mult9~8_AY_bus\ <= (\input_filter[9][8]~q\ & \input_filter[9][8]~q\ & \input_filter[9][8]~q\ & \input_filter[9][8]~q\ & \input_filter[9][8]~q\ & \input_filter[9][8]~q\ & \input_filter[9][8]~q\ & \input_filter[9][8]~q\ & \input_filter[9][8]~q\ & 
\input_filter[9][8]~q\ & gnd & \input_filter[9][7]~q\ & \input_filter[9][6]~q\ & \input_filter[9][5]~q\ & \input_filter[9][4]~q\ & \input_filter[9][3]~q\ & \input_filter[9][2]~q\ & \input_filter[9][1]~q\ & \input_filter[9][0]~q\);

\cv_1|Mult9~8_resulta\ <= \cv_1|Mult9~8_RESULTA_bus\(0);
\cv_1|Mult9~9\ <= \cv_1|Mult9~8_RESULTA_bus\(1);
\cv_1|Mult9~10\ <= \cv_1|Mult9~8_RESULTA_bus\(2);
\cv_1|Mult9~11\ <= \cv_1|Mult9~8_RESULTA_bus\(3);
\cv_1|Mult9~12\ <= \cv_1|Mult9~8_RESULTA_bus\(4);
\cv_1|Mult9~13\ <= \cv_1|Mult9~8_RESULTA_bus\(5);
\cv_1|Mult9~14\ <= \cv_1|Mult9~8_RESULTA_bus\(6);
\cv_1|Mult9~15\ <= \cv_1|Mult9~8_RESULTA_bus\(7);
\cv_1|Mult9~16\ <= \cv_1|Mult9~8_RESULTA_bus\(8);
\cv_1|Mult9~17\ <= \cv_1|Mult9~8_RESULTA_bus\(9);
\cv_1|Mult9~18\ <= \cv_1|Mult9~8_RESULTA_bus\(10);
\cv_1|Mult9~19\ <= \cv_1|Mult9~8_RESULTA_bus\(11);
\cv_1|Mult9~20\ <= \cv_1|Mult9~8_RESULTA_bus\(12);
\cv_1|Mult9~21\ <= \cv_1|Mult9~8_RESULTA_bus\(13);
\cv_1|Mult9~22\ <= \cv_1|Mult9~8_RESULTA_bus\(14);
\cv_1|Mult9~23\ <= \cv_1|Mult9~8_RESULTA_bus\(15);
\cv_1|Mult9~24\ <= \cv_1|Mult9~8_RESULTA_bus\(16);
\cv_1|Mult9~25\ <= \cv_1|Mult9~8_RESULTA_bus\(17);
\cv_1|Mult9~26\ <= \cv_1|Mult9~8_RESULTA_bus\(18);
\cv_1|Mult9~27\ <= \cv_1|Mult9~8_RESULTA_bus\(19);
\cv_1|Mult9~28\ <= \cv_1|Mult9~8_RESULTA_bus\(20);
\cv_1|Mult9~29\ <= \cv_1|Mult9~8_RESULTA_bus\(21);
\cv_1|Mult9~30\ <= \cv_1|Mult9~8_RESULTA_bus\(22);
\cv_1|Mult9~31\ <= \cv_1|Mult9~8_RESULTA_bus\(23);
\cv_1|Mult9~32\ <= \cv_1|Mult9~8_RESULTA_bus\(24);
\cv_1|Mult9~33\ <= \cv_1|Mult9~8_RESULTA_bus\(25);
\cv_1|Mult9~34\ <= \cv_1|Mult9~8_RESULTA_bus\(26);
\cv_1|Mult9~35\ <= \cv_1|Mult9~8_RESULTA_bus\(27);
\cv_1|Mult9~36\ <= \cv_1|Mult9~8_RESULTA_bus\(28);
\cv_1|Mult9~37\ <= \cv_1|Mult9~8_RESULTA_bus\(29);
\cv_1|Mult9~38\ <= \cv_1|Mult9~8_RESULTA_bus\(30);
\cv_1|Mult9~39\ <= \cv_1|Mult9~8_RESULTA_bus\(31);
\cv_1|Mult9~40\ <= \cv_1|Mult9~8_RESULTA_bus\(32);
\cv_1|Mult9~41\ <= \cv_1|Mult9~8_RESULTA_bus\(33);
\cv_1|Mult9~42\ <= \cv_1|Mult9~8_RESULTA_bus\(34);
\cv_1|Mult9~43\ <= \cv_1|Mult9~8_RESULTA_bus\(35);
\cv_1|Mult9~44\ <= \cv_1|Mult9~8_RESULTA_bus\(36);
\cv_1|Mult9~45\ <= \cv_1|Mult9~8_RESULTA_bus\(37);
\cv_1|Mult9~46\ <= \cv_1|Mult9~8_RESULTA_bus\(38);
\cv_1|Mult9~47\ <= \cv_1|Mult9~8_RESULTA_bus\(39);
\cv_1|Mult9~48\ <= \cv_1|Mult9~8_RESULTA_bus\(40);
\cv_1|Mult9~49\ <= \cv_1|Mult9~8_RESULTA_bus\(41);
\cv_1|Mult9~50\ <= \cv_1|Mult9~8_RESULTA_bus\(42);
\cv_1|Mult9~51\ <= \cv_1|Mult9~8_RESULTA_bus\(43);
\cv_1|Mult9~52\ <= \cv_1|Mult9~8_RESULTA_bus\(44);
\cv_1|Mult9~53\ <= \cv_1|Mult9~8_RESULTA_bus\(45);
\cv_1|Mult9~54\ <= \cv_1|Mult9~8_RESULTA_bus\(46);
\cv_1|Mult9~55\ <= \cv_1|Mult9~8_RESULTA_bus\(47);
\cv_1|Mult9~56\ <= \cv_1|Mult9~8_RESULTA_bus\(48);
\cv_1|Mult9~57\ <= \cv_1|Mult9~8_RESULTA_bus\(49);
\cv_1|Mult9~58\ <= \cv_1|Mult9~8_RESULTA_bus\(50);
\cv_1|Mult9~59\ <= \cv_1|Mult9~8_RESULTA_bus\(51);
\cv_1|Mult9~60\ <= \cv_1|Mult9~8_RESULTA_bus\(52);
\cv_1|Mult9~61\ <= \cv_1|Mult9~8_RESULTA_bus\(53);
\cv_1|Mult9~62\ <= \cv_1|Mult9~8_RESULTA_bus\(54);
\cv_1|Mult9~63\ <= \cv_1|Mult9~8_RESULTA_bus\(55);
\cv_1|Mult9~64\ <= \cv_1|Mult9~8_RESULTA_bus\(56);
\cv_1|Mult9~65\ <= \cv_1|Mult9~8_RESULTA_bus\(57);
\cv_1|Mult9~66\ <= \cv_1|Mult9~8_RESULTA_bus\(58);
\cv_1|Mult9~67\ <= \cv_1|Mult9~8_RESULTA_bus\(59);
\cv_1|Mult9~68\ <= \cv_1|Mult9~8_RESULTA_bus\(60);
\cv_1|Mult9~69\ <= \cv_1|Mult9~8_RESULTA_bus\(61);
\cv_1|Mult9~70\ <= \cv_1|Mult9~8_RESULTA_bus\(62);
\cv_1|Mult9~71\ <= \cv_1|Mult9~8_RESULTA_bus\(63);

\cv_1|Mult8~8_ACLR_bus\ <= (gnd & gnd);

\cv_1|Mult8~8_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\cv_1|Mult8~8_ENA_bus\ <= (vcc & \input_matrix[8][0]~3_combout\ & \input_filter[8][0]~10_combout\);

\cv_1|Mult8~8_AX_bus\ <= (\rom_img|altsyncram_component|auto_generated|q_a\(7) & \rom_img|altsyncram_component|auto_generated|q_a\(6) & \rom_img|altsyncram_component|auto_generated|q_a\(5) & \rom_img|altsyncram_component|auto_generated|q_a\(4) & 
\rom_img|altsyncram_component|auto_generated|q_a\(3) & \rom_img|altsyncram_component|auto_generated|q_a\(2) & \rom_img|altsyncram_component|auto_generated|q_a\(1) & \rom_img|altsyncram_component|auto_generated|q_a\(0));

\cv_1|Mult8~8_AY_bus\ <= (\rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & gnd & \rom_filter1|altsyncram_component|auto_generated|q_a\(7) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(6) & \rom_filter1|altsyncram_component|auto_generated|q_a\(5) & \rom_filter1|altsyncram_component|auto_generated|q_a\(4) & \rom_filter1|altsyncram_component|auto_generated|q_a\(3) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(2) & \rom_filter1|altsyncram_component|auto_generated|q_a\(1) & \rom_filter1|altsyncram_component|auto_generated|q_a\(0));

\cv_1|Mult8~8_resulta\ <= \cv_1|Mult8~8_RESULTA_bus\(0);
\cv_1|Mult8~9\ <= \cv_1|Mult8~8_RESULTA_bus\(1);
\cv_1|Mult8~10\ <= \cv_1|Mult8~8_RESULTA_bus\(2);
\cv_1|Mult8~11\ <= \cv_1|Mult8~8_RESULTA_bus\(3);
\cv_1|Mult8~12\ <= \cv_1|Mult8~8_RESULTA_bus\(4);
\cv_1|Mult8~13\ <= \cv_1|Mult8~8_RESULTA_bus\(5);
\cv_1|Mult8~14\ <= \cv_1|Mult8~8_RESULTA_bus\(6);
\cv_1|Mult8~15\ <= \cv_1|Mult8~8_RESULTA_bus\(7);
\cv_1|Mult8~16\ <= \cv_1|Mult8~8_RESULTA_bus\(8);
\cv_1|Mult8~17\ <= \cv_1|Mult8~8_RESULTA_bus\(9);
\cv_1|Mult8~18\ <= \cv_1|Mult8~8_RESULTA_bus\(10);
\cv_1|Mult8~19\ <= \cv_1|Mult8~8_RESULTA_bus\(11);
\cv_1|Mult8~20\ <= \cv_1|Mult8~8_RESULTA_bus\(12);
\cv_1|Mult8~21\ <= \cv_1|Mult8~8_RESULTA_bus\(13);
\cv_1|Mult8~22\ <= \cv_1|Mult8~8_RESULTA_bus\(14);
\cv_1|Mult8~23\ <= \cv_1|Mult8~8_RESULTA_bus\(15);
\cv_1|Mult8~24\ <= \cv_1|Mult8~8_RESULTA_bus\(16);
\cv_1|Mult8~25\ <= \cv_1|Mult8~8_RESULTA_bus\(17);
\cv_1|Mult8~26\ <= \cv_1|Mult8~8_RESULTA_bus\(18);
\cv_1|Mult8~27\ <= \cv_1|Mult8~8_RESULTA_bus\(19);
\cv_1|Mult8~28\ <= \cv_1|Mult8~8_RESULTA_bus\(20);
\cv_1|Mult8~29\ <= \cv_1|Mult8~8_RESULTA_bus\(21);
\cv_1|Mult8~30\ <= \cv_1|Mult8~8_RESULTA_bus\(22);
\cv_1|Mult8~31\ <= \cv_1|Mult8~8_RESULTA_bus\(23);
\cv_1|Mult8~32\ <= \cv_1|Mult8~8_RESULTA_bus\(24);
\cv_1|Mult8~33\ <= \cv_1|Mult8~8_RESULTA_bus\(25);
\cv_1|Mult8~34\ <= \cv_1|Mult8~8_RESULTA_bus\(26);
\cv_1|Mult8~35\ <= \cv_1|Mult8~8_RESULTA_bus\(27);
\cv_1|Mult8~36\ <= \cv_1|Mult8~8_RESULTA_bus\(28);
\cv_1|Mult8~37\ <= \cv_1|Mult8~8_RESULTA_bus\(29);
\cv_1|Mult8~38\ <= \cv_1|Mult8~8_RESULTA_bus\(30);
\cv_1|Mult8~39\ <= \cv_1|Mult8~8_RESULTA_bus\(31);
\cv_1|Mult8~40\ <= \cv_1|Mult8~8_RESULTA_bus\(32);
\cv_1|Mult8~41\ <= \cv_1|Mult8~8_RESULTA_bus\(33);
\cv_1|Mult8~42\ <= \cv_1|Mult8~8_RESULTA_bus\(34);
\cv_1|Mult8~43\ <= \cv_1|Mult8~8_RESULTA_bus\(35);
\cv_1|Mult8~44\ <= \cv_1|Mult8~8_RESULTA_bus\(36);
\cv_1|Mult8~45\ <= \cv_1|Mult8~8_RESULTA_bus\(37);
\cv_1|Mult8~46\ <= \cv_1|Mult8~8_RESULTA_bus\(38);
\cv_1|Mult8~47\ <= \cv_1|Mult8~8_RESULTA_bus\(39);
\cv_1|Mult8~48\ <= \cv_1|Mult8~8_RESULTA_bus\(40);
\cv_1|Mult8~49\ <= \cv_1|Mult8~8_RESULTA_bus\(41);
\cv_1|Mult8~50\ <= \cv_1|Mult8~8_RESULTA_bus\(42);
\cv_1|Mult8~51\ <= \cv_1|Mult8~8_RESULTA_bus\(43);
\cv_1|Mult8~52\ <= \cv_1|Mult8~8_RESULTA_bus\(44);
\cv_1|Mult8~53\ <= \cv_1|Mult8~8_RESULTA_bus\(45);
\cv_1|Mult8~54\ <= \cv_1|Mult8~8_RESULTA_bus\(46);
\cv_1|Mult8~55\ <= \cv_1|Mult8~8_RESULTA_bus\(47);
\cv_1|Mult8~56\ <= \cv_1|Mult8~8_RESULTA_bus\(48);
\cv_1|Mult8~57\ <= \cv_1|Mult8~8_RESULTA_bus\(49);
\cv_1|Mult8~58\ <= \cv_1|Mult8~8_RESULTA_bus\(50);
\cv_1|Mult8~59\ <= \cv_1|Mult8~8_RESULTA_bus\(51);
\cv_1|Mult8~60\ <= \cv_1|Mult8~8_RESULTA_bus\(52);
\cv_1|Mult8~61\ <= \cv_1|Mult8~8_RESULTA_bus\(53);
\cv_1|Mult8~62\ <= \cv_1|Mult8~8_RESULTA_bus\(54);
\cv_1|Mult8~63\ <= \cv_1|Mult8~8_RESULTA_bus\(55);
\cv_1|Mult8~64\ <= \cv_1|Mult8~8_RESULTA_bus\(56);
\cv_1|Mult8~65\ <= \cv_1|Mult8~8_RESULTA_bus\(57);
\cv_1|Mult8~66\ <= \cv_1|Mult8~8_RESULTA_bus\(58);
\cv_1|Mult8~67\ <= \cv_1|Mult8~8_RESULTA_bus\(59);
\cv_1|Mult8~68\ <= \cv_1|Mult8~8_RESULTA_bus\(60);
\cv_1|Mult8~69\ <= \cv_1|Mult8~8_RESULTA_bus\(61);
\cv_1|Mult8~70\ <= \cv_1|Mult8~8_RESULTA_bus\(62);
\cv_1|Mult8~71\ <= \cv_1|Mult8~8_RESULTA_bus\(63);

\cv_1|Mult7~8_ACLR_bus\ <= (gnd & gnd);

\cv_1|Mult7~8_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\cv_1|Mult7~8_ENA_bus\ <= (vcc & \input_matrix[7][0]~4_combout\ & \input_filter[16][0]~1_combout\);

\cv_1|Mult7~8_AX_bus\ <= (\rom_img|altsyncram_component|auto_generated|q_b\(7) & \rom_img|altsyncram_component|auto_generated|q_b\(6) & \rom_img|altsyncram_component|auto_generated|q_b\(5) & \rom_img|altsyncram_component|auto_generated|q_b\(4) & 
\rom_img|altsyncram_component|auto_generated|q_b\(3) & \rom_img|altsyncram_component|auto_generated|q_b\(2) & \rom_img|altsyncram_component|auto_generated|q_b\(1) & \rom_img|altsyncram_component|auto_generated|q_b\(0));

\cv_1|Mult7~8_AY_bus\ <= (\rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & gnd & \rom_filter2|altsyncram_component|auto_generated|q_b\(7) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(6) & \rom_filter2|altsyncram_component|auto_generated|q_b\(5) & \rom_filter2|altsyncram_component|auto_generated|q_b\(4) & \rom_filter2|altsyncram_component|auto_generated|q_b\(3) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(2) & \rom_filter2|altsyncram_component|auto_generated|q_b\(1) & \rom_filter2|altsyncram_component|auto_generated|q_b\(0));

\cv_1|Mult7~8_resulta\ <= \cv_1|Mult7~8_RESULTA_bus\(0);
\cv_1|Mult7~9\ <= \cv_1|Mult7~8_RESULTA_bus\(1);
\cv_1|Mult7~10\ <= \cv_1|Mult7~8_RESULTA_bus\(2);
\cv_1|Mult7~11\ <= \cv_1|Mult7~8_RESULTA_bus\(3);
\cv_1|Mult7~12\ <= \cv_1|Mult7~8_RESULTA_bus\(4);
\cv_1|Mult7~13\ <= \cv_1|Mult7~8_RESULTA_bus\(5);
\cv_1|Mult7~14\ <= \cv_1|Mult7~8_RESULTA_bus\(6);
\cv_1|Mult7~15\ <= \cv_1|Mult7~8_RESULTA_bus\(7);
\cv_1|Mult7~16\ <= \cv_1|Mult7~8_RESULTA_bus\(8);
\cv_1|Mult7~17\ <= \cv_1|Mult7~8_RESULTA_bus\(9);
\cv_1|Mult7~18\ <= \cv_1|Mult7~8_RESULTA_bus\(10);
\cv_1|Mult7~19\ <= \cv_1|Mult7~8_RESULTA_bus\(11);
\cv_1|Mult7~20\ <= \cv_1|Mult7~8_RESULTA_bus\(12);
\cv_1|Mult7~21\ <= \cv_1|Mult7~8_RESULTA_bus\(13);
\cv_1|Mult7~22\ <= \cv_1|Mult7~8_RESULTA_bus\(14);
\cv_1|Mult7~23\ <= \cv_1|Mult7~8_RESULTA_bus\(15);
\cv_1|Mult7~24\ <= \cv_1|Mult7~8_RESULTA_bus\(16);
\cv_1|Mult7~25\ <= \cv_1|Mult7~8_RESULTA_bus\(17);
\cv_1|Mult7~26\ <= \cv_1|Mult7~8_RESULTA_bus\(18);
\cv_1|Mult7~27\ <= \cv_1|Mult7~8_RESULTA_bus\(19);
\cv_1|Mult7~28\ <= \cv_1|Mult7~8_RESULTA_bus\(20);
\cv_1|Mult7~29\ <= \cv_1|Mult7~8_RESULTA_bus\(21);
\cv_1|Mult7~30\ <= \cv_1|Mult7~8_RESULTA_bus\(22);
\cv_1|Mult7~31\ <= \cv_1|Mult7~8_RESULTA_bus\(23);
\cv_1|Mult7~32\ <= \cv_1|Mult7~8_RESULTA_bus\(24);
\cv_1|Mult7~33\ <= \cv_1|Mult7~8_RESULTA_bus\(25);
\cv_1|Mult7~34\ <= \cv_1|Mult7~8_RESULTA_bus\(26);
\cv_1|Mult7~35\ <= \cv_1|Mult7~8_RESULTA_bus\(27);
\cv_1|Mult7~36\ <= \cv_1|Mult7~8_RESULTA_bus\(28);
\cv_1|Mult7~37\ <= \cv_1|Mult7~8_RESULTA_bus\(29);
\cv_1|Mult7~38\ <= \cv_1|Mult7~8_RESULTA_bus\(30);
\cv_1|Mult7~39\ <= \cv_1|Mult7~8_RESULTA_bus\(31);
\cv_1|Mult7~40\ <= \cv_1|Mult7~8_RESULTA_bus\(32);
\cv_1|Mult7~41\ <= \cv_1|Mult7~8_RESULTA_bus\(33);
\cv_1|Mult7~42\ <= \cv_1|Mult7~8_RESULTA_bus\(34);
\cv_1|Mult7~43\ <= \cv_1|Mult7~8_RESULTA_bus\(35);
\cv_1|Mult7~44\ <= \cv_1|Mult7~8_RESULTA_bus\(36);
\cv_1|Mult7~45\ <= \cv_1|Mult7~8_RESULTA_bus\(37);
\cv_1|Mult7~46\ <= \cv_1|Mult7~8_RESULTA_bus\(38);
\cv_1|Mult7~47\ <= \cv_1|Mult7~8_RESULTA_bus\(39);
\cv_1|Mult7~48\ <= \cv_1|Mult7~8_RESULTA_bus\(40);
\cv_1|Mult7~49\ <= \cv_1|Mult7~8_RESULTA_bus\(41);
\cv_1|Mult7~50\ <= \cv_1|Mult7~8_RESULTA_bus\(42);
\cv_1|Mult7~51\ <= \cv_1|Mult7~8_RESULTA_bus\(43);
\cv_1|Mult7~52\ <= \cv_1|Mult7~8_RESULTA_bus\(44);
\cv_1|Mult7~53\ <= \cv_1|Mult7~8_RESULTA_bus\(45);
\cv_1|Mult7~54\ <= \cv_1|Mult7~8_RESULTA_bus\(46);
\cv_1|Mult7~55\ <= \cv_1|Mult7~8_RESULTA_bus\(47);
\cv_1|Mult7~56\ <= \cv_1|Mult7~8_RESULTA_bus\(48);
\cv_1|Mult7~57\ <= \cv_1|Mult7~8_RESULTA_bus\(49);
\cv_1|Mult7~58\ <= \cv_1|Mult7~8_RESULTA_bus\(50);
\cv_1|Mult7~59\ <= \cv_1|Mult7~8_RESULTA_bus\(51);
\cv_1|Mult7~60\ <= \cv_1|Mult7~8_RESULTA_bus\(52);
\cv_1|Mult7~61\ <= \cv_1|Mult7~8_RESULTA_bus\(53);
\cv_1|Mult7~62\ <= \cv_1|Mult7~8_RESULTA_bus\(54);
\cv_1|Mult7~63\ <= \cv_1|Mult7~8_RESULTA_bus\(55);
\cv_1|Mult7~64\ <= \cv_1|Mult7~8_RESULTA_bus\(56);
\cv_1|Mult7~65\ <= \cv_1|Mult7~8_RESULTA_bus\(57);
\cv_1|Mult7~66\ <= \cv_1|Mult7~8_RESULTA_bus\(58);
\cv_1|Mult7~67\ <= \cv_1|Mult7~8_RESULTA_bus\(59);
\cv_1|Mult7~68\ <= \cv_1|Mult7~8_RESULTA_bus\(60);
\cv_1|Mult7~69\ <= \cv_1|Mult7~8_RESULTA_bus\(61);
\cv_1|Mult7~70\ <= \cv_1|Mult7~8_RESULTA_bus\(62);
\cv_1|Mult7~71\ <= \cv_1|Mult7~8_RESULTA_bus\(63);

\cv_1|Mult6~8_ACLR_bus\ <= (gnd & gnd);

\cv_1|Mult6~8_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\cv_1|Mult6~8_ENA_bus\ <= (vcc & \input_matrix[7][0]~4_combout\ & \input_filter[16][0]~1_combout\);

\cv_1|Mult6~8_AX_bus\ <= (\rom_img|altsyncram_component|auto_generated|q_a\(7) & \rom_img|altsyncram_component|auto_generated|q_a\(6) & \rom_img|altsyncram_component|auto_generated|q_a\(5) & \rom_img|altsyncram_component|auto_generated|q_a\(4) & 
\rom_img|altsyncram_component|auto_generated|q_a\(3) & \rom_img|altsyncram_component|auto_generated|q_a\(2) & \rom_img|altsyncram_component|auto_generated|q_a\(1) & \rom_img|altsyncram_component|auto_generated|q_a\(0));

\cv_1|Mult6~8_AY_bus\ <= (\rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & gnd & \rom_filter1|altsyncram_component|auto_generated|q_a\(7) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(6) & \rom_filter1|altsyncram_component|auto_generated|q_a\(5) & \rom_filter1|altsyncram_component|auto_generated|q_a\(4) & \rom_filter1|altsyncram_component|auto_generated|q_a\(3) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(2) & \rom_filter1|altsyncram_component|auto_generated|q_a\(1) & \rom_filter1|altsyncram_component|auto_generated|q_a\(0));

\cv_1|Mult6~8_resulta\ <= \cv_1|Mult6~8_RESULTA_bus\(0);
\cv_1|Mult6~9\ <= \cv_1|Mult6~8_RESULTA_bus\(1);
\cv_1|Mult6~10\ <= \cv_1|Mult6~8_RESULTA_bus\(2);
\cv_1|Mult6~11\ <= \cv_1|Mult6~8_RESULTA_bus\(3);
\cv_1|Mult6~12\ <= \cv_1|Mult6~8_RESULTA_bus\(4);
\cv_1|Mult6~13\ <= \cv_1|Mult6~8_RESULTA_bus\(5);
\cv_1|Mult6~14\ <= \cv_1|Mult6~8_RESULTA_bus\(6);
\cv_1|Mult6~15\ <= \cv_1|Mult6~8_RESULTA_bus\(7);
\cv_1|Mult6~16\ <= \cv_1|Mult6~8_RESULTA_bus\(8);
\cv_1|Mult6~17\ <= \cv_1|Mult6~8_RESULTA_bus\(9);
\cv_1|Mult6~18\ <= \cv_1|Mult6~8_RESULTA_bus\(10);
\cv_1|Mult6~19\ <= \cv_1|Mult6~8_RESULTA_bus\(11);
\cv_1|Mult6~20\ <= \cv_1|Mult6~8_RESULTA_bus\(12);
\cv_1|Mult6~21\ <= \cv_1|Mult6~8_RESULTA_bus\(13);
\cv_1|Mult6~22\ <= \cv_1|Mult6~8_RESULTA_bus\(14);
\cv_1|Mult6~23\ <= \cv_1|Mult6~8_RESULTA_bus\(15);
\cv_1|Mult6~24\ <= \cv_1|Mult6~8_RESULTA_bus\(16);
\cv_1|Mult6~25\ <= \cv_1|Mult6~8_RESULTA_bus\(17);
\cv_1|Mult6~26\ <= \cv_1|Mult6~8_RESULTA_bus\(18);
\cv_1|Mult6~27\ <= \cv_1|Mult6~8_RESULTA_bus\(19);
\cv_1|Mult6~28\ <= \cv_1|Mult6~8_RESULTA_bus\(20);
\cv_1|Mult6~29\ <= \cv_1|Mult6~8_RESULTA_bus\(21);
\cv_1|Mult6~30\ <= \cv_1|Mult6~8_RESULTA_bus\(22);
\cv_1|Mult6~31\ <= \cv_1|Mult6~8_RESULTA_bus\(23);
\cv_1|Mult6~32\ <= \cv_1|Mult6~8_RESULTA_bus\(24);
\cv_1|Mult6~33\ <= \cv_1|Mult6~8_RESULTA_bus\(25);
\cv_1|Mult6~34\ <= \cv_1|Mult6~8_RESULTA_bus\(26);
\cv_1|Mult6~35\ <= \cv_1|Mult6~8_RESULTA_bus\(27);
\cv_1|Mult6~36\ <= \cv_1|Mult6~8_RESULTA_bus\(28);
\cv_1|Mult6~37\ <= \cv_1|Mult6~8_RESULTA_bus\(29);
\cv_1|Mult6~38\ <= \cv_1|Mult6~8_RESULTA_bus\(30);
\cv_1|Mult6~39\ <= \cv_1|Mult6~8_RESULTA_bus\(31);
\cv_1|Mult6~40\ <= \cv_1|Mult6~8_RESULTA_bus\(32);
\cv_1|Mult6~41\ <= \cv_1|Mult6~8_RESULTA_bus\(33);
\cv_1|Mult6~42\ <= \cv_1|Mult6~8_RESULTA_bus\(34);
\cv_1|Mult6~43\ <= \cv_1|Mult6~8_RESULTA_bus\(35);
\cv_1|Mult6~44\ <= \cv_1|Mult6~8_RESULTA_bus\(36);
\cv_1|Mult6~45\ <= \cv_1|Mult6~8_RESULTA_bus\(37);
\cv_1|Mult6~46\ <= \cv_1|Mult6~8_RESULTA_bus\(38);
\cv_1|Mult6~47\ <= \cv_1|Mult6~8_RESULTA_bus\(39);
\cv_1|Mult6~48\ <= \cv_1|Mult6~8_RESULTA_bus\(40);
\cv_1|Mult6~49\ <= \cv_1|Mult6~8_RESULTA_bus\(41);
\cv_1|Mult6~50\ <= \cv_1|Mult6~8_RESULTA_bus\(42);
\cv_1|Mult6~51\ <= \cv_1|Mult6~8_RESULTA_bus\(43);
\cv_1|Mult6~52\ <= \cv_1|Mult6~8_RESULTA_bus\(44);
\cv_1|Mult6~53\ <= \cv_1|Mult6~8_RESULTA_bus\(45);
\cv_1|Mult6~54\ <= \cv_1|Mult6~8_RESULTA_bus\(46);
\cv_1|Mult6~55\ <= \cv_1|Mult6~8_RESULTA_bus\(47);
\cv_1|Mult6~56\ <= \cv_1|Mult6~8_RESULTA_bus\(48);
\cv_1|Mult6~57\ <= \cv_1|Mult6~8_RESULTA_bus\(49);
\cv_1|Mult6~58\ <= \cv_1|Mult6~8_RESULTA_bus\(50);
\cv_1|Mult6~59\ <= \cv_1|Mult6~8_RESULTA_bus\(51);
\cv_1|Mult6~60\ <= \cv_1|Mult6~8_RESULTA_bus\(52);
\cv_1|Mult6~61\ <= \cv_1|Mult6~8_RESULTA_bus\(53);
\cv_1|Mult6~62\ <= \cv_1|Mult6~8_RESULTA_bus\(54);
\cv_1|Mult6~63\ <= \cv_1|Mult6~8_RESULTA_bus\(55);
\cv_1|Mult6~64\ <= \cv_1|Mult6~8_RESULTA_bus\(56);
\cv_1|Mult6~65\ <= \cv_1|Mult6~8_RESULTA_bus\(57);
\cv_1|Mult6~66\ <= \cv_1|Mult6~8_RESULTA_bus\(58);
\cv_1|Mult6~67\ <= \cv_1|Mult6~8_RESULTA_bus\(59);
\cv_1|Mult6~68\ <= \cv_1|Mult6~8_RESULTA_bus\(60);
\cv_1|Mult6~69\ <= \cv_1|Mult6~8_RESULTA_bus\(61);
\cv_1|Mult6~70\ <= \cv_1|Mult6~8_RESULTA_bus\(62);
\cv_1|Mult6~71\ <= \cv_1|Mult6~8_RESULTA_bus\(63);

\cv_1|Mult5~8_ACLR_bus\ <= (gnd & gnd);

\cv_1|Mult5~8_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\cv_1|Mult5~8_ENA_bus\ <= (vcc & \input_matrix[5][0]~5_combout\ & \input_filter[14][0]~3_combout\);

\cv_1|Mult5~8_AX_bus\ <= (\rom_img|altsyncram_component|auto_generated|q_b\(7) & \rom_img|altsyncram_component|auto_generated|q_b\(6) & \rom_img|altsyncram_component|auto_generated|q_b\(5) & \rom_img|altsyncram_component|auto_generated|q_b\(4) & 
\rom_img|altsyncram_component|auto_generated|q_b\(3) & \rom_img|altsyncram_component|auto_generated|q_b\(2) & \rom_img|altsyncram_component|auto_generated|q_b\(1) & \rom_img|altsyncram_component|auto_generated|q_b\(0));

\cv_1|Mult5~8_AY_bus\ <= (\rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & gnd & \rom_filter2|altsyncram_component|auto_generated|q_b\(7) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(6) & \rom_filter2|altsyncram_component|auto_generated|q_b\(5) & \rom_filter2|altsyncram_component|auto_generated|q_b\(4) & \rom_filter2|altsyncram_component|auto_generated|q_b\(3) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(2) & \rom_filter2|altsyncram_component|auto_generated|q_b\(1) & \rom_filter2|altsyncram_component|auto_generated|q_b\(0));

\cv_1|Mult5~8_resulta\ <= \cv_1|Mult5~8_RESULTA_bus\(0);
\cv_1|Mult5~9\ <= \cv_1|Mult5~8_RESULTA_bus\(1);
\cv_1|Mult5~10\ <= \cv_1|Mult5~8_RESULTA_bus\(2);
\cv_1|Mult5~11\ <= \cv_1|Mult5~8_RESULTA_bus\(3);
\cv_1|Mult5~12\ <= \cv_1|Mult5~8_RESULTA_bus\(4);
\cv_1|Mult5~13\ <= \cv_1|Mult5~8_RESULTA_bus\(5);
\cv_1|Mult5~14\ <= \cv_1|Mult5~8_RESULTA_bus\(6);
\cv_1|Mult5~15\ <= \cv_1|Mult5~8_RESULTA_bus\(7);
\cv_1|Mult5~16\ <= \cv_1|Mult5~8_RESULTA_bus\(8);
\cv_1|Mult5~17\ <= \cv_1|Mult5~8_RESULTA_bus\(9);
\cv_1|Mult5~18\ <= \cv_1|Mult5~8_RESULTA_bus\(10);
\cv_1|Mult5~19\ <= \cv_1|Mult5~8_RESULTA_bus\(11);
\cv_1|Mult5~20\ <= \cv_1|Mult5~8_RESULTA_bus\(12);
\cv_1|Mult5~21\ <= \cv_1|Mult5~8_RESULTA_bus\(13);
\cv_1|Mult5~22\ <= \cv_1|Mult5~8_RESULTA_bus\(14);
\cv_1|Mult5~23\ <= \cv_1|Mult5~8_RESULTA_bus\(15);
\cv_1|Mult5~24\ <= \cv_1|Mult5~8_RESULTA_bus\(16);
\cv_1|Mult5~25\ <= \cv_1|Mult5~8_RESULTA_bus\(17);
\cv_1|Mult5~26\ <= \cv_1|Mult5~8_RESULTA_bus\(18);
\cv_1|Mult5~27\ <= \cv_1|Mult5~8_RESULTA_bus\(19);
\cv_1|Mult5~28\ <= \cv_1|Mult5~8_RESULTA_bus\(20);
\cv_1|Mult5~29\ <= \cv_1|Mult5~8_RESULTA_bus\(21);
\cv_1|Mult5~30\ <= \cv_1|Mult5~8_RESULTA_bus\(22);
\cv_1|Mult5~31\ <= \cv_1|Mult5~8_RESULTA_bus\(23);
\cv_1|Mult5~32\ <= \cv_1|Mult5~8_RESULTA_bus\(24);
\cv_1|Mult5~33\ <= \cv_1|Mult5~8_RESULTA_bus\(25);
\cv_1|Mult5~34\ <= \cv_1|Mult5~8_RESULTA_bus\(26);
\cv_1|Mult5~35\ <= \cv_1|Mult5~8_RESULTA_bus\(27);
\cv_1|Mult5~36\ <= \cv_1|Mult5~8_RESULTA_bus\(28);
\cv_1|Mult5~37\ <= \cv_1|Mult5~8_RESULTA_bus\(29);
\cv_1|Mult5~38\ <= \cv_1|Mult5~8_RESULTA_bus\(30);
\cv_1|Mult5~39\ <= \cv_1|Mult5~8_RESULTA_bus\(31);
\cv_1|Mult5~40\ <= \cv_1|Mult5~8_RESULTA_bus\(32);
\cv_1|Mult5~41\ <= \cv_1|Mult5~8_RESULTA_bus\(33);
\cv_1|Mult5~42\ <= \cv_1|Mult5~8_RESULTA_bus\(34);
\cv_1|Mult5~43\ <= \cv_1|Mult5~8_RESULTA_bus\(35);
\cv_1|Mult5~44\ <= \cv_1|Mult5~8_RESULTA_bus\(36);
\cv_1|Mult5~45\ <= \cv_1|Mult5~8_RESULTA_bus\(37);
\cv_1|Mult5~46\ <= \cv_1|Mult5~8_RESULTA_bus\(38);
\cv_1|Mult5~47\ <= \cv_1|Mult5~8_RESULTA_bus\(39);
\cv_1|Mult5~48\ <= \cv_1|Mult5~8_RESULTA_bus\(40);
\cv_1|Mult5~49\ <= \cv_1|Mult5~8_RESULTA_bus\(41);
\cv_1|Mult5~50\ <= \cv_1|Mult5~8_RESULTA_bus\(42);
\cv_1|Mult5~51\ <= \cv_1|Mult5~8_RESULTA_bus\(43);
\cv_1|Mult5~52\ <= \cv_1|Mult5~8_RESULTA_bus\(44);
\cv_1|Mult5~53\ <= \cv_1|Mult5~8_RESULTA_bus\(45);
\cv_1|Mult5~54\ <= \cv_1|Mult5~8_RESULTA_bus\(46);
\cv_1|Mult5~55\ <= \cv_1|Mult5~8_RESULTA_bus\(47);
\cv_1|Mult5~56\ <= \cv_1|Mult5~8_RESULTA_bus\(48);
\cv_1|Mult5~57\ <= \cv_1|Mult5~8_RESULTA_bus\(49);
\cv_1|Mult5~58\ <= \cv_1|Mult5~8_RESULTA_bus\(50);
\cv_1|Mult5~59\ <= \cv_1|Mult5~8_RESULTA_bus\(51);
\cv_1|Mult5~60\ <= \cv_1|Mult5~8_RESULTA_bus\(52);
\cv_1|Mult5~61\ <= \cv_1|Mult5~8_RESULTA_bus\(53);
\cv_1|Mult5~62\ <= \cv_1|Mult5~8_RESULTA_bus\(54);
\cv_1|Mult5~63\ <= \cv_1|Mult5~8_RESULTA_bus\(55);
\cv_1|Mult5~64\ <= \cv_1|Mult5~8_RESULTA_bus\(56);
\cv_1|Mult5~65\ <= \cv_1|Mult5~8_RESULTA_bus\(57);
\cv_1|Mult5~66\ <= \cv_1|Mult5~8_RESULTA_bus\(58);
\cv_1|Mult5~67\ <= \cv_1|Mult5~8_RESULTA_bus\(59);
\cv_1|Mult5~68\ <= \cv_1|Mult5~8_RESULTA_bus\(60);
\cv_1|Mult5~69\ <= \cv_1|Mult5~8_RESULTA_bus\(61);
\cv_1|Mult5~70\ <= \cv_1|Mult5~8_RESULTA_bus\(62);
\cv_1|Mult5~71\ <= \cv_1|Mult5~8_RESULTA_bus\(63);

\cv_1|Mult4~8_ACLR_bus\ <= (gnd & gnd);

\cv_1|Mult4~8_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\cv_1|Mult4~8_ENA_bus\ <= (vcc & \input_matrix[5][0]~5_combout\ & \input_filter[14][0]~3_combout\);

\cv_1|Mult4~8_AX_bus\ <= (\rom_img|altsyncram_component|auto_generated|q_a\(7) & \rom_img|altsyncram_component|auto_generated|q_a\(6) & \rom_img|altsyncram_component|auto_generated|q_a\(5) & \rom_img|altsyncram_component|auto_generated|q_a\(4) & 
\rom_img|altsyncram_component|auto_generated|q_a\(3) & \rom_img|altsyncram_component|auto_generated|q_a\(2) & \rom_img|altsyncram_component|auto_generated|q_a\(1) & \rom_img|altsyncram_component|auto_generated|q_a\(0));

\cv_1|Mult4~8_AY_bus\ <= (\rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & gnd & \rom_filter1|altsyncram_component|auto_generated|q_a\(7) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(6) & \rom_filter1|altsyncram_component|auto_generated|q_a\(5) & \rom_filter1|altsyncram_component|auto_generated|q_a\(4) & \rom_filter1|altsyncram_component|auto_generated|q_a\(3) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(2) & \rom_filter1|altsyncram_component|auto_generated|q_a\(1) & \rom_filter1|altsyncram_component|auto_generated|q_a\(0));

\cv_1|Mult4~8_resulta\ <= \cv_1|Mult4~8_RESULTA_bus\(0);
\cv_1|Mult4~9\ <= \cv_1|Mult4~8_RESULTA_bus\(1);
\cv_1|Mult4~10\ <= \cv_1|Mult4~8_RESULTA_bus\(2);
\cv_1|Mult4~11\ <= \cv_1|Mult4~8_RESULTA_bus\(3);
\cv_1|Mult4~12\ <= \cv_1|Mult4~8_RESULTA_bus\(4);
\cv_1|Mult4~13\ <= \cv_1|Mult4~8_RESULTA_bus\(5);
\cv_1|Mult4~14\ <= \cv_1|Mult4~8_RESULTA_bus\(6);
\cv_1|Mult4~15\ <= \cv_1|Mult4~8_RESULTA_bus\(7);
\cv_1|Mult4~16\ <= \cv_1|Mult4~8_RESULTA_bus\(8);
\cv_1|Mult4~17\ <= \cv_1|Mult4~8_RESULTA_bus\(9);
\cv_1|Mult4~18\ <= \cv_1|Mult4~8_RESULTA_bus\(10);
\cv_1|Mult4~19\ <= \cv_1|Mult4~8_RESULTA_bus\(11);
\cv_1|Mult4~20\ <= \cv_1|Mult4~8_RESULTA_bus\(12);
\cv_1|Mult4~21\ <= \cv_1|Mult4~8_RESULTA_bus\(13);
\cv_1|Mult4~22\ <= \cv_1|Mult4~8_RESULTA_bus\(14);
\cv_1|Mult4~23\ <= \cv_1|Mult4~8_RESULTA_bus\(15);
\cv_1|Mult4~24\ <= \cv_1|Mult4~8_RESULTA_bus\(16);
\cv_1|Mult4~25\ <= \cv_1|Mult4~8_RESULTA_bus\(17);
\cv_1|Mult4~26\ <= \cv_1|Mult4~8_RESULTA_bus\(18);
\cv_1|Mult4~27\ <= \cv_1|Mult4~8_RESULTA_bus\(19);
\cv_1|Mult4~28\ <= \cv_1|Mult4~8_RESULTA_bus\(20);
\cv_1|Mult4~29\ <= \cv_1|Mult4~8_RESULTA_bus\(21);
\cv_1|Mult4~30\ <= \cv_1|Mult4~8_RESULTA_bus\(22);
\cv_1|Mult4~31\ <= \cv_1|Mult4~8_RESULTA_bus\(23);
\cv_1|Mult4~32\ <= \cv_1|Mult4~8_RESULTA_bus\(24);
\cv_1|Mult4~33\ <= \cv_1|Mult4~8_RESULTA_bus\(25);
\cv_1|Mult4~34\ <= \cv_1|Mult4~8_RESULTA_bus\(26);
\cv_1|Mult4~35\ <= \cv_1|Mult4~8_RESULTA_bus\(27);
\cv_1|Mult4~36\ <= \cv_1|Mult4~8_RESULTA_bus\(28);
\cv_1|Mult4~37\ <= \cv_1|Mult4~8_RESULTA_bus\(29);
\cv_1|Mult4~38\ <= \cv_1|Mult4~8_RESULTA_bus\(30);
\cv_1|Mult4~39\ <= \cv_1|Mult4~8_RESULTA_bus\(31);
\cv_1|Mult4~40\ <= \cv_1|Mult4~8_RESULTA_bus\(32);
\cv_1|Mult4~41\ <= \cv_1|Mult4~8_RESULTA_bus\(33);
\cv_1|Mult4~42\ <= \cv_1|Mult4~8_RESULTA_bus\(34);
\cv_1|Mult4~43\ <= \cv_1|Mult4~8_RESULTA_bus\(35);
\cv_1|Mult4~44\ <= \cv_1|Mult4~8_RESULTA_bus\(36);
\cv_1|Mult4~45\ <= \cv_1|Mult4~8_RESULTA_bus\(37);
\cv_1|Mult4~46\ <= \cv_1|Mult4~8_RESULTA_bus\(38);
\cv_1|Mult4~47\ <= \cv_1|Mult4~8_RESULTA_bus\(39);
\cv_1|Mult4~48\ <= \cv_1|Mult4~8_RESULTA_bus\(40);
\cv_1|Mult4~49\ <= \cv_1|Mult4~8_RESULTA_bus\(41);
\cv_1|Mult4~50\ <= \cv_1|Mult4~8_RESULTA_bus\(42);
\cv_1|Mult4~51\ <= \cv_1|Mult4~8_RESULTA_bus\(43);
\cv_1|Mult4~52\ <= \cv_1|Mult4~8_RESULTA_bus\(44);
\cv_1|Mult4~53\ <= \cv_1|Mult4~8_RESULTA_bus\(45);
\cv_1|Mult4~54\ <= \cv_1|Mult4~8_RESULTA_bus\(46);
\cv_1|Mult4~55\ <= \cv_1|Mult4~8_RESULTA_bus\(47);
\cv_1|Mult4~56\ <= \cv_1|Mult4~8_RESULTA_bus\(48);
\cv_1|Mult4~57\ <= \cv_1|Mult4~8_RESULTA_bus\(49);
\cv_1|Mult4~58\ <= \cv_1|Mult4~8_RESULTA_bus\(50);
\cv_1|Mult4~59\ <= \cv_1|Mult4~8_RESULTA_bus\(51);
\cv_1|Mult4~60\ <= \cv_1|Mult4~8_RESULTA_bus\(52);
\cv_1|Mult4~61\ <= \cv_1|Mult4~8_RESULTA_bus\(53);
\cv_1|Mult4~62\ <= \cv_1|Mult4~8_RESULTA_bus\(54);
\cv_1|Mult4~63\ <= \cv_1|Mult4~8_RESULTA_bus\(55);
\cv_1|Mult4~64\ <= \cv_1|Mult4~8_RESULTA_bus\(56);
\cv_1|Mult4~65\ <= \cv_1|Mult4~8_RESULTA_bus\(57);
\cv_1|Mult4~66\ <= \cv_1|Mult4~8_RESULTA_bus\(58);
\cv_1|Mult4~67\ <= \cv_1|Mult4~8_RESULTA_bus\(59);
\cv_1|Mult4~68\ <= \cv_1|Mult4~8_RESULTA_bus\(60);
\cv_1|Mult4~69\ <= \cv_1|Mult4~8_RESULTA_bus\(61);
\cv_1|Mult4~70\ <= \cv_1|Mult4~8_RESULTA_bus\(62);
\cv_1|Mult4~71\ <= \cv_1|Mult4~8_RESULTA_bus\(63);

\cv_1|Mult3~8_ACLR_bus\ <= (gnd & gnd);

\cv_1|Mult3~8_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\cv_1|Mult3~8_ENA_bus\ <= (vcc & \input_matrix[3][0]~6_combout\ & \input_filter[12][0]~5_combout\);

\cv_1|Mult3~8_AX_bus\ <= (\rom_img|altsyncram_component|auto_generated|q_b\(7) & \rom_img|altsyncram_component|auto_generated|q_b\(6) & \rom_img|altsyncram_component|auto_generated|q_b\(5) & \rom_img|altsyncram_component|auto_generated|q_b\(4) & 
\rom_img|altsyncram_component|auto_generated|q_b\(3) & \rom_img|altsyncram_component|auto_generated|q_b\(2) & \rom_img|altsyncram_component|auto_generated|q_b\(1) & \rom_img|altsyncram_component|auto_generated|q_b\(0));

\cv_1|Mult3~8_AY_bus\ <= (\rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & \rom_filter2|altsyncram_component|auto_generated|q_b\(8) & gnd & \rom_filter2|altsyncram_component|auto_generated|q_b\(7) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(6) & \rom_filter2|altsyncram_component|auto_generated|q_b\(5) & \rom_filter2|altsyncram_component|auto_generated|q_b\(4) & \rom_filter2|altsyncram_component|auto_generated|q_b\(3) & 
\rom_filter2|altsyncram_component|auto_generated|q_b\(2) & \rom_filter2|altsyncram_component|auto_generated|q_b\(1) & \rom_filter2|altsyncram_component|auto_generated|q_b\(0));

\cv_1|Mult3~8_resulta\ <= \cv_1|Mult3~8_RESULTA_bus\(0);
\cv_1|Mult3~9\ <= \cv_1|Mult3~8_RESULTA_bus\(1);
\cv_1|Mult3~10\ <= \cv_1|Mult3~8_RESULTA_bus\(2);
\cv_1|Mult3~11\ <= \cv_1|Mult3~8_RESULTA_bus\(3);
\cv_1|Mult3~12\ <= \cv_1|Mult3~8_RESULTA_bus\(4);
\cv_1|Mult3~13\ <= \cv_1|Mult3~8_RESULTA_bus\(5);
\cv_1|Mult3~14\ <= \cv_1|Mult3~8_RESULTA_bus\(6);
\cv_1|Mult3~15\ <= \cv_1|Mult3~8_RESULTA_bus\(7);
\cv_1|Mult3~16\ <= \cv_1|Mult3~8_RESULTA_bus\(8);
\cv_1|Mult3~17\ <= \cv_1|Mult3~8_RESULTA_bus\(9);
\cv_1|Mult3~18\ <= \cv_1|Mult3~8_RESULTA_bus\(10);
\cv_1|Mult3~19\ <= \cv_1|Mult3~8_RESULTA_bus\(11);
\cv_1|Mult3~20\ <= \cv_1|Mult3~8_RESULTA_bus\(12);
\cv_1|Mult3~21\ <= \cv_1|Mult3~8_RESULTA_bus\(13);
\cv_1|Mult3~22\ <= \cv_1|Mult3~8_RESULTA_bus\(14);
\cv_1|Mult3~23\ <= \cv_1|Mult3~8_RESULTA_bus\(15);
\cv_1|Mult3~24\ <= \cv_1|Mult3~8_RESULTA_bus\(16);
\cv_1|Mult3~25\ <= \cv_1|Mult3~8_RESULTA_bus\(17);
\cv_1|Mult3~26\ <= \cv_1|Mult3~8_RESULTA_bus\(18);
\cv_1|Mult3~27\ <= \cv_1|Mult3~8_RESULTA_bus\(19);
\cv_1|Mult3~28\ <= \cv_1|Mult3~8_RESULTA_bus\(20);
\cv_1|Mult3~29\ <= \cv_1|Mult3~8_RESULTA_bus\(21);
\cv_1|Mult3~30\ <= \cv_1|Mult3~8_RESULTA_bus\(22);
\cv_1|Mult3~31\ <= \cv_1|Mult3~8_RESULTA_bus\(23);
\cv_1|Mult3~32\ <= \cv_1|Mult3~8_RESULTA_bus\(24);
\cv_1|Mult3~33\ <= \cv_1|Mult3~8_RESULTA_bus\(25);
\cv_1|Mult3~34\ <= \cv_1|Mult3~8_RESULTA_bus\(26);
\cv_1|Mult3~35\ <= \cv_1|Mult3~8_RESULTA_bus\(27);
\cv_1|Mult3~36\ <= \cv_1|Mult3~8_RESULTA_bus\(28);
\cv_1|Mult3~37\ <= \cv_1|Mult3~8_RESULTA_bus\(29);
\cv_1|Mult3~38\ <= \cv_1|Mult3~8_RESULTA_bus\(30);
\cv_1|Mult3~39\ <= \cv_1|Mult3~8_RESULTA_bus\(31);
\cv_1|Mult3~40\ <= \cv_1|Mult3~8_RESULTA_bus\(32);
\cv_1|Mult3~41\ <= \cv_1|Mult3~8_RESULTA_bus\(33);
\cv_1|Mult3~42\ <= \cv_1|Mult3~8_RESULTA_bus\(34);
\cv_1|Mult3~43\ <= \cv_1|Mult3~8_RESULTA_bus\(35);
\cv_1|Mult3~44\ <= \cv_1|Mult3~8_RESULTA_bus\(36);
\cv_1|Mult3~45\ <= \cv_1|Mult3~8_RESULTA_bus\(37);
\cv_1|Mult3~46\ <= \cv_1|Mult3~8_RESULTA_bus\(38);
\cv_1|Mult3~47\ <= \cv_1|Mult3~8_RESULTA_bus\(39);
\cv_1|Mult3~48\ <= \cv_1|Mult3~8_RESULTA_bus\(40);
\cv_1|Mult3~49\ <= \cv_1|Mult3~8_RESULTA_bus\(41);
\cv_1|Mult3~50\ <= \cv_1|Mult3~8_RESULTA_bus\(42);
\cv_1|Mult3~51\ <= \cv_1|Mult3~8_RESULTA_bus\(43);
\cv_1|Mult3~52\ <= \cv_1|Mult3~8_RESULTA_bus\(44);
\cv_1|Mult3~53\ <= \cv_1|Mult3~8_RESULTA_bus\(45);
\cv_1|Mult3~54\ <= \cv_1|Mult3~8_RESULTA_bus\(46);
\cv_1|Mult3~55\ <= \cv_1|Mult3~8_RESULTA_bus\(47);
\cv_1|Mult3~56\ <= \cv_1|Mult3~8_RESULTA_bus\(48);
\cv_1|Mult3~57\ <= \cv_1|Mult3~8_RESULTA_bus\(49);
\cv_1|Mult3~58\ <= \cv_1|Mult3~8_RESULTA_bus\(50);
\cv_1|Mult3~59\ <= \cv_1|Mult3~8_RESULTA_bus\(51);
\cv_1|Mult3~60\ <= \cv_1|Mult3~8_RESULTA_bus\(52);
\cv_1|Mult3~61\ <= \cv_1|Mult3~8_RESULTA_bus\(53);
\cv_1|Mult3~62\ <= \cv_1|Mult3~8_RESULTA_bus\(54);
\cv_1|Mult3~63\ <= \cv_1|Mult3~8_RESULTA_bus\(55);
\cv_1|Mult3~64\ <= \cv_1|Mult3~8_RESULTA_bus\(56);
\cv_1|Mult3~65\ <= \cv_1|Mult3~8_RESULTA_bus\(57);
\cv_1|Mult3~66\ <= \cv_1|Mult3~8_RESULTA_bus\(58);
\cv_1|Mult3~67\ <= \cv_1|Mult3~8_RESULTA_bus\(59);
\cv_1|Mult3~68\ <= \cv_1|Mult3~8_RESULTA_bus\(60);
\cv_1|Mult3~69\ <= \cv_1|Mult3~8_RESULTA_bus\(61);
\cv_1|Mult3~70\ <= \cv_1|Mult3~8_RESULTA_bus\(62);
\cv_1|Mult3~71\ <= \cv_1|Mult3~8_RESULTA_bus\(63);

\cv_1|Mult2~8_ACLR_bus\ <= (gnd & gnd);

\cv_1|Mult2~8_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\cv_1|Mult2~8_ENA_bus\ <= (vcc & \input_matrix[3][0]~6_combout\ & \input_filter[12][0]~5_combout\);

\cv_1|Mult2~8_AX_bus\ <= (\rom_img|altsyncram_component|auto_generated|q_a\(7) & \rom_img|altsyncram_component|auto_generated|q_a\(6) & \rom_img|altsyncram_component|auto_generated|q_a\(5) & \rom_img|altsyncram_component|auto_generated|q_a\(4) & 
\rom_img|altsyncram_component|auto_generated|q_a\(3) & \rom_img|altsyncram_component|auto_generated|q_a\(2) & \rom_img|altsyncram_component|auto_generated|q_a\(1) & \rom_img|altsyncram_component|auto_generated|q_a\(0));

\cv_1|Mult2~8_AY_bus\ <= (\rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & gnd & \rom_filter1|altsyncram_component|auto_generated|q_a\(7) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(6) & \rom_filter1|altsyncram_component|auto_generated|q_a\(5) & \rom_filter1|altsyncram_component|auto_generated|q_a\(4) & \rom_filter1|altsyncram_component|auto_generated|q_a\(3) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(2) & \rom_filter1|altsyncram_component|auto_generated|q_a\(1) & \rom_filter1|altsyncram_component|auto_generated|q_a\(0));

\cv_1|Mult2~8_resulta\ <= \cv_1|Mult2~8_RESULTA_bus\(0);
\cv_1|Mult2~9\ <= \cv_1|Mult2~8_RESULTA_bus\(1);
\cv_1|Mult2~10\ <= \cv_1|Mult2~8_RESULTA_bus\(2);
\cv_1|Mult2~11\ <= \cv_1|Mult2~8_RESULTA_bus\(3);
\cv_1|Mult2~12\ <= \cv_1|Mult2~8_RESULTA_bus\(4);
\cv_1|Mult2~13\ <= \cv_1|Mult2~8_RESULTA_bus\(5);
\cv_1|Mult2~14\ <= \cv_1|Mult2~8_RESULTA_bus\(6);
\cv_1|Mult2~15\ <= \cv_1|Mult2~8_RESULTA_bus\(7);
\cv_1|Mult2~16\ <= \cv_1|Mult2~8_RESULTA_bus\(8);
\cv_1|Mult2~17\ <= \cv_1|Mult2~8_RESULTA_bus\(9);
\cv_1|Mult2~18\ <= \cv_1|Mult2~8_RESULTA_bus\(10);
\cv_1|Mult2~19\ <= \cv_1|Mult2~8_RESULTA_bus\(11);
\cv_1|Mult2~20\ <= \cv_1|Mult2~8_RESULTA_bus\(12);
\cv_1|Mult2~21\ <= \cv_1|Mult2~8_RESULTA_bus\(13);
\cv_1|Mult2~22\ <= \cv_1|Mult2~8_RESULTA_bus\(14);
\cv_1|Mult2~23\ <= \cv_1|Mult2~8_RESULTA_bus\(15);
\cv_1|Mult2~24\ <= \cv_1|Mult2~8_RESULTA_bus\(16);
\cv_1|Mult2~25\ <= \cv_1|Mult2~8_RESULTA_bus\(17);
\cv_1|Mult2~26\ <= \cv_1|Mult2~8_RESULTA_bus\(18);
\cv_1|Mult2~27\ <= \cv_1|Mult2~8_RESULTA_bus\(19);
\cv_1|Mult2~28\ <= \cv_1|Mult2~8_RESULTA_bus\(20);
\cv_1|Mult2~29\ <= \cv_1|Mult2~8_RESULTA_bus\(21);
\cv_1|Mult2~30\ <= \cv_1|Mult2~8_RESULTA_bus\(22);
\cv_1|Mult2~31\ <= \cv_1|Mult2~8_RESULTA_bus\(23);
\cv_1|Mult2~32\ <= \cv_1|Mult2~8_RESULTA_bus\(24);
\cv_1|Mult2~33\ <= \cv_1|Mult2~8_RESULTA_bus\(25);
\cv_1|Mult2~34\ <= \cv_1|Mult2~8_RESULTA_bus\(26);
\cv_1|Mult2~35\ <= \cv_1|Mult2~8_RESULTA_bus\(27);
\cv_1|Mult2~36\ <= \cv_1|Mult2~8_RESULTA_bus\(28);
\cv_1|Mult2~37\ <= \cv_1|Mult2~8_RESULTA_bus\(29);
\cv_1|Mult2~38\ <= \cv_1|Mult2~8_RESULTA_bus\(30);
\cv_1|Mult2~39\ <= \cv_1|Mult2~8_RESULTA_bus\(31);
\cv_1|Mult2~40\ <= \cv_1|Mult2~8_RESULTA_bus\(32);
\cv_1|Mult2~41\ <= \cv_1|Mult2~8_RESULTA_bus\(33);
\cv_1|Mult2~42\ <= \cv_1|Mult2~8_RESULTA_bus\(34);
\cv_1|Mult2~43\ <= \cv_1|Mult2~8_RESULTA_bus\(35);
\cv_1|Mult2~44\ <= \cv_1|Mult2~8_RESULTA_bus\(36);
\cv_1|Mult2~45\ <= \cv_1|Mult2~8_RESULTA_bus\(37);
\cv_1|Mult2~46\ <= \cv_1|Mult2~8_RESULTA_bus\(38);
\cv_1|Mult2~47\ <= \cv_1|Mult2~8_RESULTA_bus\(39);
\cv_1|Mult2~48\ <= \cv_1|Mult2~8_RESULTA_bus\(40);
\cv_1|Mult2~49\ <= \cv_1|Mult2~8_RESULTA_bus\(41);
\cv_1|Mult2~50\ <= \cv_1|Mult2~8_RESULTA_bus\(42);
\cv_1|Mult2~51\ <= \cv_1|Mult2~8_RESULTA_bus\(43);
\cv_1|Mult2~52\ <= \cv_1|Mult2~8_RESULTA_bus\(44);
\cv_1|Mult2~53\ <= \cv_1|Mult2~8_RESULTA_bus\(45);
\cv_1|Mult2~54\ <= \cv_1|Mult2~8_RESULTA_bus\(46);
\cv_1|Mult2~55\ <= \cv_1|Mult2~8_RESULTA_bus\(47);
\cv_1|Mult2~56\ <= \cv_1|Mult2~8_RESULTA_bus\(48);
\cv_1|Mult2~57\ <= \cv_1|Mult2~8_RESULTA_bus\(49);
\cv_1|Mult2~58\ <= \cv_1|Mult2~8_RESULTA_bus\(50);
\cv_1|Mult2~59\ <= \cv_1|Mult2~8_RESULTA_bus\(51);
\cv_1|Mult2~60\ <= \cv_1|Mult2~8_RESULTA_bus\(52);
\cv_1|Mult2~61\ <= \cv_1|Mult2~8_RESULTA_bus\(53);
\cv_1|Mult2~62\ <= \cv_1|Mult2~8_RESULTA_bus\(54);
\cv_1|Mult2~63\ <= \cv_1|Mult2~8_RESULTA_bus\(55);
\cv_1|Mult2~64\ <= \cv_1|Mult2~8_RESULTA_bus\(56);
\cv_1|Mult2~65\ <= \cv_1|Mult2~8_RESULTA_bus\(57);
\cv_1|Mult2~66\ <= \cv_1|Mult2~8_RESULTA_bus\(58);
\cv_1|Mult2~67\ <= \cv_1|Mult2~8_RESULTA_bus\(59);
\cv_1|Mult2~68\ <= \cv_1|Mult2~8_RESULTA_bus\(60);
\cv_1|Mult2~69\ <= \cv_1|Mult2~8_RESULTA_bus\(61);
\cv_1|Mult2~70\ <= \cv_1|Mult2~8_RESULTA_bus\(62);
\cv_1|Mult2~71\ <= \cv_1|Mult2~8_RESULTA_bus\(63);

\cv_1|Mult1~8_ACLR_bus\ <= (gnd & gnd);

\cv_1|Mult1~8_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\cv_1|Mult1~8_ENA_bus\ <= (vcc & \input_matrix[1][0]~7_combout\ & \input_filter[1][0]~11_combout\);

\cv_1|Mult1~8_AX_bus\ <= (\rom_img|altsyncram_component|auto_generated|q_b\(7) & \rom_img|altsyncram_component|auto_generated|q_b\(6) & \rom_img|altsyncram_component|auto_generated|q_b\(5) & \rom_img|altsyncram_component|auto_generated|q_b\(4) & 
\rom_img|altsyncram_component|auto_generated|q_b\(3) & \rom_img|altsyncram_component|auto_generated|q_b\(2) & \rom_img|altsyncram_component|auto_generated|q_b\(1) & \rom_img|altsyncram_component|auto_generated|q_b\(0));

\cv_1|Mult1~8_AY_bus\ <= (\rom_filter1|altsyncram_component|auto_generated|q_b\(8) & \rom_filter1|altsyncram_component|auto_generated|q_b\(8) & \rom_filter1|altsyncram_component|auto_generated|q_b\(8) & 
\rom_filter1|altsyncram_component|auto_generated|q_b\(8) & \rom_filter1|altsyncram_component|auto_generated|q_b\(8) & \rom_filter1|altsyncram_component|auto_generated|q_b\(8) & \rom_filter1|altsyncram_component|auto_generated|q_b\(8) & 
\rom_filter1|altsyncram_component|auto_generated|q_b\(8) & \rom_filter1|altsyncram_component|auto_generated|q_b\(8) & \rom_filter1|altsyncram_component|auto_generated|q_b\(8) & gnd & \rom_filter1|altsyncram_component|auto_generated|q_b\(7) & 
\rom_filter1|altsyncram_component|auto_generated|q_b\(6) & \rom_filter1|altsyncram_component|auto_generated|q_b\(5) & \rom_filter1|altsyncram_component|auto_generated|q_b\(4) & \rom_filter1|altsyncram_component|auto_generated|q_b\(3) & 
\rom_filter1|altsyncram_component|auto_generated|q_b\(2) & \rom_filter1|altsyncram_component|auto_generated|q_b\(1) & \rom_filter1|altsyncram_component|auto_generated|q_b\(0));

\cv_1|Mult1~8_resulta\ <= \cv_1|Mult1~8_RESULTA_bus\(0);
\cv_1|Mult1~9\ <= \cv_1|Mult1~8_RESULTA_bus\(1);
\cv_1|Mult1~10\ <= \cv_1|Mult1~8_RESULTA_bus\(2);
\cv_1|Mult1~11\ <= \cv_1|Mult1~8_RESULTA_bus\(3);
\cv_1|Mult1~12\ <= \cv_1|Mult1~8_RESULTA_bus\(4);
\cv_1|Mult1~13\ <= \cv_1|Mult1~8_RESULTA_bus\(5);
\cv_1|Mult1~14\ <= \cv_1|Mult1~8_RESULTA_bus\(6);
\cv_1|Mult1~15\ <= \cv_1|Mult1~8_RESULTA_bus\(7);
\cv_1|Mult1~16\ <= \cv_1|Mult1~8_RESULTA_bus\(8);
\cv_1|Mult1~17\ <= \cv_1|Mult1~8_RESULTA_bus\(9);
\cv_1|Mult1~18\ <= \cv_1|Mult1~8_RESULTA_bus\(10);
\cv_1|Mult1~19\ <= \cv_1|Mult1~8_RESULTA_bus\(11);
\cv_1|Mult1~20\ <= \cv_1|Mult1~8_RESULTA_bus\(12);
\cv_1|Mult1~21\ <= \cv_1|Mult1~8_RESULTA_bus\(13);
\cv_1|Mult1~22\ <= \cv_1|Mult1~8_RESULTA_bus\(14);
\cv_1|Mult1~23\ <= \cv_1|Mult1~8_RESULTA_bus\(15);
\cv_1|Mult1~24\ <= \cv_1|Mult1~8_RESULTA_bus\(16);
\cv_1|Mult1~25\ <= \cv_1|Mult1~8_RESULTA_bus\(17);
\cv_1|Mult1~26\ <= \cv_1|Mult1~8_RESULTA_bus\(18);
\cv_1|Mult1~27\ <= \cv_1|Mult1~8_RESULTA_bus\(19);
\cv_1|Mult1~28\ <= \cv_1|Mult1~8_RESULTA_bus\(20);
\cv_1|Mult1~29\ <= \cv_1|Mult1~8_RESULTA_bus\(21);
\cv_1|Mult1~30\ <= \cv_1|Mult1~8_RESULTA_bus\(22);
\cv_1|Mult1~31\ <= \cv_1|Mult1~8_RESULTA_bus\(23);
\cv_1|Mult1~32\ <= \cv_1|Mult1~8_RESULTA_bus\(24);
\cv_1|Mult1~33\ <= \cv_1|Mult1~8_RESULTA_bus\(25);
\cv_1|Mult1~34\ <= \cv_1|Mult1~8_RESULTA_bus\(26);
\cv_1|Mult1~35\ <= \cv_1|Mult1~8_RESULTA_bus\(27);
\cv_1|Mult1~36\ <= \cv_1|Mult1~8_RESULTA_bus\(28);
\cv_1|Mult1~37\ <= \cv_1|Mult1~8_RESULTA_bus\(29);
\cv_1|Mult1~38\ <= \cv_1|Mult1~8_RESULTA_bus\(30);
\cv_1|Mult1~39\ <= \cv_1|Mult1~8_RESULTA_bus\(31);
\cv_1|Mult1~40\ <= \cv_1|Mult1~8_RESULTA_bus\(32);
\cv_1|Mult1~41\ <= \cv_1|Mult1~8_RESULTA_bus\(33);
\cv_1|Mult1~42\ <= \cv_1|Mult1~8_RESULTA_bus\(34);
\cv_1|Mult1~43\ <= \cv_1|Mult1~8_RESULTA_bus\(35);
\cv_1|Mult1~44\ <= \cv_1|Mult1~8_RESULTA_bus\(36);
\cv_1|Mult1~45\ <= \cv_1|Mult1~8_RESULTA_bus\(37);
\cv_1|Mult1~46\ <= \cv_1|Mult1~8_RESULTA_bus\(38);
\cv_1|Mult1~47\ <= \cv_1|Mult1~8_RESULTA_bus\(39);
\cv_1|Mult1~48\ <= \cv_1|Mult1~8_RESULTA_bus\(40);
\cv_1|Mult1~49\ <= \cv_1|Mult1~8_RESULTA_bus\(41);
\cv_1|Mult1~50\ <= \cv_1|Mult1~8_RESULTA_bus\(42);
\cv_1|Mult1~51\ <= \cv_1|Mult1~8_RESULTA_bus\(43);
\cv_1|Mult1~52\ <= \cv_1|Mult1~8_RESULTA_bus\(44);
\cv_1|Mult1~53\ <= \cv_1|Mult1~8_RESULTA_bus\(45);
\cv_1|Mult1~54\ <= \cv_1|Mult1~8_RESULTA_bus\(46);
\cv_1|Mult1~55\ <= \cv_1|Mult1~8_RESULTA_bus\(47);
\cv_1|Mult1~56\ <= \cv_1|Mult1~8_RESULTA_bus\(48);
\cv_1|Mult1~57\ <= \cv_1|Mult1~8_RESULTA_bus\(49);
\cv_1|Mult1~58\ <= \cv_1|Mult1~8_RESULTA_bus\(50);
\cv_1|Mult1~59\ <= \cv_1|Mult1~8_RESULTA_bus\(51);
\cv_1|Mult1~60\ <= \cv_1|Mult1~8_RESULTA_bus\(52);
\cv_1|Mult1~61\ <= \cv_1|Mult1~8_RESULTA_bus\(53);
\cv_1|Mult1~62\ <= \cv_1|Mult1~8_RESULTA_bus\(54);
\cv_1|Mult1~63\ <= \cv_1|Mult1~8_RESULTA_bus\(55);
\cv_1|Mult1~64\ <= \cv_1|Mult1~8_RESULTA_bus\(56);
\cv_1|Mult1~65\ <= \cv_1|Mult1~8_RESULTA_bus\(57);
\cv_1|Mult1~66\ <= \cv_1|Mult1~8_RESULTA_bus\(58);
\cv_1|Mult1~67\ <= \cv_1|Mult1~8_RESULTA_bus\(59);
\cv_1|Mult1~68\ <= \cv_1|Mult1~8_RESULTA_bus\(60);
\cv_1|Mult1~69\ <= \cv_1|Mult1~8_RESULTA_bus\(61);
\cv_1|Mult1~70\ <= \cv_1|Mult1~8_RESULTA_bus\(62);
\cv_1|Mult1~71\ <= \cv_1|Mult1~8_RESULTA_bus\(63);

\cv_1|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\cv_1|Mult0~8_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\cv_1|Mult0~8_ENA_bus\ <= (vcc & \input_matrix[1][0]~7_combout\ & \input_filter[1][0]~11_combout\);

\cv_1|Mult0~8_AX_bus\ <= (\rom_img|altsyncram_component|auto_generated|q_a\(7) & \rom_img|altsyncram_component|auto_generated|q_a\(6) & \rom_img|altsyncram_component|auto_generated|q_a\(5) & \rom_img|altsyncram_component|auto_generated|q_a\(4) & 
\rom_img|altsyncram_component|auto_generated|q_a\(3) & \rom_img|altsyncram_component|auto_generated|q_a\(2) & \rom_img|altsyncram_component|auto_generated|q_a\(1) & \rom_img|altsyncram_component|auto_generated|q_a\(0));

\cv_1|Mult0~8_AY_bus\ <= (\rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & \rom_filter1|altsyncram_component|auto_generated|q_a\(8) & gnd & \rom_filter1|altsyncram_component|auto_generated|q_a\(7) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(6) & \rom_filter1|altsyncram_component|auto_generated|q_a\(5) & \rom_filter1|altsyncram_component|auto_generated|q_a\(4) & \rom_filter1|altsyncram_component|auto_generated|q_a\(3) & 
\rom_filter1|altsyncram_component|auto_generated|q_a\(2) & \rom_filter1|altsyncram_component|auto_generated|q_a\(1) & \rom_filter1|altsyncram_component|auto_generated|q_a\(0));

\cv_1|Mult0~8_resulta\ <= \cv_1|Mult0~8_RESULTA_bus\(0);
\cv_1|Mult0~9\ <= \cv_1|Mult0~8_RESULTA_bus\(1);
\cv_1|Mult0~10\ <= \cv_1|Mult0~8_RESULTA_bus\(2);
\cv_1|Mult0~11\ <= \cv_1|Mult0~8_RESULTA_bus\(3);
\cv_1|Mult0~12\ <= \cv_1|Mult0~8_RESULTA_bus\(4);
\cv_1|Mult0~13\ <= \cv_1|Mult0~8_RESULTA_bus\(5);
\cv_1|Mult0~14\ <= \cv_1|Mult0~8_RESULTA_bus\(6);
\cv_1|Mult0~15\ <= \cv_1|Mult0~8_RESULTA_bus\(7);
\cv_1|Mult0~16\ <= \cv_1|Mult0~8_RESULTA_bus\(8);
\cv_1|Mult0~17\ <= \cv_1|Mult0~8_RESULTA_bus\(9);
\cv_1|Mult0~18\ <= \cv_1|Mult0~8_RESULTA_bus\(10);
\cv_1|Mult0~19\ <= \cv_1|Mult0~8_RESULTA_bus\(11);
\cv_1|Mult0~20\ <= \cv_1|Mult0~8_RESULTA_bus\(12);
\cv_1|Mult0~21\ <= \cv_1|Mult0~8_RESULTA_bus\(13);
\cv_1|Mult0~22\ <= \cv_1|Mult0~8_RESULTA_bus\(14);
\cv_1|Mult0~23\ <= \cv_1|Mult0~8_RESULTA_bus\(15);
\cv_1|Mult0~24\ <= \cv_1|Mult0~8_RESULTA_bus\(16);
\cv_1|Mult0~25\ <= \cv_1|Mult0~8_RESULTA_bus\(17);
\cv_1|Mult0~26\ <= \cv_1|Mult0~8_RESULTA_bus\(18);
\cv_1|Mult0~27\ <= \cv_1|Mult0~8_RESULTA_bus\(19);
\cv_1|Mult0~28\ <= \cv_1|Mult0~8_RESULTA_bus\(20);
\cv_1|Mult0~29\ <= \cv_1|Mult0~8_RESULTA_bus\(21);
\cv_1|Mult0~30\ <= \cv_1|Mult0~8_RESULTA_bus\(22);
\cv_1|Mult0~31\ <= \cv_1|Mult0~8_RESULTA_bus\(23);
\cv_1|Mult0~32\ <= \cv_1|Mult0~8_RESULTA_bus\(24);
\cv_1|Mult0~33\ <= \cv_1|Mult0~8_RESULTA_bus\(25);
\cv_1|Mult0~34\ <= \cv_1|Mult0~8_RESULTA_bus\(26);
\cv_1|Mult0~35\ <= \cv_1|Mult0~8_RESULTA_bus\(27);
\cv_1|Mult0~36\ <= \cv_1|Mult0~8_RESULTA_bus\(28);
\cv_1|Mult0~37\ <= \cv_1|Mult0~8_RESULTA_bus\(29);
\cv_1|Mult0~38\ <= \cv_1|Mult0~8_RESULTA_bus\(30);
\cv_1|Mult0~39\ <= \cv_1|Mult0~8_RESULTA_bus\(31);
\cv_1|Mult0~40\ <= \cv_1|Mult0~8_RESULTA_bus\(32);
\cv_1|Mult0~41\ <= \cv_1|Mult0~8_RESULTA_bus\(33);
\cv_1|Mult0~42\ <= \cv_1|Mult0~8_RESULTA_bus\(34);
\cv_1|Mult0~43\ <= \cv_1|Mult0~8_RESULTA_bus\(35);
\cv_1|Mult0~44\ <= \cv_1|Mult0~8_RESULTA_bus\(36);
\cv_1|Mult0~45\ <= \cv_1|Mult0~8_RESULTA_bus\(37);
\cv_1|Mult0~46\ <= \cv_1|Mult0~8_RESULTA_bus\(38);
\cv_1|Mult0~47\ <= \cv_1|Mult0~8_RESULTA_bus\(39);
\cv_1|Mult0~48\ <= \cv_1|Mult0~8_RESULTA_bus\(40);
\cv_1|Mult0~49\ <= \cv_1|Mult0~8_RESULTA_bus\(41);
\cv_1|Mult0~50\ <= \cv_1|Mult0~8_RESULTA_bus\(42);
\cv_1|Mult0~51\ <= \cv_1|Mult0~8_RESULTA_bus\(43);
\cv_1|Mult0~52\ <= \cv_1|Mult0~8_RESULTA_bus\(44);
\cv_1|Mult0~53\ <= \cv_1|Mult0~8_RESULTA_bus\(45);
\cv_1|Mult0~54\ <= \cv_1|Mult0~8_RESULTA_bus\(46);
\cv_1|Mult0~55\ <= \cv_1|Mult0~8_RESULTA_bus\(47);
\cv_1|Mult0~56\ <= \cv_1|Mult0~8_RESULTA_bus\(48);
\cv_1|Mult0~57\ <= \cv_1|Mult0~8_RESULTA_bus\(49);
\cv_1|Mult0~58\ <= \cv_1|Mult0~8_RESULTA_bus\(50);
\cv_1|Mult0~59\ <= \cv_1|Mult0~8_RESULTA_bus\(51);
\cv_1|Mult0~60\ <= \cv_1|Mult0~8_RESULTA_bus\(52);
\cv_1|Mult0~61\ <= \cv_1|Mult0~8_RESULTA_bus\(53);
\cv_1|Mult0~62\ <= \cv_1|Mult0~8_RESULTA_bus\(54);
\cv_1|Mult0~63\ <= \cv_1|Mult0~8_RESULTA_bus\(55);
\cv_1|Mult0~64\ <= \cv_1|Mult0~8_RESULTA_bus\(56);
\cv_1|Mult0~65\ <= \cv_1|Mult0~8_RESULTA_bus\(57);
\cv_1|Mult0~66\ <= \cv_1|Mult0~8_RESULTA_bus\(58);
\cv_1|Mult0~67\ <= \cv_1|Mult0~8_RESULTA_bus\(59);
\cv_1|Mult0~68\ <= \cv_1|Mult0~8_RESULTA_bus\(60);
\cv_1|Mult0~69\ <= \cv_1|Mult0~8_RESULTA_bus\(61);
\cv_1|Mult0~70\ <= \cv_1|Mult0~8_RESULTA_bus\(62);
\cv_1|Mult0~71\ <= \cv_1|Mult0~8_RESULTA_bus\(63);

\rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\);

\rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\);

\rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (img_address_a(4) & img_address_a(3) & img_address_a(2) & img_address_a(1) & \~GND~combout\);

\rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (img_address_a(4) & img_address_a(3) & img_address_a(2) & img_address_a(1) & vcc);

\rom_img|altsyncram_component|auto_generated|q_a\(0) <= \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\rom_img|altsyncram_component|auto_generated|q_a\(1) <= \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\rom_img|altsyncram_component|auto_generated|q_a\(2) <= \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\rom_img|altsyncram_component|auto_generated|q_a\(3) <= \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\rom_img|altsyncram_component|auto_generated|q_a\(4) <= \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\rom_img|altsyncram_component|auto_generated|q_a\(5) <= \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\rom_img|altsyncram_component|auto_generated|q_a\(6) <= \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\rom_img|altsyncram_component|auto_generated|q_a\(7) <= \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\rom_img|altsyncram_component|auto_generated|q_b\(0) <= \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\rom_img|altsyncram_component|auto_generated|q_b\(1) <= \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\rom_img|altsyncram_component|auto_generated|q_b\(2) <= \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\rom_img|altsyncram_component|auto_generated|q_b\(3) <= \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\rom_img|altsyncram_component|auto_generated|q_b\(4) <= \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\rom_img|altsyncram_component|auto_generated|q_b\(5) <= \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\rom_img|altsyncram_component|auto_generated|q_b\(6) <= \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\rom_img|altsyncram_component|auto_generated|q_b\(7) <= \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (filter_address_a(4) & filter_address_a(3) & filter_address_a(2) & filter_address_a(1) & \~GND~combout\);

\rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (filter_address_a(4) & filter_address_a(3) & filter_address_a(2) & filter_address_a(1) & vcc);

\rom_filter1|altsyncram_component|auto_generated|q_a\(0) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\rom_filter1|altsyncram_component|auto_generated|q_a\(1) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\rom_filter1|altsyncram_component|auto_generated|q_a\(2) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\rom_filter1|altsyncram_component|auto_generated|q_a\(3) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\rom_filter1|altsyncram_component|auto_generated|q_a\(4) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\rom_filter1|altsyncram_component|auto_generated|q_a\(5) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\rom_filter1|altsyncram_component|auto_generated|q_a\(6) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\rom_filter1|altsyncram_component|auto_generated|q_a\(7) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\rom_filter1|altsyncram_component|auto_generated|q_a\(8) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\rom_filter2|altsyncram_component|auto_generated|q_a\(0) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\rom_filter2|altsyncram_component|auto_generated|q_a\(1) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\rom_filter2|altsyncram_component|auto_generated|q_a\(2) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\rom_filter2|altsyncram_component|auto_generated|q_a\(3) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\rom_filter2|altsyncram_component|auto_generated|q_a\(4) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\rom_filter2|altsyncram_component|auto_generated|q_a\(5) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\rom_filter2|altsyncram_component|auto_generated|q_a\(6) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\rom_filter2|altsyncram_component|auto_generated|q_a\(7) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\rom_filter2|altsyncram_component|auto_generated|q_a\(8) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\rom_filter1|altsyncram_component|auto_generated|q_b\(0) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\rom_filter1|altsyncram_component|auto_generated|q_b\(1) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\rom_filter1|altsyncram_component|auto_generated|q_b\(2) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\rom_filter1|altsyncram_component|auto_generated|q_b\(3) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\rom_filter1|altsyncram_component|auto_generated|q_b\(4) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\rom_filter1|altsyncram_component|auto_generated|q_b\(5) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\rom_filter1|altsyncram_component|auto_generated|q_b\(6) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\rom_filter1|altsyncram_component|auto_generated|q_b\(7) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\rom_filter1|altsyncram_component|auto_generated|q_b\(8) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\rom_filter2|altsyncram_component|auto_generated|q_b\(0) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\rom_filter2|altsyncram_component|auto_generated|q_b\(1) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\rom_filter2|altsyncram_component|auto_generated|q_b\(2) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\rom_filter2|altsyncram_component|auto_generated|q_b\(3) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\rom_filter2|altsyncram_component|auto_generated|q_b\(4) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\rom_filter2|altsyncram_component|auto_generated|q_b\(5) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\rom_filter2|altsyncram_component|auto_generated|q_b\(6) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\rom_filter2|altsyncram_component|auto_generated|q_b\(7) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\rom_filter2|altsyncram_component|auto_generated|q_b\(8) <= \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_convolution:index_matrix[1]~0_combout\ <= NOT \convolution:index_matrix[1]~0_combout\;
\ALT_INV_input_filter[8][0]~9_combout\ <= NOT \input_filter[8][0]~9_combout\;
\ALT_INV_Decoder1~3_combout\ <= NOT \Decoder1~3_combout\;
\ALT_INV_Decoder1~2_combout\ <= NOT \Decoder1~2_combout\;
\ALT_INV_Decoder1~1_combout\ <= NOT \Decoder1~1_combout\;
\ALT_INV_Decoder1~0_combout\ <= NOT \Decoder1~0_combout\;
\ALT_INV_convolution:enable_buffer_filter~q\ <= NOT \convolution:enable_buffer_filter~q\;
\ALT_INV_input_matrix[8][0]~2_combout\ <= NOT \input_matrix[8][0]~2_combout\;
\ALT_INV_convolution:index_matrix[2]~q\ <= NOT \convolution:index_matrix[2]~q\;
\ALT_INV_convolution:index_matrix[1]~q\ <= NOT \convolution:index_matrix[1]~q\;
\ALT_INV_convolution:index_matrix[3]~q\ <= NOT \convolution:index_matrix[3]~q\;
\ALT_INV_input_matrix[8][0]~1_combout\ <= NOT \input_matrix[8][0]~1_combout\;
\ALT_INV_input_matrix~0_combout\ <= NOT \input_matrix~0_combout\;
\ALT_INV_convolution:cont_clock[1]~q\ <= NOT \convolution:cont_clock[1]~q\;
\ALT_INV_convolution:cont_clock[0]~q\ <= NOT \convolution:cont_clock[0]~q\;
\ALT_INV_convolution:cont_clock[2]~q\ <= NOT \convolution:cont_clock[2]~q\;
\ALT_INV_convolution:delay[1]~q\ <= NOT \convolution:delay[1]~q\;
\ALT_INV_convolution:delay[0]~q\ <= NOT \convolution:delay[0]~q\;
ALT_INV_filter_address_a(4) <= NOT filter_address_a(4);
ALT_INV_filter_address_a(3) <= NOT filter_address_a(3);
ALT_INV_filter_address_a(2) <= NOT filter_address_a(2);
ALT_INV_filter_address_a(1) <= NOT filter_address_a(1);
ALT_INV_img_address_a(4) <= NOT img_address_a(4);
ALT_INV_img_address_a(3) <= NOT img_address_a(3);
ALT_INV_img_address_a(2) <= NOT img_address_a(2);
\rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_b\(0) <= NOT \rom_filter2|altsyncram_component|auto_generated|q_b\(0);
\rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_b\(1) <= NOT \rom_filter2|altsyncram_component|auto_generated|q_b\(1);
\rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_b\(2) <= NOT \rom_filter2|altsyncram_component|auto_generated|q_b\(2);
\rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_b\(3) <= NOT \rom_filter2|altsyncram_component|auto_generated|q_b\(3);
\rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_b\(4) <= NOT \rom_filter2|altsyncram_component|auto_generated|q_b\(4);
\rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_b\(5) <= NOT \rom_filter2|altsyncram_component|auto_generated|q_b\(5);
\rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_b\(6) <= NOT \rom_filter2|altsyncram_component|auto_generated|q_b\(6);
\rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_b\(7) <= NOT \rom_filter2|altsyncram_component|auto_generated|q_b\(7);
ALT_INV_img_address_a(1) <= NOT img_address_a(1);
\rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \rom_filter2|altsyncram_component|auto_generated|q_a\(0);
\rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \rom_filter2|altsyncram_component|auto_generated|q_a\(1);
\rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \rom_filter2|altsyncram_component|auto_generated|q_a\(2);
\rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \rom_filter2|altsyncram_component|auto_generated|q_a\(3);
\rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \rom_filter2|altsyncram_component|auto_generated|q_a\(4);
\rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \rom_filter2|altsyncram_component|auto_generated|q_a\(5);
\rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \rom_filter2|altsyncram_component|auto_generated|q_a\(6);
\rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \rom_filter2|altsyncram_component|auto_generated|q_a\(7);
\rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_b\(8) <= NOT \rom_filter2|altsyncram_component|auto_generated|q_b\(8);
\rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \rom_filter2|altsyncram_component|auto_generated|q_a\(8);
\cv_1|ALT_INV_Mult0~25\ <= NOT \cv_1|Mult0~25\;
\cv_1|ALT_INV_Mult0~16\ <= NOT \cv_1|Mult0~16\;
\cv_1|ALT_INV_Mult0~15\ <= NOT \cv_1|Mult0~15\;
\cv_1|ALT_INV_Mult0~14\ <= NOT \cv_1|Mult0~14\;
\cv_1|ALT_INV_Mult0~13\ <= NOT \cv_1|Mult0~13\;
\cv_1|ALT_INV_Mult0~12\ <= NOT \cv_1|Mult0~12\;
\cv_1|ALT_INV_Mult0~11\ <= NOT \cv_1|Mult0~11\;
\cv_1|ALT_INV_Mult0~10\ <= NOT \cv_1|Mult0~10\;
\cv_1|ALT_INV_Mult0~9\ <= NOT \cv_1|Mult0~9\;
\cv_1|ALT_INV_Mult0~8_resulta\ <= NOT \cv_1|Mult0~8_resulta\;
\cv_1|ALT_INV_Mult1~25\ <= NOT \cv_1|Mult1~25\;
\cv_1|ALT_INV_Mult1~16\ <= NOT \cv_1|Mult1~16\;
\cv_1|ALT_INV_Mult1~15\ <= NOT \cv_1|Mult1~15\;
\cv_1|ALT_INV_Mult1~14\ <= NOT \cv_1|Mult1~14\;
\cv_1|ALT_INV_Mult1~13\ <= NOT \cv_1|Mult1~13\;
\cv_1|ALT_INV_Mult1~12\ <= NOT \cv_1|Mult1~12\;
\cv_1|ALT_INV_Mult1~11\ <= NOT \cv_1|Mult1~11\;
\cv_1|ALT_INV_Mult1~10\ <= NOT \cv_1|Mult1~10\;
\cv_1|ALT_INV_Mult1~9\ <= NOT \cv_1|Mult1~9\;
\cv_1|ALT_INV_Mult1~8_resulta\ <= NOT \cv_1|Mult1~8_resulta\;
\cv_1|ALT_INV_Mult2~25\ <= NOT \cv_1|Mult2~25\;
\cv_1|ALT_INV_Mult2~16\ <= NOT \cv_1|Mult2~16\;
\cv_1|ALT_INV_Mult2~15\ <= NOT \cv_1|Mult2~15\;
\cv_1|ALT_INV_Mult2~14\ <= NOT \cv_1|Mult2~14\;
\cv_1|ALT_INV_Mult2~13\ <= NOT \cv_1|Mult2~13\;
\cv_1|ALT_INV_Mult2~12\ <= NOT \cv_1|Mult2~12\;
\cv_1|ALT_INV_Mult2~11\ <= NOT \cv_1|Mult2~11\;
\cv_1|ALT_INV_Mult2~10\ <= NOT \cv_1|Mult2~10\;
\cv_1|ALT_INV_Mult2~9\ <= NOT \cv_1|Mult2~9\;
\cv_1|ALT_INV_Mult2~8_resulta\ <= NOT \cv_1|Mult2~8_resulta\;
\cv_1|ALT_INV_Mult3~25\ <= NOT \cv_1|Mult3~25\;
\cv_1|ALT_INV_Mult3~16\ <= NOT \cv_1|Mult3~16\;
\cv_1|ALT_INV_Mult3~15\ <= NOT \cv_1|Mult3~15\;
\cv_1|ALT_INV_Mult3~14\ <= NOT \cv_1|Mult3~14\;
\cv_1|ALT_INV_Mult3~13\ <= NOT \cv_1|Mult3~13\;
\cv_1|ALT_INV_Mult3~12\ <= NOT \cv_1|Mult3~12\;
\cv_1|ALT_INV_Mult3~11\ <= NOT \cv_1|Mult3~11\;
\cv_1|ALT_INV_Mult3~10\ <= NOT \cv_1|Mult3~10\;
\cv_1|ALT_INV_Mult3~9\ <= NOT \cv_1|Mult3~9\;
\cv_1|ALT_INV_Mult3~8_resulta\ <= NOT \cv_1|Mult3~8_resulta\;
\cv_1|ALT_INV_Mult4~25\ <= NOT \cv_1|Mult4~25\;
\cv_1|ALT_INV_Mult4~16\ <= NOT \cv_1|Mult4~16\;
\cv_1|ALT_INV_Mult4~15\ <= NOT \cv_1|Mult4~15\;
\cv_1|ALT_INV_Mult4~14\ <= NOT \cv_1|Mult4~14\;
\cv_1|ALT_INV_Mult4~13\ <= NOT \cv_1|Mult4~13\;
\cv_1|ALT_INV_Mult4~12\ <= NOT \cv_1|Mult4~12\;
\cv_1|ALT_INV_Mult4~11\ <= NOT \cv_1|Mult4~11\;
\cv_1|ALT_INV_Mult4~10\ <= NOT \cv_1|Mult4~10\;
\cv_1|ALT_INV_Mult4~9\ <= NOT \cv_1|Mult4~9\;
\cv_1|ALT_INV_Mult4~8_resulta\ <= NOT \cv_1|Mult4~8_resulta\;
\cv_1|ALT_INV_Mult5~25\ <= NOT \cv_1|Mult5~25\;
\cv_1|ALT_INV_Mult5~16\ <= NOT \cv_1|Mult5~16\;
\cv_1|ALT_INV_Mult5~15\ <= NOT \cv_1|Mult5~15\;
\cv_1|ALT_INV_Mult5~14\ <= NOT \cv_1|Mult5~14\;
\cv_1|ALT_INV_Mult5~13\ <= NOT \cv_1|Mult5~13\;
\cv_1|ALT_INV_Mult5~12\ <= NOT \cv_1|Mult5~12\;
\cv_1|ALT_INV_Mult5~11\ <= NOT \cv_1|Mult5~11\;
\cv_1|ALT_INV_Mult5~10\ <= NOT \cv_1|Mult5~10\;
\cv_1|ALT_INV_Mult5~9\ <= NOT \cv_1|Mult5~9\;
\cv_1|ALT_INV_Mult5~8_resulta\ <= NOT \cv_1|Mult5~8_resulta\;
\cv_1|ALT_INV_Mult6~25\ <= NOT \cv_1|Mult6~25\;
\cv_1|ALT_INV_Mult6~16\ <= NOT \cv_1|Mult6~16\;
\cv_1|ALT_INV_Mult6~15\ <= NOT \cv_1|Mult6~15\;
\cv_1|ALT_INV_Mult6~14\ <= NOT \cv_1|Mult6~14\;
\cv_1|ALT_INV_Mult6~13\ <= NOT \cv_1|Mult6~13\;
\cv_1|ALT_INV_Mult6~12\ <= NOT \cv_1|Mult6~12\;
\cv_1|ALT_INV_Mult6~11\ <= NOT \cv_1|Mult6~11\;
\cv_1|ALT_INV_Mult6~10\ <= NOT \cv_1|Mult6~10\;
\cv_1|ALT_INV_Mult6~9\ <= NOT \cv_1|Mult6~9\;
\cv_1|ALT_INV_Mult6~8_resulta\ <= NOT \cv_1|Mult6~8_resulta\;
\cv_1|ALT_INV_Mult7~25\ <= NOT \cv_1|Mult7~25\;
\cv_1|ALT_INV_Mult7~16\ <= NOT \cv_1|Mult7~16\;
\cv_1|ALT_INV_Mult7~15\ <= NOT \cv_1|Mult7~15\;
\cv_1|ALT_INV_Mult7~14\ <= NOT \cv_1|Mult7~14\;
\cv_1|ALT_INV_Mult7~13\ <= NOT \cv_1|Mult7~13\;
\cv_1|ALT_INV_Mult7~12\ <= NOT \cv_1|Mult7~12\;
\cv_1|ALT_INV_Mult7~11\ <= NOT \cv_1|Mult7~11\;
\cv_1|ALT_INV_Mult7~10\ <= NOT \cv_1|Mult7~10\;
\cv_1|ALT_INV_Mult7~9\ <= NOT \cv_1|Mult7~9\;
\cv_1|ALT_INV_Mult7~8_resulta\ <= NOT \cv_1|Mult7~8_resulta\;
\cv_1|ALT_INV_Mult8~25\ <= NOT \cv_1|Mult8~25\;
\cv_1|ALT_INV_Mult8~16\ <= NOT \cv_1|Mult8~16\;
\cv_1|ALT_INV_Mult8~15\ <= NOT \cv_1|Mult8~15\;
\cv_1|ALT_INV_Mult8~14\ <= NOT \cv_1|Mult8~14\;
\cv_1|ALT_INV_Mult8~13\ <= NOT \cv_1|Mult8~13\;
\cv_1|ALT_INV_Mult8~12\ <= NOT \cv_1|Mult8~12\;
\cv_1|ALT_INV_Mult8~11\ <= NOT \cv_1|Mult8~11\;
\cv_1|ALT_INV_Mult8~10\ <= NOT \cv_1|Mult8~10\;
\cv_1|ALT_INV_Mult8~9\ <= NOT \cv_1|Mult8~9\;
\cv_1|ALT_INV_Mult8~8_resulta\ <= NOT \cv_1|Mult8~8_resulta\;
\cv_1|ALT_INV_Mult9~25\ <= NOT \cv_1|Mult9~25\;
\cv_1|ALT_INV_Mult9~16\ <= NOT \cv_1|Mult9~16\;
\cv_1|ALT_INV_Mult9~15\ <= NOT \cv_1|Mult9~15\;
\cv_1|ALT_INV_Mult9~14\ <= NOT \cv_1|Mult9~14\;
\cv_1|ALT_INV_Mult9~13\ <= NOT \cv_1|Mult9~13\;
\cv_1|ALT_INV_Mult9~12\ <= NOT \cv_1|Mult9~12\;
\cv_1|ALT_INV_Mult9~11\ <= NOT \cv_1|Mult9~11\;
\cv_1|ALT_INV_Mult9~10\ <= NOT \cv_1|Mult9~10\;
\cv_1|ALT_INV_Mult9~9\ <= NOT \cv_1|Mult9~9\;
\cv_1|ALT_INV_Mult9~8_resulta\ <= NOT \cv_1|Mult9~8_resulta\;
\cv_1|ALT_INV_Mult10~25\ <= NOT \cv_1|Mult10~25\;
\cv_1|ALT_INV_Mult10~16\ <= NOT \cv_1|Mult10~16\;
\cv_1|ALT_INV_Mult10~15\ <= NOT \cv_1|Mult10~15\;
\cv_1|ALT_INV_Mult10~14\ <= NOT \cv_1|Mult10~14\;
\cv_1|ALT_INV_Mult10~13\ <= NOT \cv_1|Mult10~13\;
\cv_1|ALT_INV_Mult10~12\ <= NOT \cv_1|Mult10~12\;
\cv_1|ALT_INV_Mult10~11\ <= NOT \cv_1|Mult10~11\;
\cv_1|ALT_INV_Mult10~10\ <= NOT \cv_1|Mult10~10\;
\cv_1|ALT_INV_Mult10~9\ <= NOT \cv_1|Mult10~9\;
\cv_1|ALT_INV_Mult10~8_resulta\ <= NOT \cv_1|Mult10~8_resulta\;
\cv_1|ALT_INV_Mult11~25\ <= NOT \cv_1|Mult11~25\;
\cv_1|ALT_INV_Mult11~16\ <= NOT \cv_1|Mult11~16\;
\cv_1|ALT_INV_Mult11~15\ <= NOT \cv_1|Mult11~15\;
\cv_1|ALT_INV_Mult11~14\ <= NOT \cv_1|Mult11~14\;
\cv_1|ALT_INV_Mult11~13\ <= NOT \cv_1|Mult11~13\;
\cv_1|ALT_INV_Mult11~12\ <= NOT \cv_1|Mult11~12\;
\cv_1|ALT_INV_Mult11~11\ <= NOT \cv_1|Mult11~11\;
\cv_1|ALT_INV_Mult11~10\ <= NOT \cv_1|Mult11~10\;
\cv_1|ALT_INV_Mult11~9\ <= NOT \cv_1|Mult11~9\;
\cv_1|ALT_INV_Mult11~8_resulta\ <= NOT \cv_1|Mult11~8_resulta\;
\cv_1|ALT_INV_Mult12~25\ <= NOT \cv_1|Mult12~25\;
\cv_1|ALT_INV_Mult12~16\ <= NOT \cv_1|Mult12~16\;
\cv_1|ALT_INV_Mult12~15\ <= NOT \cv_1|Mult12~15\;
\cv_1|ALT_INV_Mult12~14\ <= NOT \cv_1|Mult12~14\;
\cv_1|ALT_INV_Mult12~13\ <= NOT \cv_1|Mult12~13\;
\cv_1|ALT_INV_Mult12~12\ <= NOT \cv_1|Mult12~12\;
\cv_1|ALT_INV_Mult12~11\ <= NOT \cv_1|Mult12~11\;
\cv_1|ALT_INV_Mult12~10\ <= NOT \cv_1|Mult12~10\;
\cv_1|ALT_INV_Mult12~9\ <= NOT \cv_1|Mult12~9\;
\cv_1|ALT_INV_Mult12~8_resulta\ <= NOT \cv_1|Mult12~8_resulta\;
\cv_1|ALT_INV_Mult13~25\ <= NOT \cv_1|Mult13~25\;
\cv_1|ALT_INV_Mult13~16\ <= NOT \cv_1|Mult13~16\;
\cv_1|ALT_INV_Mult13~15\ <= NOT \cv_1|Mult13~15\;
\cv_1|ALT_INV_Mult13~14\ <= NOT \cv_1|Mult13~14\;
\cv_1|ALT_INV_Mult13~13\ <= NOT \cv_1|Mult13~13\;
\cv_1|ALT_INV_Mult13~12\ <= NOT \cv_1|Mult13~12\;
\cv_1|ALT_INV_Mult13~11\ <= NOT \cv_1|Mult13~11\;
\cv_1|ALT_INV_Mult13~10\ <= NOT \cv_1|Mult13~10\;
\cv_1|ALT_INV_Mult13~9\ <= NOT \cv_1|Mult13~9\;
\cv_1|ALT_INV_Mult13~8_resulta\ <= NOT \cv_1|Mult13~8_resulta\;
\cv_1|ALT_INV_Mult14~25\ <= NOT \cv_1|Mult14~25\;
\cv_1|ALT_INV_Mult14~16\ <= NOT \cv_1|Mult14~16\;
\cv_1|ALT_INV_Mult14~15\ <= NOT \cv_1|Mult14~15\;
\cv_1|ALT_INV_Mult14~14\ <= NOT \cv_1|Mult14~14\;
\cv_1|ALT_INV_Mult14~13\ <= NOT \cv_1|Mult14~13\;
\cv_1|ALT_INV_Mult14~12\ <= NOT \cv_1|Mult14~12\;
\cv_1|ALT_INV_Mult14~11\ <= NOT \cv_1|Mult14~11\;
\cv_1|ALT_INV_Mult14~10\ <= NOT \cv_1|Mult14~10\;
\cv_1|ALT_INV_Mult14~9\ <= NOT \cv_1|Mult14~9\;
\cv_1|ALT_INV_Mult14~8_resulta\ <= NOT \cv_1|Mult14~8_resulta\;
\cv_1|ALT_INV_Mult15~25\ <= NOT \cv_1|Mult15~25\;
\cv_1|ALT_INV_Mult15~16\ <= NOT \cv_1|Mult15~16\;
\cv_1|ALT_INV_Mult15~15\ <= NOT \cv_1|Mult15~15\;
\cv_1|ALT_INV_Mult15~14\ <= NOT \cv_1|Mult15~14\;
\cv_1|ALT_INV_Mult15~13\ <= NOT \cv_1|Mult15~13\;
\cv_1|ALT_INV_Mult15~12\ <= NOT \cv_1|Mult15~12\;
\cv_1|ALT_INV_Mult15~11\ <= NOT \cv_1|Mult15~11\;
\cv_1|ALT_INV_Mult15~10\ <= NOT \cv_1|Mult15~10\;
\cv_1|ALT_INV_Mult15~9\ <= NOT \cv_1|Mult15~9\;
\cv_1|ALT_INV_Mult15~8_resulta\ <= NOT \cv_1|Mult15~8_resulta\;
\cv_1|ALT_INV_Mult16~25\ <= NOT \cv_1|Mult16~25\;
\cv_1|ALT_INV_Mult16~16\ <= NOT \cv_1|Mult16~16\;
\cv_1|ALT_INV_Mult16~15\ <= NOT \cv_1|Mult16~15\;
\cv_1|ALT_INV_Mult16~14\ <= NOT \cv_1|Mult16~14\;
\cv_1|ALT_INV_Mult16~13\ <= NOT \cv_1|Mult16~13\;
\cv_1|ALT_INV_Mult16~12\ <= NOT \cv_1|Mult16~12\;
\cv_1|ALT_INV_Mult16~11\ <= NOT \cv_1|Mult16~11\;
\cv_1|ALT_INV_Mult16~10\ <= NOT \cv_1|Mult16~10\;
\cv_1|ALT_INV_Mult16~9\ <= NOT \cv_1|Mult16~9\;
\cv_1|ALT_INV_Mult16~8_resulta\ <= NOT \cv_1|Mult16~8_resulta\;
\cv_1|ALT_INV_Mult17~25\ <= NOT \cv_1|Mult17~25\;
\cv_1|ALT_INV_Mult17~16\ <= NOT \cv_1|Mult17~16\;
\cv_1|ALT_INV_Mult17~15\ <= NOT \cv_1|Mult17~15\;
\cv_1|ALT_INV_Mult17~14\ <= NOT \cv_1|Mult17~14\;
\cv_1|ALT_INV_Mult17~13\ <= NOT \cv_1|Mult17~13\;
\cv_1|ALT_INV_Mult17~12\ <= NOT \cv_1|Mult17~12\;
\cv_1|ALT_INV_Mult17~11\ <= NOT \cv_1|Mult17~11\;
\cv_1|ALT_INV_Mult17~10\ <= NOT \cv_1|Mult17~10\;
\cv_1|ALT_INV_Mult17~9\ <= NOT \cv_1|Mult17~9\;
\cv_1|ALT_INV_Mult17~8_resulta\ <= NOT \cv_1|Mult17~8_resulta\;
\cv_1|ALT_INV_Add0~117_sumout\ <= NOT \cv_1|Add0~117_sumout\;
\cv_1|ALT_INV_Add1~37_sumout\ <= NOT \cv_1|Add1~37_sumout\;
\cv_1|ALT_INV_Add5~37_sumout\ <= NOT \cv_1|Add5~37_sumout\;
\cv_1|ALT_INV_Add8~77_sumout\ <= NOT \cv_1|Add8~77_sumout\;
\cv_1|ALT_INV_Add9~37_sumout\ <= NOT \cv_1|Add9~37_sumout\;
\cv_1|ALT_INV_Add13~37_sumout\ <= NOT \cv_1|Add13~37_sumout\;
\cv_1|ALT_INV_Add0~113_sumout\ <= NOT \cv_1|Add0~113_sumout\;
\cv_1|ALT_INV_Add1~33_sumout\ <= NOT \cv_1|Add1~33_sumout\;
\cv_1|ALT_INV_Add5~33_sumout\ <= NOT \cv_1|Add5~33_sumout\;
\cv_1|ALT_INV_Add8~73_sumout\ <= NOT \cv_1|Add8~73_sumout\;
\cv_1|ALT_INV_Add9~33_sumout\ <= NOT \cv_1|Add9~33_sumout\;
\cv_1|ALT_INV_Add13~33_sumout\ <= NOT \cv_1|Add13~33_sumout\;
\cv_1|ALT_INV_Add0~109_sumout\ <= NOT \cv_1|Add0~109_sumout\;
\cv_1|ALT_INV_Add1~29_sumout\ <= NOT \cv_1|Add1~29_sumout\;
\cv_1|ALT_INV_Add5~29_sumout\ <= NOT \cv_1|Add5~29_sumout\;
\cv_1|ALT_INV_Add8~69_sumout\ <= NOT \cv_1|Add8~69_sumout\;
\cv_1|ALT_INV_Add9~29_sumout\ <= NOT \cv_1|Add9~29_sumout\;
\cv_1|ALT_INV_Add13~29_sumout\ <= NOT \cv_1|Add13~29_sumout\;
\cv_1|ALT_INV_Add0~105_sumout\ <= NOT \cv_1|Add0~105_sumout\;
\cv_1|ALT_INV_Add1~25_sumout\ <= NOT \cv_1|Add1~25_sumout\;
\cv_1|ALT_INV_Add5~25_sumout\ <= NOT \cv_1|Add5~25_sumout\;
\cv_1|ALT_INV_Add8~65_sumout\ <= NOT \cv_1|Add8~65_sumout\;
\cv_1|ALT_INV_Add9~25_sumout\ <= NOT \cv_1|Add9~25_sumout\;
\cv_1|ALT_INV_Add13~25_sumout\ <= NOT \cv_1|Add13~25_sumout\;
\cv_1|ALT_INV_Add0~101_sumout\ <= NOT \cv_1|Add0~101_sumout\;
\cv_1|ALT_INV_Add1~21_sumout\ <= NOT \cv_1|Add1~21_sumout\;
\cv_1|ALT_INV_Add5~21_sumout\ <= NOT \cv_1|Add5~21_sumout\;
\cv_1|ALT_INV_Add8~61_sumout\ <= NOT \cv_1|Add8~61_sumout\;
\cv_1|ALT_INV_Add9~21_sumout\ <= NOT \cv_1|Add9~21_sumout\;
\cv_1|ALT_INV_Add13~21_sumout\ <= NOT \cv_1|Add13~21_sumout\;
\cv_1|ALT_INV_Add0~97_sumout\ <= NOT \cv_1|Add0~97_sumout\;
\cv_1|ALT_INV_Add1~17_sumout\ <= NOT \cv_1|Add1~17_sumout\;
\cv_1|ALT_INV_Add5~17_sumout\ <= NOT \cv_1|Add5~17_sumout\;
\cv_1|ALT_INV_Add8~57_sumout\ <= NOT \cv_1|Add8~57_sumout\;
\cv_1|ALT_INV_Add9~17_sumout\ <= NOT \cv_1|Add9~17_sumout\;
\cv_1|ALT_INV_Add13~17_sumout\ <= NOT \cv_1|Add13~17_sumout\;
\cv_1|ALT_INV_Add0~93_sumout\ <= NOT \cv_1|Add0~93_sumout\;
\cv_1|ALT_INV_Add1~13_sumout\ <= NOT \cv_1|Add1~13_sumout\;
\cv_1|ALT_INV_Add5~13_sumout\ <= NOT \cv_1|Add5~13_sumout\;
\cv_1|ALT_INV_Add8~53_sumout\ <= NOT \cv_1|Add8~53_sumout\;
\cv_1|ALT_INV_Add9~13_sumout\ <= NOT \cv_1|Add9~13_sumout\;
\cv_1|ALT_INV_Add13~13_sumout\ <= NOT \cv_1|Add13~13_sumout\;
\cv_1|ALT_INV_Add0~89_sumout\ <= NOT \cv_1|Add0~89_sumout\;
\cv_1|ALT_INV_Add1~9_sumout\ <= NOT \cv_1|Add1~9_sumout\;
\cv_1|ALT_INV_Add5~9_sumout\ <= NOT \cv_1|Add5~9_sumout\;
\cv_1|ALT_INV_Add8~49_sumout\ <= NOT \cv_1|Add8~49_sumout\;
\cv_1|ALT_INV_Add9~9_sumout\ <= NOT \cv_1|Add9~9_sumout\;
\cv_1|ALT_INV_Add13~9_sumout\ <= NOT \cv_1|Add13~9_sumout\;
\cv_1|ALT_INV_Add0~85_sumout\ <= NOT \cv_1|Add0~85_sumout\;
\cv_1|ALT_INV_Add1~5_sumout\ <= NOT \cv_1|Add1~5_sumout\;
\cv_1|ALT_INV_Add5~5_sumout\ <= NOT \cv_1|Add5~5_sumout\;
\cv_1|ALT_INV_Add8~45_sumout\ <= NOT \cv_1|Add8~45_sumout\;
\cv_1|ALT_INV_Add9~5_sumout\ <= NOT \cv_1|Add9~5_sumout\;
\cv_1|ALT_INV_Add13~5_sumout\ <= NOT \cv_1|Add13~5_sumout\;
\cv_1|ALT_INV_Add0~81_sumout\ <= NOT \cv_1|Add0~81_sumout\;
\cv_1|ALT_INV_Add1~1_sumout\ <= NOT \cv_1|Add1~1_sumout\;
\cv_1|ALT_INV_Add5~1_sumout\ <= NOT \cv_1|Add5~1_sumout\;
\cv_1|ALT_INV_Add8~41_sumout\ <= NOT \cv_1|Add8~41_sumout\;
\cv_1|ALT_INV_Add9~1_sumout\ <= NOT \cv_1|Add9~1_sumout\;
\cv_1|ALT_INV_Add13~1_sumout\ <= NOT \cv_1|Add13~1_sumout\;
\cv_1|ALT_INV_Add0~77_sumout\ <= NOT \cv_1|Add0~77_sumout\;
\cv_1|ALT_INV_Add8~37_sumout\ <= NOT \cv_1|Add8~37_sumout\;
\cv_1|ALT_INV_Add0~73_sumout\ <= NOT \cv_1|Add0~73_sumout\;
\cv_1|ALT_INV_Add8~33_sumout\ <= NOT \cv_1|Add8~33_sumout\;
\cv_1|ALT_INV_Add0~69_sumout\ <= NOT \cv_1|Add0~69_sumout\;
\cv_1|ALT_INV_Add8~29_sumout\ <= NOT \cv_1|Add8~29_sumout\;
\cv_1|ALT_INV_Add0~65_sumout\ <= NOT \cv_1|Add0~65_sumout\;
\cv_1|ALT_INV_Add8~25_sumout\ <= NOT \cv_1|Add8~25_sumout\;
\cv_1|ALT_INV_Add0~61_sumout\ <= NOT \cv_1|Add0~61_sumout\;
\cv_1|ALT_INV_Add8~21_sumout\ <= NOT \cv_1|Add8~21_sumout\;
\cv_1|ALT_INV_Add0~57_sumout\ <= NOT \cv_1|Add0~57_sumout\;
\cv_1|ALT_INV_Add8~17_sumout\ <= NOT \cv_1|Add8~17_sumout\;
\cv_1|ALT_INV_Add0~53_sumout\ <= NOT \cv_1|Add0~53_sumout\;
\cv_1|ALT_INV_Add8~13_sumout\ <= NOT \cv_1|Add8~13_sumout\;
\cv_1|ALT_INV_Add0~49_sumout\ <= NOT \cv_1|Add0~49_sumout\;
\cv_1|ALT_INV_Add8~9_sumout\ <= NOT \cv_1|Add8~9_sumout\;
\cv_1|ALT_INV_Add0~45_sumout\ <= NOT \cv_1|Add0~45_sumout\;
\cv_1|ALT_INV_Add8~5_sumout\ <= NOT \cv_1|Add8~5_sumout\;
\cv_1|ALT_INV_Add0~41_sumout\ <= NOT \cv_1|Add0~41_sumout\;
\cv_1|ALT_INV_Add8~1_sumout\ <= NOT \cv_1|Add8~1_sumout\;
\cv_1|ALT_INV_Add0~37_sumout\ <= NOT \cv_1|Add0~37_sumout\;
\cv_1|ALT_INV_Add0~33_sumout\ <= NOT \cv_1|Add0~33_sumout\;
\cv_1|ALT_INV_Add0~29_sumout\ <= NOT \cv_1|Add0~29_sumout\;
\cv_1|ALT_INV_Add0~25_sumout\ <= NOT \cv_1|Add0~25_sumout\;
\cv_1|ALT_INV_Add0~21_sumout\ <= NOT \cv_1|Add0~21_sumout\;
\cv_1|ALT_INV_Add0~17_sumout\ <= NOT \cv_1|Add0~17_sumout\;
\cv_1|ALT_INV_Add0~13_sumout\ <= NOT \cv_1|Add0~13_sumout\;
\cv_1|ALT_INV_Add0~5_sumout\ <= NOT \cv_1|Add0~5_sumout\;
\cv_1|ALT_INV_Add0~1_sumout\ <= NOT \cv_1|Add0~1_sumout\;

-- Location: IOOBUF_X18_Y0_N19
\cv_n_o[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cv_1|cv_o\(0),
	devoe => ww_devoe,
	o => ww_cv_n_o(0));

-- Location: IOOBUF_X18_Y0_N2
\cv_n_o[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cv_1|cv_o\(1),
	devoe => ww_devoe,
	o => ww_cv_n_o(1));

-- Location: IOOBUF_X0_Y20_N39
\cv_n_o[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cv_1|cv_o\(2),
	devoe => ww_devoe,
	o => ww_cv_n_o(2));

-- Location: IOOBUF_X14_Y0_N2
\cv_n_o[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cv_1|cv_o\(3),
	devoe => ww_devoe,
	o => ww_cv_n_o(3));

-- Location: IOOBUF_X0_Y18_N79
\cv_n_o[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cv_1|cv_o\(4),
	devoe => ww_devoe,
	o => ww_cv_n_o(4));

-- Location: IOOBUF_X0_Y18_N45
\cv_n_o[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cv_1|cv_o\(5),
	devoe => ww_devoe,
	o => ww_cv_n_o(5));

-- Location: IOOBUF_X0_Y18_N62
\cv_n_o[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cv_1|cv_o\(6),
	devoe => ww_devoe,
	o => ww_cv_n_o(6));

-- Location: IOOBUF_X16_Y0_N93
\cv_n_o[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cv_1|cv_o\(7),
	devoe => ww_devoe,
	o => ww_cv_n_o(7));

-- Location: IOIBUF_X54_Y18_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X14_Y0_N52
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X14_Y12_N12
\convolution:delay[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \convolution:delay[0]~0_combout\ = ( \convolution:delay[1]~q\ & ( (\reset~input_o\ & \convolution:delay[0]~q\) ) ) # ( !\convolution:delay[1]~q\ & ( !\reset~input_o\ $ (\convolution:delay[0]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_convolution:delay[0]~q\,
	dataf => \ALT_INV_convolution:delay[1]~q\,
	combout => \convolution:delay[0]~0_combout\);

-- Location: FF_X14_Y12_N14
\convolution:delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \convolution:delay[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convolution:delay[0]~q\);

-- Location: LABCELL_X14_Y12_N54
\convolution:delay[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \convolution:delay[1]~0_combout\ = ( \convolution:delay[1]~q\ & ( \convolution:delay[0]~q\ ) ) # ( \convolution:delay[1]~q\ & ( !\convolution:delay[0]~q\ & ( ((\convolution:cont_clock[1]~q\ & \convolution:cont_clock[2]~q\)) # (\reset~input_o\) ) ) ) # ( 
-- !\convolution:delay[1]~q\ & ( !\convolution:delay[0]~q\ & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001101110011011100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_convolution:cont_clock[1]~q\,
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_convolution:cont_clock[2]~q\,
	datae => \ALT_INV_convolution:delay[1]~q\,
	dataf => \ALT_INV_convolution:delay[0]~q\,
	combout => \convolution:delay[1]~0_combout\);

-- Location: FF_X14_Y12_N56
\convolution:delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \convolution:delay[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convolution:delay[1]~q\);

-- Location: LABCELL_X14_Y12_N42
\cont_clock~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_clock~1_combout\ = ( \convolution:cont_clock[0]~q\ & ( \convolution:cont_clock[2]~q\ & ( (!\reset~input_o\ & ((!\convolution:delay[1]~q\) # (\convolution:delay[0]~q\))) ) ) ) # ( !\convolution:cont_clock[0]~q\ & ( \convolution:cont_clock[2]~q\ & ( 
-- (!\convolution:cont_clock[1]~q\ & (!\reset~input_o\ & (\convolution:delay[1]~q\ & !\convolution:delay[0]~q\))) ) ) ) # ( \convolution:cont_clock[0]~q\ & ( !\convolution:cont_clock[2]~q\ & ( (!\reset~input_o\ & ((!\convolution:delay[1]~q\) # 
-- (\convolution:delay[0]~q\))) ) ) ) # ( !\convolution:cont_clock[0]~q\ & ( !\convolution:cont_clock[2]~q\ & ( (!\reset~input_o\ & (\convolution:delay[1]~q\ & !\convolution:delay[0]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000110000001100110000001000000000001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_convolution:cont_clock[1]~q\,
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_convolution:delay[1]~q\,
	datad => \ALT_INV_convolution:delay[0]~q\,
	datae => \ALT_INV_convolution:cont_clock[0]~q\,
	dataf => \ALT_INV_convolution:cont_clock[2]~q\,
	combout => \cont_clock~1_combout\);

-- Location: FF_X14_Y12_N44
\convolution:cont_clock[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cont_clock~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convolution:cont_clock[0]~q\);

-- Location: LABCELL_X14_Y12_N36
\cont_clock~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_clock~2_combout\ = ( \convolution:cont_clock[1]~q\ & ( \convolution:delay[1]~q\ & ( (\convolution:cont_clock[0]~q\ & (!\reset~input_o\ & (!\convolution:cont_clock[2]~q\ & !\convolution:delay[0]~q\))) ) ) ) # ( !\convolution:cont_clock[1]~q\ & ( 
-- \convolution:delay[1]~q\ & ( (!\convolution:cont_clock[0]~q\ & (!\reset~input_o\ & !\convolution:delay[0]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_convolution:cont_clock[0]~q\,
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_convolution:cont_clock[2]~q\,
	datad => \ALT_INV_convolution:delay[0]~q\,
	datae => \ALT_INV_convolution:cont_clock[1]~q\,
	dataf => \ALT_INV_convolution:delay[1]~q\,
	combout => \cont_clock~2_combout\);

-- Location: LABCELL_X14_Y12_N9
\convolution:cont_clock[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \convolution:cont_clock[1]~0_combout\ = ( \convolution:delay[0]~q\ & ( \reset~input_o\ ) ) # ( !\convolution:delay[0]~q\ & ( (\convolution:delay[1]~q\) # (\reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_convolution:delay[1]~q\,
	dataf => \ALT_INV_convolution:delay[0]~q\,
	combout => \convolution:cont_clock[1]~0_combout\);

-- Location: FF_X14_Y12_N38
\convolution:cont_clock[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cont_clock~2_combout\,
	ena => \convolution:cont_clock[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convolution:cont_clock[1]~q\);

-- Location: LABCELL_X14_Y12_N24
\cont_clock~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_clock~0_combout\ = ( \convolution:cont_clock[2]~q\ & ( !\convolution:delay[0]~q\ & ( (!\convolution:cont_clock[1]~q\ & (!\reset~input_o\ & \convolution:delay[1]~q\)) ) ) ) # ( !\convolution:cont_clock[2]~q\ & ( !\convolution:delay[0]~q\ & ( 
-- (\convolution:cont_clock[1]~q\ & (!\reset~input_o\ & (\convolution:delay[1]~q\ & !\convolution:cont_clock[0]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_convolution:cont_clock[1]~q\,
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_convolution:delay[1]~q\,
	datad => \ALT_INV_convolution:cont_clock[0]~q\,
	datae => \ALT_INV_convolution:cont_clock[2]~q\,
	dataf => \ALT_INV_convolution:delay[0]~q\,
	combout => \cont_clock~0_combout\);

-- Location: FF_X14_Y12_N26
\convolution:cont_clock[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cont_clock~0_combout\,
	ena => \convolution:cont_clock[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convolution:cont_clock[2]~q\);

-- Location: LABCELL_X14_Y12_N33
\input_matrix~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_matrix~0_combout\ = ( \convolution:cont_clock[0]~q\ & ( (\convolution:cont_clock[2]~q\ & (\convolution:delay[1]~q\ & (!\convolution:delay[0]~q\ & \convolution:cont_clock[1]~q\))) ) ) # ( !\convolution:cont_clock[0]~q\ & ( 
-- (\convolution:cont_clock[2]~q\ & (\convolution:delay[1]~q\ & !\convolution:delay[0]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_convolution:cont_clock[2]~q\,
	datab => \ALT_INV_convolution:delay[1]~q\,
	datac => \ALT_INV_convolution:delay[0]~q\,
	datad => \ALT_INV_convolution:cont_clock[1]~q\,
	dataf => \ALT_INV_convolution:cont_clock[0]~q\,
	combout => \input_matrix~0_combout\);

-- Location: LABCELL_X14_Y12_N3
\convolution:index_matrix[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \convolution:index_matrix[1]~0_combout\ = ( !\convolution:delay[0]~q\ & ( (\convolution:delay[1]~q\ & ((!\convolution:cont_clock[2]~q\) # ((\convolution:cont_clock[0]~q\ & !\convolution:cont_clock[1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001100000011010000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_convolution:cont_clock[0]~q\,
	datab => \ALT_INV_convolution:cont_clock[2]~q\,
	datac => \ALT_INV_convolution:delay[1]~q\,
	datad => \ALT_INV_convolution:cont_clock[1]~q\,
	dataf => \ALT_INV_convolution:delay[0]~q\,
	combout => \convolution:index_matrix[1]~0_combout\);

-- Location: LABCELL_X16_Y12_N54
\index_matrix~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \index_matrix~1_combout\ = (!\reset~input_o\ & (\convolution:index_matrix[1]~0_combout\ & !\convolution:index_matrix[1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_convolution:index_matrix[1]~0_combout\,
	datad => \ALT_INV_convolution:index_matrix[1]~q\,
	combout => \index_matrix~1_combout\);

-- Location: LABCELL_X14_Y12_N48
\convolution:index_matrix[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convolution:index_matrix[1]~1_combout\ = ( \convolution:cont_clock[1]~q\ & ( \convolution:delay[0]~q\ & ( \reset~input_o\ ) ) ) # ( !\convolution:cont_clock[1]~q\ & ( \convolution:delay[0]~q\ & ( \reset~input_o\ ) ) ) # ( \convolution:cont_clock[1]~q\ & 
-- ( !\convolution:delay[0]~q\ & ( (\reset~input_o\) # (\convolution:delay[1]~q\) ) ) ) # ( !\convolution:cont_clock[1]~q\ & ( !\convolution:delay[0]~q\ & ( ((\convolution:delay[1]~q\ & ((!\convolution:cont_clock[2]~q\) # (\convolution:cont_clock[0]~q\)))) # 
-- (\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001111111111001100111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_convolution:cont_clock[2]~q\,
	datab => \ALT_INV_convolution:delay[1]~q\,
	datac => \ALT_INV_convolution:cont_clock[0]~q\,
	datad => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_convolution:cont_clock[1]~q\,
	dataf => \ALT_INV_convolution:delay[0]~q\,
	combout => \convolution:index_matrix[1]~1_combout\);

-- Location: FF_X16_Y12_N56
\convolution:index_matrix[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \index_matrix~1_combout\,
	ena => \convolution:index_matrix[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convolution:index_matrix[1]~q\);

-- Location: LABCELL_X16_Y12_N51
\index_matrix~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \index_matrix~2_combout\ = ( \convolution:index_matrix[1]~q\ & ( (!\reset~input_o\ & (\convolution:index_matrix[1]~0_combout\ & !\convolution:index_matrix[2]~q\)) ) ) # ( !\convolution:index_matrix[1]~q\ & ( (!\reset~input_o\ & 
-- (\convolution:index_matrix[1]~0_combout\ & \convolution:index_matrix[2]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_convolution:index_matrix[1]~0_combout\,
	datad => \ALT_INV_convolution:index_matrix[2]~q\,
	dataf => \ALT_INV_convolution:index_matrix[1]~q\,
	combout => \index_matrix~2_combout\);

-- Location: FF_X16_Y12_N53
\convolution:index_matrix[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \index_matrix~2_combout\,
	ena => \convolution:index_matrix[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convolution:index_matrix[2]~q\);

-- Location: LABCELL_X16_Y12_N48
\index_matrix~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \index_matrix~0_combout\ = ( \convolution:index_matrix[1]~q\ & ( (!\reset~input_o\ & (\convolution:index_matrix[1]~0_combout\ & (!\convolution:index_matrix[2]~q\ $ (!\convolution:index_matrix[3]~q\)))) ) ) # ( !\convolution:index_matrix[1]~q\ & ( 
-- (!\reset~input_o\ & (\convolution:index_matrix[1]~0_combout\ & \convolution:index_matrix[3]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000010001000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_convolution:index_matrix[1]~0_combout\,
	datac => \ALT_INV_convolution:index_matrix[2]~q\,
	datad => \ALT_INV_convolution:index_matrix[3]~q\,
	dataf => \ALT_INV_convolution:index_matrix[1]~q\,
	combout => \index_matrix~0_combout\);

-- Location: FF_X16_Y12_N50
\convolution:index_matrix[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \index_matrix~0_combout\,
	ena => \convolution:index_matrix[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convolution:index_matrix[3]~q\);

-- Location: LABCELL_X16_Y12_N0
\Decoder1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder1~1_combout\ = ( \convolution:index_matrix[3]~q\ ) # ( !\convolution:index_matrix[3]~q\ & ( (!\convolution:index_matrix[2]~q\) # (\convolution:index_matrix[1]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_convolution:index_matrix[2]~q\,
	datab => \ALT_INV_convolution:index_matrix[1]~q\,
	dataf => \ALT_INV_convolution:index_matrix[3]~q\,
	combout => \Decoder1~1_combout\);

-- Location: LABCELL_X16_Y12_N30
\input_matrix[5][0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_matrix[5][0]~5_combout\ = (!\reset~input_o\ & (!\input_matrix~0_combout\ & !\Decoder1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_input_matrix~0_combout\,
	datac => \ALT_INV_Decoder1~1_combout\,
	combout => \input_matrix[5][0]~5_combout\);

-- Location: LABCELL_X10_Y13_N39
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: MLABCELL_X13_Y12_N51
\img_address_a[1]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \img_address_a[1]~_wirecell_combout\ = ( !img_address_a(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_img_address_a(1),
	combout => \img_address_a[1]~_wirecell_combout\);

-- Location: LABCELL_X14_Y12_N18
\filter_address_a[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \filter_address_a[3]~0_combout\ = ( \convolution:cont_clock[1]~q\ & ( \convolution:delay[0]~q\ & ( \reset~input_o\ ) ) ) # ( !\convolution:cont_clock[1]~q\ & ( \convolution:delay[0]~q\ & ( \reset~input_o\ ) ) ) # ( \convolution:cont_clock[1]~q\ & ( 
-- !\convolution:delay[0]~q\ & ( ((!\convolution:cont_clock[2]~q\ & \convolution:delay[1]~q\)) # (\reset~input_o\) ) ) ) # ( !\convolution:cont_clock[1]~q\ & ( !\convolution:delay[0]~q\ & ( ((\convolution:delay[1]~q\ & ((!\convolution:cont_clock[2]~q\) # 
-- (\convolution:cont_clock[0]~q\)))) # (\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001111111111001000101111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_convolution:cont_clock[2]~q\,
	datab => \ALT_INV_convolution:delay[1]~q\,
	datac => \ALT_INV_convolution:cont_clock[0]~q\,
	datad => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_convolution:cont_clock[1]~q\,
	dataf => \ALT_INV_convolution:delay[0]~q\,
	combout => \filter_address_a[3]~0_combout\);

-- Location: FF_X13_Y12_N53
\img_address_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \img_address_a[1]~_wirecell_combout\,
	sclr => \reset~input_o\,
	ena => \filter_address_a[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => img_address_a(1));

-- Location: MLABCELL_X13_Y12_N57
\Add7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = ( !img_address_a(2) & ( img_address_a(1) ) ) # ( img_address_a(2) & ( !img_address_a(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_img_address_a(2),
	dataf => ALT_INV_img_address_a(1),
	combout => \Add7~0_combout\);

-- Location: FF_X13_Y12_N59
\img_address_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~0_combout\,
	sclr => \reset~input_o\,
	ena => \filter_address_a[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => img_address_a(2));

-- Location: MLABCELL_X13_Y12_N36
\Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~1_combout\ = ( img_address_a(3) & ( img_address_a(1) & ( !img_address_a(2) ) ) ) # ( !img_address_a(3) & ( img_address_a(1) & ( img_address_a(2) ) ) ) # ( img_address_a(3) & ( !img_address_a(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_img_address_a(2),
	datae => ALT_INV_img_address_a(3),
	dataf => ALT_INV_img_address_a(1),
	combout => \Add7~1_combout\);

-- Location: FF_X13_Y12_N38
\img_address_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~1_combout\,
	sclr => \reset~input_o\,
	ena => \filter_address_a[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => img_address_a(3));

-- Location: MLABCELL_X13_Y12_N30
\Add7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = ( img_address_a(4) & ( img_address_a(1) & ( (!img_address_a(3)) # (!img_address_a(2)) ) ) ) # ( !img_address_a(4) & ( img_address_a(1) & ( (img_address_a(3) & img_address_a(2)) ) ) ) # ( img_address_a(4) & ( !img_address_a(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_img_address_a(3),
	datad => ALT_INV_img_address_a(2),
	datae => ALT_INV_img_address_a(4),
	dataf => ALT_INV_img_address_a(1),
	combout => \Add7~2_combout\);

-- Location: FF_X13_Y12_N32
\img_address_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~2_combout\,
	sclr => \reset~input_o\,
	ena => \filter_address_a[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => img_address_a(4));

-- Location: M10K_X11_Y12_N0
\rom_img|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000000000000000000000000000000000000000000000000000000000000000FF000FF000FF000FF000FF000FF000FF000FF000FF000FF000FF000FF000FF00000000FF000FF00000000FF000FF00000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "img_cpt.hex",
	init_file_layout => "port_a",
	logical_ram_name => "img:rom_img|altsyncram:altsyncram_component|altsyncram_2b04:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 20,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portadatain => \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \rom_img|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X14_Y12_N0
\input_matrix[8][0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_matrix[8][0]~1_combout\ = ( !\convolution:cont_clock[0]~q\ & ( (\convolution:cont_clock[2]~q\ & !\convolution:cont_clock[1]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_convolution:cont_clock[2]~q\,
	datad => \ALT_INV_convolution:cont_clock[1]~q\,
	dataf => \ALT_INV_convolution:cont_clock[0]~q\,
	combout => \input_matrix[8][0]~1_combout\);

-- Location: LABCELL_X14_Y12_N15
\enable_buffer_filter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable_buffer_filter~0_combout\ = ( \convolution:delay[0]~q\ & ( (!\reset~input_o\ & \convolution:enable_buffer_filter~q\) ) ) # ( !\convolution:delay[0]~q\ & ( (!\reset~input_o\ & (((\convolution:delay[1]~q\ & \input_matrix[8][0]~1_combout\)) # 
-- (\convolution:enable_buffer_filter~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011001100000001001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_convolution:delay[1]~q\,
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_input_matrix[8][0]~1_combout\,
	datad => \ALT_INV_convolution:enable_buffer_filter~q\,
	dataf => \ALT_INV_convolution:delay[0]~q\,
	combout => \enable_buffer_filter~0_combout\);

-- Location: FF_X14_Y12_N17
\convolution:enable_buffer_filter\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \enable_buffer_filter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convolution:enable_buffer_filter~q\);

-- Location: MLABCELL_X13_Y12_N3
\Add4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = ( filter_address_a(1) & ( \convolution:enable_buffer_filter~q\ ) ) # ( !filter_address_a(1) & ( !\convolution:enable_buffer_filter~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_filter_address_a(1),
	dataf => \ALT_INV_convolution:enable_buffer_filter~q\,
	combout => \Add4~0_combout\);

-- Location: FF_X13_Y12_N5
\filter_address_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~0_combout\,
	sclr => \reset~input_o\,
	ena => \filter_address_a[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filter_address_a(1));

-- Location: MLABCELL_X13_Y12_N42
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = ( \convolution:enable_buffer_filter~q\ & ( filter_address_a(2) ) ) # ( !\convolution:enable_buffer_filter~q\ & ( !filter_address_a(1) $ (!filter_address_a(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_filter_address_a(1),
	datad => ALT_INV_filter_address_a(2),
	dataf => \ALT_INV_convolution:enable_buffer_filter~q\,
	combout => \Add4~1_combout\);

-- Location: FF_X13_Y12_N44
\filter_address_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~1_combout\,
	sclr => \reset~input_o\,
	ena => \filter_address_a[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filter_address_a(2));

-- Location: MLABCELL_X13_Y12_N27
\Add4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = ( filter_address_a(3) & ( \convolution:enable_buffer_filter~q\ ) ) # ( filter_address_a(3) & ( !\convolution:enable_buffer_filter~q\ & ( (!filter_address_a(2)) # (!filter_address_a(1)) ) ) ) # ( !filter_address_a(3) & ( 
-- !\convolution:enable_buffer_filter~q\ & ( (filter_address_a(2) & filter_address_a(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_filter_address_a(2),
	datad => ALT_INV_filter_address_a(1),
	datae => ALT_INV_filter_address_a(3),
	dataf => \ALT_INV_convolution:enable_buffer_filter~q\,
	combout => \Add4~2_combout\);

-- Location: FF_X13_Y12_N29
\filter_address_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~2_combout\,
	sclr => \reset~input_o\,
	ena => \filter_address_a[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filter_address_a(3));

-- Location: MLABCELL_X13_Y12_N18
\Add4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~3_combout\ = ( filter_address_a(4) & ( \convolution:enable_buffer_filter~q\ ) ) # ( filter_address_a(4) & ( !\convolution:enable_buffer_filter~q\ & ( (!filter_address_a(3)) # ((!filter_address_a(1)) # (!filter_address_a(2))) ) ) ) # ( 
-- !filter_address_a(4) & ( !\convolution:enable_buffer_filter~q\ & ( (filter_address_a(3) & (filter_address_a(1) & filter_address_a(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101111111111111101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_filter_address_a(3),
	datac => ALT_INV_filter_address_a(1),
	datad => ALT_INV_filter_address_a(2),
	datae => ALT_INV_filter_address_a(4),
	dataf => \ALT_INV_convolution:enable_buffer_filter~q\,
	combout => \Add4~3_combout\);

-- Location: FF_X13_Y12_N20
\filter_address_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~3_combout\,
	sclr => \reset~input_o\,
	ena => \filter_address_a[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filter_address_a(4));

-- Location: M10K_X11_Y14_N0
\rom_filter1|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000003FFFF3FDFE3FFFF00000000000000000201004020020100201000003FFFF00402000003FDFE00201000003FFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "filter.hex",
	init_file_layout => "port_a",
	logical_ram_name => "filter:rom_filter1|altsyncram:altsyncram_component|altsyncram_7804:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 20,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 9,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portadatain => \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \rom_filter1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X16_Y13_N48
\input_filter[13][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[13][0]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \input_filter[13][0]~feeder_combout\);

-- Location: LABCELL_X16_Y12_N27
\input_filter[13][0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[13][0]~4_combout\ = ( \convolution:index_matrix[2]~q\ & ( (!\reset~input_o\ & (!\convolution:index_matrix[1]~q\ & (!\input_matrix~0_combout\ & !\convolution:enable_buffer_filter~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_convolution:index_matrix[1]~q\,
	datac => \ALT_INV_input_matrix~0_combout\,
	datad => \ALT_INV_convolution:enable_buffer_filter~q\,
	dataf => \ALT_INV_convolution:index_matrix[2]~q\,
	combout => \input_filter[13][0]~4_combout\);

-- Location: FF_X16_Y13_N49
\input_filter[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[13][0]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(0),
	sload => \Decoder1~1_combout\,
	ena => \input_filter[13][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[13][0]~q\);

-- Location: LABCELL_X16_Y13_N27
\input_filter[13][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[13][1]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \input_filter[13][1]~feeder_combout\);

-- Location: FF_X16_Y13_N28
\input_filter[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[13][1]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(1),
	sload => \Decoder1~1_combout\,
	ena => \input_filter[13][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[13][1]~q\);

-- Location: LABCELL_X16_Y13_N54
\input_filter[13][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[13][2]~feeder_combout\ = \rom_filter2|altsyncram_component|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \input_filter[13][2]~feeder_combout\);

-- Location: FF_X16_Y13_N55
\input_filter[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[13][2]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(2),
	sload => \Decoder1~1_combout\,
	ena => \input_filter[13][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[13][2]~q\);

-- Location: LABCELL_X16_Y13_N45
\input_filter[13][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[13][3]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \input_filter[13][3]~feeder_combout\);

-- Location: FF_X16_Y13_N47
\input_filter[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[13][3]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(3),
	sload => \Decoder1~1_combout\,
	ena => \input_filter[13][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[13][3]~q\);

-- Location: LABCELL_X16_Y13_N6
\input_filter[13][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[13][4]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \input_filter[13][4]~feeder_combout\);

-- Location: FF_X16_Y13_N7
\input_filter[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[13][4]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(4),
	sload => \Decoder1~1_combout\,
	ena => \input_filter[13][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[13][4]~q\);

-- Location: LABCELL_X16_Y13_N12
\input_filter[13][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[13][5]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \input_filter[13][5]~feeder_combout\);

-- Location: FF_X16_Y13_N14
\input_filter[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[13][5]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(5),
	sload => \Decoder1~1_combout\,
	ena => \input_filter[13][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[13][5]~q\);

-- Location: LABCELL_X16_Y13_N33
\input_filter[13][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[13][6]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \input_filter[13][6]~feeder_combout\);

-- Location: FF_X16_Y13_N35
\input_filter[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[13][6]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(6),
	sload => \Decoder1~1_combout\,
	ena => \input_filter[13][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[13][6]~q\);

-- Location: LABCELL_X16_Y13_N36
\input_filter[13][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[13][7]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \input_filter[13][7]~feeder_combout\);

-- Location: FF_X16_Y13_N37
\input_filter[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[13][7]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(7),
	sload => \Decoder1~1_combout\,
	ena => \input_filter[13][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[13][7]~q\);

-- Location: LABCELL_X16_Y13_N0
\input_filter[13][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[13][8]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \input_filter[13][8]~feeder_combout\);

-- Location: FF_X16_Y13_N2
\input_filter[13][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[13][8]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(8),
	sload => \Decoder1~1_combout\,
	ena => \input_filter[13][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[13][8]~q\);

-- Location: DSP_X15_Y13_N0
\cv_1|Mult13~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \cv_1|Mult13~8_ACLR_bus\,
	clk => \cv_1|Mult13~8_CLK_bus\,
	ena => \cv_1|Mult13~8_ENA_bus\,
	ax => \cv_1|Mult13~8_AX_bus\,
	ay => \cv_1|Mult13~8_AY_bus\,
	resulta => \cv_1|Mult13~8_RESULTA_bus\);

-- Location: LABCELL_X16_Y12_N3
\Decoder1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder1~2_combout\ = ( \convolution:index_matrix[3]~q\ ) # ( !\convolution:index_matrix[3]~q\ & ( (!\convolution:index_matrix[1]~q\) # (\convolution:index_matrix[2]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_convolution:index_matrix[2]~q\,
	datab => \ALT_INV_convolution:index_matrix[1]~q\,
	dataf => \ALT_INV_convolution:index_matrix[3]~q\,
	combout => \Decoder1~2_combout\);

-- Location: LABCELL_X16_Y12_N33
\input_filter[12][0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[12][0]~5_combout\ = ( !\convolution:enable_buffer_filter~q\ & ( (!\reset~input_o\ & (!\input_matrix~0_combout\ & !\Decoder1~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_input_matrix~0_combout\,
	datad => \ALT_INV_Decoder1~2_combout\,
	dataf => \ALT_INV_convolution:enable_buffer_filter~q\,
	combout => \input_filter[12][0]~5_combout\);

-- Location: LABCELL_X16_Y12_N36
\input_matrix[3][0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_matrix[3][0]~6_combout\ = (!\input_matrix~0_combout\ & (!\reset~input_o\ & !\Decoder1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_matrix~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_Decoder1~2_combout\,
	combout => \input_matrix[3][0]~6_combout\);

-- Location: DSP_X15_Y3_N0
\cv_1|Mult12~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 8,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \cv_1|Mult12~8_ACLR_bus\,
	clk => \cv_1|Mult12~8_CLK_bus\,
	ena => \cv_1|Mult12~8_ENA_bus\,
	ax => \cv_1|Mult12~8_AX_bus\,
	ay => \cv_1|Mult12~8_AY_bus\,
	resulta => \cv_1|Mult12~8_RESULTA_bus\);

-- Location: LABCELL_X16_Y12_N12
\input_filter[14][0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[14][0]~3_combout\ = (!\reset~input_o\ & (!\input_matrix~0_combout\ & (!\Decoder1~1_combout\ & !\convolution:enable_buffer_filter~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_input_matrix~0_combout\,
	datac => \ALT_INV_Decoder1~1_combout\,
	datad => \ALT_INV_convolution:enable_buffer_filter~q\,
	combout => \input_filter[14][0]~3_combout\);

-- Location: DSP_X15_Y5_N0
\cv_1|Mult14~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 8,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \cv_1|Mult14~8_ACLR_bus\,
	clk => \cv_1|Mult14~8_CLK_bus\,
	ena => \cv_1|Mult14~8_ENA_bus\,
	ax => \cv_1|Mult14~8_AX_bus\,
	ay => \cv_1|Mult14~8_AY_bus\,
	resulta => \cv_1|Mult14~8_RESULTA_bus\);

-- Location: LABCELL_X14_Y13_N0
\cv_1|Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add9~1_sumout\ = SUM(( !\cv_1|Mult14~8_resulta\ $ (!\cv_1|Mult12~8_resulta\ $ (\cv_1|Mult13~8_resulta\)) ) + ( !VCC ) + ( !VCC ))
-- \cv_1|Add9~2\ = CARRY(( !\cv_1|Mult14~8_resulta\ $ (!\cv_1|Mult12~8_resulta\ $ (\cv_1|Mult13~8_resulta\)) ) + ( !VCC ) + ( !VCC ))
-- \cv_1|Add9~3\ = SHARE((!\cv_1|Mult14~8_resulta\ & (\cv_1|Mult12~8_resulta\ & \cv_1|Mult13~8_resulta\)) # (\cv_1|Mult14~8_resulta\ & ((\cv_1|Mult13~8_resulta\) # (\cv_1|Mult12~8_resulta\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult14~8_resulta\,
	datac => \cv_1|ALT_INV_Mult12~8_resulta\,
	datad => \cv_1|ALT_INV_Mult13~8_resulta\,
	cin => GND,
	sharein => GND,
	sumout => \cv_1|Add9~1_sumout\,
	cout => \cv_1|Add9~2\,
	shareout => \cv_1|Add9~3\);

-- Location: LABCELL_X14_Y13_N3
\cv_1|Add9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add9~13_sumout\ = SUM(( !\cv_1|Mult12~9\ $ (!\cv_1|Mult14~9\ $ (\cv_1|Mult13~9\)) ) + ( \cv_1|Add9~3\ ) + ( \cv_1|Add9~2\ ))
-- \cv_1|Add9~14\ = CARRY(( !\cv_1|Mult12~9\ $ (!\cv_1|Mult14~9\ $ (\cv_1|Mult13~9\)) ) + ( \cv_1|Add9~3\ ) + ( \cv_1|Add9~2\ ))
-- \cv_1|Add9~15\ = SHARE((!\cv_1|Mult12~9\ & (\cv_1|Mult14~9\ & \cv_1|Mult13~9\)) # (\cv_1|Mult12~9\ & ((\cv_1|Mult13~9\) # (\cv_1|Mult14~9\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult12~9\,
	datac => \cv_1|ALT_INV_Mult14~9\,
	datad => \cv_1|ALT_INV_Mult13~9\,
	cin => \cv_1|Add9~2\,
	sharein => \cv_1|Add9~3\,
	sumout => \cv_1|Add9~13_sumout\,
	cout => \cv_1|Add9~14\,
	shareout => \cv_1|Add9~15\);

-- Location: LABCELL_X14_Y13_N6
\cv_1|Add9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add9~17_sumout\ = SUM(( !\cv_1|Mult13~10\ $ (!\cv_1|Mult14~10\ $ (\cv_1|Mult12~10\)) ) + ( \cv_1|Add9~15\ ) + ( \cv_1|Add9~14\ ))
-- \cv_1|Add9~18\ = CARRY(( !\cv_1|Mult13~10\ $ (!\cv_1|Mult14~10\ $ (\cv_1|Mult12~10\)) ) + ( \cv_1|Add9~15\ ) + ( \cv_1|Add9~14\ ))
-- \cv_1|Add9~19\ = SHARE((!\cv_1|Mult13~10\ & (\cv_1|Mult14~10\ & \cv_1|Mult12~10\)) # (\cv_1|Mult13~10\ & ((\cv_1|Mult12~10\) # (\cv_1|Mult14~10\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult13~10\,
	datac => \cv_1|ALT_INV_Mult14~10\,
	datad => \cv_1|ALT_INV_Mult12~10\,
	cin => \cv_1|Add9~14\,
	sharein => \cv_1|Add9~15\,
	sumout => \cv_1|Add9~17_sumout\,
	cout => \cv_1|Add9~18\,
	shareout => \cv_1|Add9~19\);

-- Location: LABCELL_X14_Y13_N9
\cv_1|Add9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add9~21_sumout\ = SUM(( !\cv_1|Mult14~11\ $ (!\cv_1|Mult13~11\ $ (\cv_1|Mult12~11\)) ) + ( \cv_1|Add9~19\ ) + ( \cv_1|Add9~18\ ))
-- \cv_1|Add9~22\ = CARRY(( !\cv_1|Mult14~11\ $ (!\cv_1|Mult13~11\ $ (\cv_1|Mult12~11\)) ) + ( \cv_1|Add9~19\ ) + ( \cv_1|Add9~18\ ))
-- \cv_1|Add9~23\ = SHARE((!\cv_1|Mult14~11\ & (\cv_1|Mult13~11\ & \cv_1|Mult12~11\)) # (\cv_1|Mult14~11\ & ((\cv_1|Mult12~11\) # (\cv_1|Mult13~11\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult14~11\,
	datac => \cv_1|ALT_INV_Mult13~11\,
	datad => \cv_1|ALT_INV_Mult12~11\,
	cin => \cv_1|Add9~18\,
	sharein => \cv_1|Add9~19\,
	sumout => \cv_1|Add9~21_sumout\,
	cout => \cv_1|Add9~22\,
	shareout => \cv_1|Add9~23\);

-- Location: LABCELL_X14_Y13_N12
\cv_1|Add9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add9~25_sumout\ = SUM(( !\cv_1|Mult12~12\ $ (!\cv_1|Mult13~12\ $ (\cv_1|Mult14~12\)) ) + ( \cv_1|Add9~23\ ) + ( \cv_1|Add9~22\ ))
-- \cv_1|Add9~26\ = CARRY(( !\cv_1|Mult12~12\ $ (!\cv_1|Mult13~12\ $ (\cv_1|Mult14~12\)) ) + ( \cv_1|Add9~23\ ) + ( \cv_1|Add9~22\ ))
-- \cv_1|Add9~27\ = SHARE((!\cv_1|Mult12~12\ & (\cv_1|Mult13~12\ & \cv_1|Mult14~12\)) # (\cv_1|Mult12~12\ & ((\cv_1|Mult14~12\) # (\cv_1|Mult13~12\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult12~12\,
	datac => \cv_1|ALT_INV_Mult13~12\,
	datad => \cv_1|ALT_INV_Mult14~12\,
	cin => \cv_1|Add9~22\,
	sharein => \cv_1|Add9~23\,
	sumout => \cv_1|Add9~25_sumout\,
	cout => \cv_1|Add9~26\,
	shareout => \cv_1|Add9~27\);

-- Location: LABCELL_X14_Y13_N15
\cv_1|Add9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add9~29_sumout\ = SUM(( !\cv_1|Mult14~13\ $ (!\cv_1|Mult13~13\ $ (\cv_1|Mult12~13\)) ) + ( \cv_1|Add9~27\ ) + ( \cv_1|Add9~26\ ))
-- \cv_1|Add9~30\ = CARRY(( !\cv_1|Mult14~13\ $ (!\cv_1|Mult13~13\ $ (\cv_1|Mult12~13\)) ) + ( \cv_1|Add9~27\ ) + ( \cv_1|Add9~26\ ))
-- \cv_1|Add9~31\ = SHARE((!\cv_1|Mult14~13\ & (\cv_1|Mult13~13\ & \cv_1|Mult12~13\)) # (\cv_1|Mult14~13\ & ((\cv_1|Mult12~13\) # (\cv_1|Mult13~13\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult14~13\,
	datac => \cv_1|ALT_INV_Mult13~13\,
	datad => \cv_1|ALT_INV_Mult12~13\,
	cin => \cv_1|Add9~26\,
	sharein => \cv_1|Add9~27\,
	sumout => \cv_1|Add9~29_sumout\,
	cout => \cv_1|Add9~30\,
	shareout => \cv_1|Add9~31\);

-- Location: LABCELL_X14_Y13_N18
\cv_1|Add9~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add9~33_sumout\ = SUM(( !\cv_1|Mult12~14\ $ (!\cv_1|Mult13~14\ $ (\cv_1|Mult14~14\)) ) + ( \cv_1|Add9~31\ ) + ( \cv_1|Add9~30\ ))
-- \cv_1|Add9~34\ = CARRY(( !\cv_1|Mult12~14\ $ (!\cv_1|Mult13~14\ $ (\cv_1|Mult14~14\)) ) + ( \cv_1|Add9~31\ ) + ( \cv_1|Add9~30\ ))
-- \cv_1|Add9~35\ = SHARE((!\cv_1|Mult12~14\ & (\cv_1|Mult13~14\ & \cv_1|Mult14~14\)) # (\cv_1|Mult12~14\ & ((\cv_1|Mult14~14\) # (\cv_1|Mult13~14\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult12~14\,
	datac => \cv_1|ALT_INV_Mult13~14\,
	datad => \cv_1|ALT_INV_Mult14~14\,
	cin => \cv_1|Add9~30\,
	sharein => \cv_1|Add9~31\,
	sumout => \cv_1|Add9~33_sumout\,
	cout => \cv_1|Add9~34\,
	shareout => \cv_1|Add9~35\);

-- Location: LABCELL_X14_Y13_N21
\cv_1|Add9~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add9~37_sumout\ = SUM(( !\cv_1|Mult13~15\ $ (!\cv_1|Mult14~15\ $ (\cv_1|Mult12~15\)) ) + ( \cv_1|Add9~35\ ) + ( \cv_1|Add9~34\ ))
-- \cv_1|Add9~38\ = CARRY(( !\cv_1|Mult13~15\ $ (!\cv_1|Mult14~15\ $ (\cv_1|Mult12~15\)) ) + ( \cv_1|Add9~35\ ) + ( \cv_1|Add9~34\ ))
-- \cv_1|Add9~39\ = SHARE((!\cv_1|Mult13~15\ & (\cv_1|Mult14~15\ & \cv_1|Mult12~15\)) # (\cv_1|Mult13~15\ & ((\cv_1|Mult12~15\) # (\cv_1|Mult14~15\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult13~15\,
	datac => \cv_1|ALT_INV_Mult14~15\,
	datad => \cv_1|ALT_INV_Mult12~15\,
	cin => \cv_1|Add9~34\,
	sharein => \cv_1|Add9~35\,
	sumout => \cv_1|Add9~37_sumout\,
	cout => \cv_1|Add9~38\,
	shareout => \cv_1|Add9~39\);

-- Location: LABCELL_X14_Y13_N24
\cv_1|Add9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add9~5_sumout\ = SUM(( !\cv_1|Mult13~16\ $ (!\cv_1|Mult12~16\ $ (\cv_1|Mult14~16\)) ) + ( \cv_1|Add9~39\ ) + ( \cv_1|Add9~38\ ))
-- \cv_1|Add9~6\ = CARRY(( !\cv_1|Mult13~16\ $ (!\cv_1|Mult12~16\ $ (\cv_1|Mult14~16\)) ) + ( \cv_1|Add9~39\ ) + ( \cv_1|Add9~38\ ))
-- \cv_1|Add9~7\ = SHARE((!\cv_1|Mult13~16\ & (\cv_1|Mult12~16\ & \cv_1|Mult14~16\)) # (\cv_1|Mult13~16\ & ((\cv_1|Mult14~16\) # (\cv_1|Mult12~16\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult13~16\,
	datac => \cv_1|ALT_INV_Mult12~16\,
	datad => \cv_1|ALT_INV_Mult14~16\,
	cin => \cv_1|Add9~38\,
	sharein => \cv_1|Add9~39\,
	sumout => \cv_1|Add9~5_sumout\,
	cout => \cv_1|Add9~6\,
	shareout => \cv_1|Add9~7\);

-- Location: LABCELL_X16_Y12_N6
\Decoder1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder1~3_combout\ = ( \convolution:index_matrix[3]~q\ ) # ( !\convolution:index_matrix[3]~q\ & ( (\convolution:index_matrix[1]~q\) # (\convolution:index_matrix[2]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_convolution:index_matrix[2]~q\,
	datab => \ALT_INV_convolution:index_matrix[1]~q\,
	dataf => \ALT_INV_convolution:index_matrix[3]~q\,
	combout => \Decoder1~3_combout\);

-- Location: MLABCELL_X13_Y12_N6
\input_matrix[1][0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_matrix[1][0]~7_combout\ = ( !\input_matrix~0_combout\ & ( (!\reset~input_o\ & !\Decoder1~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_Decoder1~3_combout\,
	dataf => \ALT_INV_input_matrix~0_combout\,
	combout => \input_matrix[1][0]~7_combout\);

-- Location: LABCELL_X16_Y15_N21
\input_filter[9][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[9][0]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \input_filter[9][0]~feeder_combout\);

-- Location: LABCELL_X16_Y12_N18
\input_filter[9][0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[9][0]~8_combout\ = ( !\convolution:index_matrix[2]~q\ & ( (!\reset~input_o\ & (!\convolution:index_matrix[1]~q\ & (!\convolution:enable_buffer_filter~q\ & !\input_matrix~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_convolution:index_matrix[1]~q\,
	datac => \ALT_INV_convolution:enable_buffer_filter~q\,
	datad => \ALT_INV_input_matrix~0_combout\,
	dataf => \ALT_INV_convolution:index_matrix[2]~q\,
	combout => \input_filter[9][0]~8_combout\);

-- Location: FF_X16_Y15_N23
\input_filter[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[9][0]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(0),
	sload => \Decoder1~3_combout\,
	ena => \input_filter[9][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[9][0]~q\);

-- Location: LABCELL_X16_Y15_N48
\input_filter[9][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[9][1]~feeder_combout\ = \rom_filter2|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \input_filter[9][1]~feeder_combout\);

-- Location: FF_X16_Y15_N49
\input_filter[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[9][1]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(1),
	sload => \Decoder1~3_combout\,
	ena => \input_filter[9][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[9][1]~q\);

-- Location: LABCELL_X16_Y15_N24
\input_filter[9][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[9][2]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \input_filter[9][2]~feeder_combout\);

-- Location: FF_X16_Y15_N25
\input_filter[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[9][2]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(2),
	sload => \Decoder1~3_combout\,
	ena => \input_filter[9][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[9][2]~q\);

-- Location: LABCELL_X16_Y15_N6
\input_filter[9][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[9][3]~feeder_combout\ = \rom_filter2|altsyncram_component|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \input_filter[9][3]~feeder_combout\);

-- Location: FF_X16_Y15_N7
\input_filter[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[9][3]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(3),
	sload => \Decoder1~3_combout\,
	ena => \input_filter[9][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[9][3]~q\);

-- Location: LABCELL_X16_Y15_N42
\input_filter[9][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[9][4]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \input_filter[9][4]~feeder_combout\);

-- Location: FF_X16_Y15_N44
\input_filter[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[9][4]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(4),
	sload => \Decoder1~3_combout\,
	ena => \input_filter[9][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[9][4]~q\);

-- Location: LABCELL_X16_Y15_N36
\input_filter[9][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[9][5]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \input_filter[9][5]~feeder_combout\);

-- Location: FF_X16_Y15_N37
\input_filter[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[9][5]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(5),
	sload => \Decoder1~3_combout\,
	ena => \input_filter[9][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[9][5]~q\);

-- Location: LABCELL_X16_Y15_N33
\input_filter[9][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[9][6]~feeder_combout\ = \rom_filter2|altsyncram_component|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \input_filter[9][6]~feeder_combout\);

-- Location: FF_X16_Y15_N35
\input_filter[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[9][6]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(6),
	sload => \Decoder1~3_combout\,
	ena => \input_filter[9][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[9][6]~q\);

-- Location: LABCELL_X16_Y15_N15
\input_filter[9][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[9][7]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \input_filter[9][7]~feeder_combout\);

-- Location: FF_X16_Y15_N16
\input_filter[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[9][7]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(7),
	sload => \Decoder1~3_combout\,
	ena => \input_filter[9][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[9][7]~q\);

-- Location: LABCELL_X16_Y15_N57
\input_filter[9][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[9][8]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \input_filter[9][8]~feeder_combout\);

-- Location: FF_X16_Y15_N59
\input_filter[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[9][8]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(8),
	sload => \Decoder1~3_combout\,
	ena => \input_filter[9][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[9][8]~q\);

-- Location: DSP_X15_Y15_N0
\cv_1|Mult9~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \cv_1|Mult9~8_ACLR_bus\,
	clk => \cv_1|Mult9~8_CLK_bus\,
	ena => \cv_1|Mult9~8_ENA_bus\,
	ax => \cv_1|Mult9~8_AX_bus\,
	ay => \cv_1|Mult9~8_AY_bus\,
	resulta => \cv_1|Mult9~8_RESULTA_bus\);

-- Location: LABCELL_X16_Y9_N54
\input_filter[11][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[11][0]~feeder_combout\ = \rom_filter2|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \input_filter[11][0]~feeder_combout\);

-- Location: LABCELL_X16_Y12_N24
\input_filter[11][0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[11][0]~6_combout\ = ( !\convolution:index_matrix[2]~q\ & ( (!\reset~input_o\ & (\convolution:index_matrix[1]~q\ & (!\convolution:enable_buffer_filter~q\ & !\input_matrix~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_convolution:index_matrix[1]~q\,
	datac => \ALT_INV_convolution:enable_buffer_filter~q\,
	datad => \ALT_INV_input_matrix~0_combout\,
	dataf => \ALT_INV_convolution:index_matrix[2]~q\,
	combout => \input_filter[11][0]~6_combout\);

-- Location: FF_X16_Y9_N55
\input_filter[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[11][0]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(0),
	sload => \Decoder1~2_combout\,
	ena => \input_filter[11][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[11][0]~q\);

-- Location: LABCELL_X16_Y9_N9
\input_filter[11][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[11][1]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \input_filter[11][1]~feeder_combout\);

-- Location: FF_X16_Y9_N10
\input_filter[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[11][1]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(1),
	sload => \Decoder1~2_combout\,
	ena => \input_filter[11][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[11][1]~q\);

-- Location: LABCELL_X16_Y9_N3
\input_filter[11][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[11][2]~feeder_combout\ = \rom_filter2|altsyncram_component|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \input_filter[11][2]~feeder_combout\);

-- Location: FF_X16_Y9_N4
\input_filter[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[11][2]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(2),
	sload => \Decoder1~2_combout\,
	ena => \input_filter[11][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[11][2]~q\);

-- Location: LABCELL_X16_Y9_N18
\input_filter[11][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[11][3]~feeder_combout\ = \rom_filter2|altsyncram_component|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \input_filter[11][3]~feeder_combout\);

-- Location: FF_X16_Y9_N19
\input_filter[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[11][3]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(3),
	sload => \Decoder1~2_combout\,
	ena => \input_filter[11][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[11][3]~q\);

-- Location: LABCELL_X16_Y9_N51
\input_filter[11][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[11][4]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \input_filter[11][4]~feeder_combout\);

-- Location: FF_X16_Y9_N52
\input_filter[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[11][4]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(4),
	sload => \Decoder1~2_combout\,
	ena => \input_filter[11][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[11][4]~q\);

-- Location: LABCELL_X16_Y9_N12
\input_filter[11][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[11][5]~feeder_combout\ = \rom_filter2|altsyncram_component|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \input_filter[11][5]~feeder_combout\);

-- Location: FF_X16_Y9_N14
\input_filter[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[11][5]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(5),
	sload => \Decoder1~2_combout\,
	ena => \input_filter[11][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[11][5]~q\);

-- Location: LABCELL_X16_Y9_N33
\input_filter[11][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[11][6]~feeder_combout\ = \rom_filter2|altsyncram_component|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \input_filter[11][6]~feeder_combout\);

-- Location: FF_X16_Y9_N35
\input_filter[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[11][6]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(6),
	sload => \Decoder1~2_combout\,
	ena => \input_filter[11][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[11][6]~q\);

-- Location: LABCELL_X16_Y9_N39
\input_filter[11][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[11][7]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \input_filter[11][7]~feeder_combout\);

-- Location: FF_X16_Y9_N40
\input_filter[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[11][7]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(7),
	sload => \Decoder1~2_combout\,
	ena => \input_filter[11][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[11][7]~q\);

-- Location: LABCELL_X16_Y9_N42
\input_filter[11][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[11][8]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \input_filter[11][8]~feeder_combout\);

-- Location: FF_X16_Y9_N44
\input_filter[11][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[11][8]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(8),
	sload => \Decoder1~2_combout\,
	ena => \input_filter[11][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[11][8]~q\);

-- Location: DSP_X15_Y9_N0
\cv_1|Mult11~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \cv_1|Mult11~8_ACLR_bus\,
	clk => \cv_1|Mult11~8_CLK_bus\,
	ena => \cv_1|Mult11~8_ENA_bus\,
	ax => \cv_1|Mult11~8_AX_bus\,
	ay => \cv_1|Mult11~8_AY_bus\,
	resulta => \cv_1|Mult11~8_RESULTA_bus\);

-- Location: LABCELL_X14_Y17_N33
\input_filter[10][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[10][0]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \input_filter[10][0]~feeder_combout\);

-- Location: LABCELL_X16_Y12_N42
\input_filter[10][0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[10][0]~7_combout\ = ( !\convolution:enable_buffer_filter~q\ & ( \convolution:index_matrix[3]~q\ & ( (!\reset~input_o\ & (!\input_matrix~0_combout\ & (!\convolution:index_matrix[2]~q\ & \convolution:index_matrix[1]~q\))) ) ) ) # ( 
-- !\convolution:enable_buffer_filter~q\ & ( !\convolution:index_matrix[3]~q\ & ( (!\reset~input_o\ & (!\input_matrix~0_combout\ & (!\convolution:index_matrix[2]~q\ & !\convolution:index_matrix[1]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_input_matrix~0_combout\,
	datac => \ALT_INV_convolution:index_matrix[2]~q\,
	datad => \ALT_INV_convolution:index_matrix[1]~q\,
	datae => \ALT_INV_convolution:enable_buffer_filter~q\,
	dataf => \ALT_INV_convolution:index_matrix[3]~q\,
	combout => \input_filter[10][0]~7_combout\);

-- Location: FF_X14_Y17_N34
\input_filter[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[10][0]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_a\(0),
	sload => \Decoder1~3_combout\,
	ena => \input_filter[10][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[10][0]~q\);

-- Location: LABCELL_X14_Y17_N6
\input_filter[10][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[10][1]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_b\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	combout => \input_filter[10][1]~feeder_combout\);

-- Location: FF_X14_Y17_N7
\input_filter[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[10][1]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_a\(1),
	sload => \Decoder1~3_combout\,
	ena => \input_filter[10][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[10][1]~q\);

-- Location: LABCELL_X14_Y17_N21
\input_filter[10][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[10][2]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_b\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	combout => \input_filter[10][2]~feeder_combout\);

-- Location: FF_X14_Y17_N22
\input_filter[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[10][2]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_a\(2),
	sload => \Decoder1~3_combout\,
	ena => \input_filter[10][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[10][2]~q\);

-- Location: LABCELL_X14_Y17_N0
\input_filter[10][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[10][3]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_b\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	combout => \input_filter[10][3]~feeder_combout\);

-- Location: FF_X14_Y17_N1
\input_filter[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[10][3]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_a\(3),
	sload => \Decoder1~3_combout\,
	ena => \input_filter[10][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[10][3]~q\);

-- Location: LABCELL_X14_Y17_N57
\input_filter[10][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[10][4]~feeder_combout\ = \rom_filter2|altsyncram_component|auto_generated|q_b\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_b\(4),
	combout => \input_filter[10][4]~feeder_combout\);

-- Location: FF_X14_Y17_N58
\input_filter[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[10][4]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_a\(4),
	sload => \Decoder1~3_combout\,
	ena => \input_filter[10][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[10][4]~q\);

-- Location: LABCELL_X14_Y17_N12
\input_filter[10][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[10][5]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_b\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_b\(5),
	combout => \input_filter[10][5]~feeder_combout\);

-- Location: FF_X14_Y17_N13
\input_filter[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[10][5]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_a\(5),
	sload => \Decoder1~3_combout\,
	ena => \input_filter[10][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[10][5]~q\);

-- Location: LABCELL_X14_Y17_N51
\input_filter[10][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[10][6]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_b\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	combout => \input_filter[10][6]~feeder_combout\);

-- Location: FF_X14_Y17_N52
\input_filter[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[10][6]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_a\(6),
	sload => \Decoder1~3_combout\,
	ena => \input_filter[10][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[10][6]~q\);

-- Location: LABCELL_X14_Y17_N36
\input_filter[10][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[10][7]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_b\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	combout => \input_filter[10][7]~feeder_combout\);

-- Location: FF_X14_Y17_N38
\input_filter[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[10][7]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_a\(7),
	sload => \Decoder1~3_combout\,
	ena => \input_filter[10][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[10][7]~q\);

-- Location: LABCELL_X14_Y17_N24
\input_filter[10][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[10][8]~feeder_combout\ = \rom_filter2|altsyncram_component|auto_generated|q_b\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_b\(8),
	combout => \input_filter[10][8]~feeder_combout\);

-- Location: FF_X14_Y17_N26
\input_filter[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[10][8]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_a\(8),
	sload => \Decoder1~3_combout\,
	ena => \input_filter[10][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[10][8]~q\);

-- Location: DSP_X15_Y17_N0
\cv_1|Mult10~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \cv_1|Mult10~8_ACLR_bus\,
	clk => \cv_1|Mult10~8_CLK_bus\,
	ena => \cv_1|Mult10~8_ENA_bus\,
	ax => \cv_1|Mult10~8_AX_bus\,
	ay => \cv_1|Mult10~8_AY_bus\,
	resulta => \cv_1|Mult10~8_RESULTA_bus\);

-- Location: LABCELL_X14_Y15_N30
\cv_1|Add8~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~41_sumout\ = SUM(( !\cv_1|Mult9~8_resulta\ $ (!\cv_1|Mult10~8_resulta\ $ (\cv_1|Mult11~8_resulta\)) ) + ( !VCC ) + ( !VCC ))
-- \cv_1|Add8~42\ = CARRY(( !\cv_1|Mult9~8_resulta\ $ (!\cv_1|Mult10~8_resulta\ $ (\cv_1|Mult11~8_resulta\)) ) + ( !VCC ) + ( !VCC ))
-- \cv_1|Add8~43\ = SHARE((!\cv_1|Mult9~8_resulta\ & (\cv_1|Mult10~8_resulta\ & \cv_1|Mult11~8_resulta\)) # (\cv_1|Mult9~8_resulta\ & ((\cv_1|Mult11~8_resulta\) # (\cv_1|Mult10~8_resulta\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult9~8_resulta\,
	datac => \cv_1|ALT_INV_Mult10~8_resulta\,
	datad => \cv_1|ALT_INV_Mult11~8_resulta\,
	cin => GND,
	sharein => GND,
	sumout => \cv_1|Add8~41_sumout\,
	cout => \cv_1|Add8~42\,
	shareout => \cv_1|Add8~43\);

-- Location: LABCELL_X14_Y15_N33
\cv_1|Add8~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~53_sumout\ = SUM(( !\cv_1|Mult9~9\ $ (!\cv_1|Mult10~9\ $ (\cv_1|Mult11~9\)) ) + ( \cv_1|Add8~43\ ) + ( \cv_1|Add8~42\ ))
-- \cv_1|Add8~54\ = CARRY(( !\cv_1|Mult9~9\ $ (!\cv_1|Mult10~9\ $ (\cv_1|Mult11~9\)) ) + ( \cv_1|Add8~43\ ) + ( \cv_1|Add8~42\ ))
-- \cv_1|Add8~55\ = SHARE((!\cv_1|Mult9~9\ & (\cv_1|Mult10~9\ & \cv_1|Mult11~9\)) # (\cv_1|Mult9~9\ & ((\cv_1|Mult11~9\) # (\cv_1|Mult10~9\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult9~9\,
	datac => \cv_1|ALT_INV_Mult10~9\,
	datad => \cv_1|ALT_INV_Mult11~9\,
	cin => \cv_1|Add8~42\,
	sharein => \cv_1|Add8~43\,
	sumout => \cv_1|Add8~53_sumout\,
	cout => \cv_1|Add8~54\,
	shareout => \cv_1|Add8~55\);

-- Location: LABCELL_X14_Y15_N36
\cv_1|Add8~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~57_sumout\ = SUM(( !\cv_1|Mult9~10\ $ (!\cv_1|Mult10~10\ $ (\cv_1|Mult11~10\)) ) + ( \cv_1|Add8~55\ ) + ( \cv_1|Add8~54\ ))
-- \cv_1|Add8~58\ = CARRY(( !\cv_1|Mult9~10\ $ (!\cv_1|Mult10~10\ $ (\cv_1|Mult11~10\)) ) + ( \cv_1|Add8~55\ ) + ( \cv_1|Add8~54\ ))
-- \cv_1|Add8~59\ = SHARE((!\cv_1|Mult9~10\ & (\cv_1|Mult10~10\ & \cv_1|Mult11~10\)) # (\cv_1|Mult9~10\ & ((\cv_1|Mult11~10\) # (\cv_1|Mult10~10\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult9~10\,
	datac => \cv_1|ALT_INV_Mult10~10\,
	datad => \cv_1|ALT_INV_Mult11~10\,
	cin => \cv_1|Add8~54\,
	sharein => \cv_1|Add8~55\,
	sumout => \cv_1|Add8~57_sumout\,
	cout => \cv_1|Add8~58\,
	shareout => \cv_1|Add8~59\);

-- Location: LABCELL_X14_Y15_N39
\cv_1|Add8~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~61_sumout\ = SUM(( !\cv_1|Mult10~11\ $ (!\cv_1|Mult9~11\ $ (\cv_1|Mult11~11\)) ) + ( \cv_1|Add8~59\ ) + ( \cv_1|Add8~58\ ))
-- \cv_1|Add8~62\ = CARRY(( !\cv_1|Mult10~11\ $ (!\cv_1|Mult9~11\ $ (\cv_1|Mult11~11\)) ) + ( \cv_1|Add8~59\ ) + ( \cv_1|Add8~58\ ))
-- \cv_1|Add8~63\ = SHARE((!\cv_1|Mult10~11\ & (\cv_1|Mult9~11\ & \cv_1|Mult11~11\)) # (\cv_1|Mult10~11\ & ((\cv_1|Mult11~11\) # (\cv_1|Mult9~11\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult10~11\,
	datac => \cv_1|ALT_INV_Mult9~11\,
	datad => \cv_1|ALT_INV_Mult11~11\,
	cin => \cv_1|Add8~58\,
	sharein => \cv_1|Add8~59\,
	sumout => \cv_1|Add8~61_sumout\,
	cout => \cv_1|Add8~62\,
	shareout => \cv_1|Add8~63\);

-- Location: LABCELL_X14_Y15_N42
\cv_1|Add8~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~65_sumout\ = SUM(( !\cv_1|Mult9~12\ $ (!\cv_1|Mult11~12\ $ (\cv_1|Mult10~12\)) ) + ( \cv_1|Add8~63\ ) + ( \cv_1|Add8~62\ ))
-- \cv_1|Add8~66\ = CARRY(( !\cv_1|Mult9~12\ $ (!\cv_1|Mult11~12\ $ (\cv_1|Mult10~12\)) ) + ( \cv_1|Add8~63\ ) + ( \cv_1|Add8~62\ ))
-- \cv_1|Add8~67\ = SHARE((!\cv_1|Mult9~12\ & (\cv_1|Mult11~12\ & \cv_1|Mult10~12\)) # (\cv_1|Mult9~12\ & ((\cv_1|Mult10~12\) # (\cv_1|Mult11~12\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult9~12\,
	datac => \cv_1|ALT_INV_Mult11~12\,
	datad => \cv_1|ALT_INV_Mult10~12\,
	cin => \cv_1|Add8~62\,
	sharein => \cv_1|Add8~63\,
	sumout => \cv_1|Add8~65_sumout\,
	cout => \cv_1|Add8~66\,
	shareout => \cv_1|Add8~67\);

-- Location: LABCELL_X14_Y15_N45
\cv_1|Add8~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~69_sumout\ = SUM(( !\cv_1|Mult9~13\ $ (!\cv_1|Mult11~13\ $ (\cv_1|Mult10~13\)) ) + ( \cv_1|Add8~67\ ) + ( \cv_1|Add8~66\ ))
-- \cv_1|Add8~70\ = CARRY(( !\cv_1|Mult9~13\ $ (!\cv_1|Mult11~13\ $ (\cv_1|Mult10~13\)) ) + ( \cv_1|Add8~67\ ) + ( \cv_1|Add8~66\ ))
-- \cv_1|Add8~71\ = SHARE((!\cv_1|Mult9~13\ & (\cv_1|Mult11~13\ & \cv_1|Mult10~13\)) # (\cv_1|Mult9~13\ & ((\cv_1|Mult10~13\) # (\cv_1|Mult11~13\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult9~13\,
	datac => \cv_1|ALT_INV_Mult11~13\,
	datad => \cv_1|ALT_INV_Mult10~13\,
	cin => \cv_1|Add8~66\,
	sharein => \cv_1|Add8~67\,
	sumout => \cv_1|Add8~69_sumout\,
	cout => \cv_1|Add8~70\,
	shareout => \cv_1|Add8~71\);

-- Location: LABCELL_X14_Y15_N48
\cv_1|Add8~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~73_sumout\ = SUM(( !\cv_1|Mult9~14\ $ (!\cv_1|Mult10~14\ $ (\cv_1|Mult11~14\)) ) + ( \cv_1|Add8~71\ ) + ( \cv_1|Add8~70\ ))
-- \cv_1|Add8~74\ = CARRY(( !\cv_1|Mult9~14\ $ (!\cv_1|Mult10~14\ $ (\cv_1|Mult11~14\)) ) + ( \cv_1|Add8~71\ ) + ( \cv_1|Add8~70\ ))
-- \cv_1|Add8~75\ = SHARE((!\cv_1|Mult9~14\ & (\cv_1|Mult10~14\ & \cv_1|Mult11~14\)) # (\cv_1|Mult9~14\ & ((\cv_1|Mult11~14\) # (\cv_1|Mult10~14\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult9~14\,
	datac => \cv_1|ALT_INV_Mult10~14\,
	datad => \cv_1|ALT_INV_Mult11~14\,
	cin => \cv_1|Add8~70\,
	sharein => \cv_1|Add8~71\,
	sumout => \cv_1|Add8~73_sumout\,
	cout => \cv_1|Add8~74\,
	shareout => \cv_1|Add8~75\);

-- Location: LABCELL_X14_Y15_N51
\cv_1|Add8~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~77_sumout\ = SUM(( !\cv_1|Mult9~15\ $ (!\cv_1|Mult11~15\ $ (\cv_1|Mult10~15\)) ) + ( \cv_1|Add8~75\ ) + ( \cv_1|Add8~74\ ))
-- \cv_1|Add8~78\ = CARRY(( !\cv_1|Mult9~15\ $ (!\cv_1|Mult11~15\ $ (\cv_1|Mult10~15\)) ) + ( \cv_1|Add8~75\ ) + ( \cv_1|Add8~74\ ))
-- \cv_1|Add8~79\ = SHARE((!\cv_1|Mult9~15\ & (\cv_1|Mult11~15\ & \cv_1|Mult10~15\)) # (\cv_1|Mult9~15\ & ((\cv_1|Mult10~15\) # (\cv_1|Mult11~15\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult9~15\,
	datac => \cv_1|ALT_INV_Mult11~15\,
	datad => \cv_1|ALT_INV_Mult10~15\,
	cin => \cv_1|Add8~74\,
	sharein => \cv_1|Add8~75\,
	sumout => \cv_1|Add8~77_sumout\,
	cout => \cv_1|Add8~78\,
	shareout => \cv_1|Add8~79\);

-- Location: LABCELL_X14_Y15_N54
\cv_1|Add8~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~45_sumout\ = SUM(( !\cv_1|Mult9~16\ $ (!\cv_1|Mult11~16\ $ (\cv_1|Mult10~16\)) ) + ( \cv_1|Add8~79\ ) + ( \cv_1|Add8~78\ ))
-- \cv_1|Add8~46\ = CARRY(( !\cv_1|Mult9~16\ $ (!\cv_1|Mult11~16\ $ (\cv_1|Mult10~16\)) ) + ( \cv_1|Add8~79\ ) + ( \cv_1|Add8~78\ ))
-- \cv_1|Add8~47\ = SHARE((!\cv_1|Mult9~16\ & (\cv_1|Mult11~16\ & \cv_1|Mult10~16\)) # (\cv_1|Mult9~16\ & ((\cv_1|Mult10~16\) # (\cv_1|Mult11~16\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult9~16\,
	datac => \cv_1|ALT_INV_Mult11~16\,
	datad => \cv_1|ALT_INV_Mult10~16\,
	cin => \cv_1|Add8~78\,
	sharein => \cv_1|Add8~79\,
	sumout => \cv_1|Add8~45_sumout\,
	cout => \cv_1|Add8~46\,
	shareout => \cv_1|Add8~47\);

-- Location: LABCELL_X16_Y12_N9
\Decoder1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder1~0_combout\ = ( \convolution:index_matrix[3]~q\ ) # ( !\convolution:index_matrix[3]~q\ & ( (!\convolution:index_matrix[2]~q\) # (!\convolution:index_matrix[1]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_convolution:index_matrix[2]~q\,
	datab => \ALT_INV_convolution:index_matrix[1]~q\,
	dataf => \ALT_INV_convolution:index_matrix[3]~q\,
	combout => \Decoder1~0_combout\);

-- Location: LABCELL_X16_Y12_N15
\input_matrix[7][0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_matrix[7][0]~4_combout\ = ( !\reset~input_o\ & ( (!\input_matrix~0_combout\ & !\Decoder1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_matrix~0_combout\,
	datac => \ALT_INV_Decoder1~0_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \input_matrix[7][0]~4_combout\);

-- Location: LABCELL_X16_Y11_N18
\input_filter[15][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[15][0]~feeder_combout\ = \rom_filter2|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \input_filter[15][0]~feeder_combout\);

-- Location: LABCELL_X16_Y12_N21
\input_filter[15][0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[15][0]~2_combout\ = ( \convolution:index_matrix[2]~q\ & ( (!\reset~input_o\ & (\convolution:index_matrix[1]~q\ & (!\input_matrix~0_combout\ & !\convolution:enable_buffer_filter~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_convolution:index_matrix[1]~q\,
	datac => \ALT_INV_input_matrix~0_combout\,
	datad => \ALT_INV_convolution:enable_buffer_filter~q\,
	dataf => \ALT_INV_convolution:index_matrix[2]~q\,
	combout => \input_filter[15][0]~2_combout\);

-- Location: FF_X16_Y11_N19
\input_filter[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[15][0]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(0),
	sload => \Decoder1~0_combout\,
	ena => \input_filter[15][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[15][0]~q\);

-- Location: LABCELL_X16_Y11_N9
\input_filter[15][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[15][1]~feeder_combout\ = \rom_filter2|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \input_filter[15][1]~feeder_combout\);

-- Location: FF_X16_Y11_N10
\input_filter[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[15][1]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(1),
	sload => \Decoder1~0_combout\,
	ena => \input_filter[15][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[15][1]~q\);

-- Location: LABCELL_X16_Y11_N12
\input_filter[15][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[15][2]~feeder_combout\ = \rom_filter2|altsyncram_component|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \input_filter[15][2]~feeder_combout\);

-- Location: FF_X16_Y11_N13
\input_filter[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[15][2]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(2),
	sload => \Decoder1~0_combout\,
	ena => \input_filter[15][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[15][2]~q\);

-- Location: LABCELL_X16_Y11_N42
\input_filter[15][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[15][3]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \input_filter[15][3]~feeder_combout\);

-- Location: FF_X16_Y11_N43
\input_filter[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[15][3]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(3),
	sload => \Decoder1~0_combout\,
	ena => \input_filter[15][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[15][3]~q\);

-- Location: LABCELL_X16_Y11_N33
\input_filter[15][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[15][4]~feeder_combout\ = \rom_filter2|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \input_filter[15][4]~feeder_combout\);

-- Location: FF_X16_Y11_N35
\input_filter[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[15][4]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(4),
	sload => \Decoder1~0_combout\,
	ena => \input_filter[15][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[15][4]~q\);

-- Location: LABCELL_X16_Y11_N48
\input_filter[15][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[15][5]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \input_filter[15][5]~feeder_combout\);

-- Location: FF_X16_Y11_N49
\input_filter[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[15][5]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(5),
	sload => \Decoder1~0_combout\,
	ena => \input_filter[15][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[15][5]~q\);

-- Location: LABCELL_X16_Y11_N39
\input_filter[15][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[15][6]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \input_filter[15][6]~feeder_combout\);

-- Location: FF_X16_Y11_N40
\input_filter[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[15][6]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(6),
	sload => \Decoder1~0_combout\,
	ena => \input_filter[15][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[15][6]~q\);

-- Location: LABCELL_X16_Y11_N24
\input_filter[15][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[15][7]~feeder_combout\ = \rom_filter2|altsyncram_component|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \input_filter[15][7]~feeder_combout\);

-- Location: FF_X16_Y11_N26
\input_filter[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[15][7]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(7),
	sload => \Decoder1~0_combout\,
	ena => \input_filter[15][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[15][7]~q\);

-- Location: LABCELL_X16_Y11_N54
\input_filter[15][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[15][8]~feeder_combout\ = ( \rom_filter2|altsyncram_component|auto_generated|q_a\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rom_filter2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \input_filter[15][8]~feeder_combout\);

-- Location: FF_X16_Y11_N56
\input_filter[15][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \input_filter[15][8]~feeder_combout\,
	asdata => \rom_filter1|altsyncram_component|auto_generated|q_b\(8),
	sload => \Decoder1~0_combout\,
	ena => \input_filter[15][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_filter[15][8]~q\);

-- Location: DSP_X15_Y11_N0
\cv_1|Mult15~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \cv_1|Mult15~8_ACLR_bus\,
	clk => \cv_1|Mult15~8_CLK_bus\,
	ena => \cv_1|Mult15~8_ENA_bus\,
	ax => \cv_1|Mult15~8_AX_bus\,
	ay => \cv_1|Mult15~8_AY_bus\,
	resulta => \cv_1|Mult15~8_RESULTA_bus\);

-- Location: MLABCELL_X13_Y12_N45
\input_filter[16][0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[16][0]~1_combout\ = ( !\input_matrix~0_combout\ & ( (!\reset~input_o\ & (!\convolution:enable_buffer_filter~q\ & !\Decoder1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_convolution:enable_buffer_filter~q\,
	datac => \ALT_INV_Decoder1~0_combout\,
	dataf => \ALT_INV_input_matrix~0_combout\,
	combout => \input_filter[16][0]~1_combout\);

-- Location: DSP_X8_Y7_N0
\cv_1|Mult16~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 8,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \cv_1|Mult16~8_ACLR_bus\,
	clk => \cv_1|Mult16~8_CLK_bus\,
	ena => \cv_1|Mult16~8_ENA_bus\,
	ax => \cv_1|Mult16~8_AX_bus\,
	ay => \cv_1|Mult16~8_AY_bus\,
	resulta => \cv_1|Mult16~8_RESULTA_bus\);

-- Location: LABCELL_X16_Y12_N39
\input_matrix[8][0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_matrix[8][0]~2_combout\ = ( \convolution:index_matrix[3]~q\ & ( (!\convolution:index_matrix[2]~q\ & !\convolution:index_matrix[1]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_convolution:index_matrix[2]~q\,
	datac => \ALT_INV_convolution:index_matrix[1]~q\,
	dataf => \ALT_INV_convolution:index_matrix[3]~q\,
	combout => \input_matrix[8][0]~2_combout\);

-- Location: LABCELL_X16_Y12_N57
\input_filter[17][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[17][0]~0_combout\ = ( \input_matrix[8][0]~2_combout\ & ( (!\reset~input_o\ & (!\input_matrix~0_combout\ & !\convolution:enable_buffer_filter~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_input_matrix~0_combout\,
	datad => \ALT_INV_convolution:enable_buffer_filter~q\,
	dataf => \ALT_INV_input_matrix[8][0]~2_combout\,
	combout => \input_filter[17][0]~0_combout\);

-- Location: MLABCELL_X13_Y12_N15
\input_matrix[8][0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_matrix[8][0]~3_combout\ = ( \input_matrix~0_combout\ & ( (!\reset~input_o\ & \input_matrix[8][0]~1_combout\) ) ) # ( !\input_matrix~0_combout\ & ( (\input_matrix[8][0]~2_combout\ & !\reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_matrix[8][0]~2_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_input_matrix[8][0]~1_combout\,
	dataf => \ALT_INV_input_matrix~0_combout\,
	combout => \input_matrix[8][0]~3_combout\);

-- Location: DSP_X15_Y7_N0
\cv_1|Mult17~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 8,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \cv_1|Mult17~8_ACLR_bus\,
	clk => \cv_1|Mult17~8_CLK_bus\,
	ena => \cv_1|Mult17~8_ENA_bus\,
	ax => \cv_1|Mult17~8_AX_bus\,
	ay => \cv_1|Mult17~8_AY_bus\,
	resulta => \cv_1|Mult17~8_RESULTA_bus\);

-- Location: LABCELL_X14_Y11_N0
\cv_1|Add13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add13~1_sumout\ = SUM(( !\cv_1|Mult17~8_resulta\ $ (!\cv_1|Mult15~8_resulta\ $ (\cv_1|Mult16~8_resulta\)) ) + ( !VCC ) + ( !VCC ))
-- \cv_1|Add13~2\ = CARRY(( !\cv_1|Mult17~8_resulta\ $ (!\cv_1|Mult15~8_resulta\ $ (\cv_1|Mult16~8_resulta\)) ) + ( !VCC ) + ( !VCC ))
-- \cv_1|Add13~3\ = SHARE((!\cv_1|Mult17~8_resulta\ & (\cv_1|Mult15~8_resulta\ & \cv_1|Mult16~8_resulta\)) # (\cv_1|Mult17~8_resulta\ & ((\cv_1|Mult16~8_resulta\) # (\cv_1|Mult15~8_resulta\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult17~8_resulta\,
	datac => \cv_1|ALT_INV_Mult15~8_resulta\,
	datad => \cv_1|ALT_INV_Mult16~8_resulta\,
	cin => GND,
	sharein => GND,
	sumout => \cv_1|Add13~1_sumout\,
	cout => \cv_1|Add13~2\,
	shareout => \cv_1|Add13~3\);

-- Location: LABCELL_X14_Y11_N3
\cv_1|Add13~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add13~13_sumout\ = SUM(( !\cv_1|Mult17~9\ $ (!\cv_1|Mult16~9\ $ (\cv_1|Mult15~9\)) ) + ( \cv_1|Add13~3\ ) + ( \cv_1|Add13~2\ ))
-- \cv_1|Add13~14\ = CARRY(( !\cv_1|Mult17~9\ $ (!\cv_1|Mult16~9\ $ (\cv_1|Mult15~9\)) ) + ( \cv_1|Add13~3\ ) + ( \cv_1|Add13~2\ ))
-- \cv_1|Add13~15\ = SHARE((!\cv_1|Mult17~9\ & (\cv_1|Mult16~9\ & \cv_1|Mult15~9\)) # (\cv_1|Mult17~9\ & ((\cv_1|Mult15~9\) # (\cv_1|Mult16~9\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult17~9\,
	datac => \cv_1|ALT_INV_Mult16~9\,
	datad => \cv_1|ALT_INV_Mult15~9\,
	cin => \cv_1|Add13~2\,
	sharein => \cv_1|Add13~3\,
	sumout => \cv_1|Add13~13_sumout\,
	cout => \cv_1|Add13~14\,
	shareout => \cv_1|Add13~15\);

-- Location: LABCELL_X14_Y11_N6
\cv_1|Add13~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add13~17_sumout\ = SUM(( !\cv_1|Mult16~10\ $ (!\cv_1|Mult17~10\ $ (\cv_1|Mult15~10\)) ) + ( \cv_1|Add13~15\ ) + ( \cv_1|Add13~14\ ))
-- \cv_1|Add13~18\ = CARRY(( !\cv_1|Mult16~10\ $ (!\cv_1|Mult17~10\ $ (\cv_1|Mult15~10\)) ) + ( \cv_1|Add13~15\ ) + ( \cv_1|Add13~14\ ))
-- \cv_1|Add13~19\ = SHARE((!\cv_1|Mult16~10\ & (\cv_1|Mult17~10\ & \cv_1|Mult15~10\)) # (\cv_1|Mult16~10\ & ((\cv_1|Mult15~10\) # (\cv_1|Mult17~10\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult16~10\,
	datac => \cv_1|ALT_INV_Mult17~10\,
	datad => \cv_1|ALT_INV_Mult15~10\,
	cin => \cv_1|Add13~14\,
	sharein => \cv_1|Add13~15\,
	sumout => \cv_1|Add13~17_sumout\,
	cout => \cv_1|Add13~18\,
	shareout => \cv_1|Add13~19\);

-- Location: LABCELL_X14_Y11_N9
\cv_1|Add13~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add13~21_sumout\ = SUM(( !\cv_1|Mult17~11\ $ (!\cv_1|Mult15~11\ $ (\cv_1|Mult16~11\)) ) + ( \cv_1|Add13~19\ ) + ( \cv_1|Add13~18\ ))
-- \cv_1|Add13~22\ = CARRY(( !\cv_1|Mult17~11\ $ (!\cv_1|Mult15~11\ $ (\cv_1|Mult16~11\)) ) + ( \cv_1|Add13~19\ ) + ( \cv_1|Add13~18\ ))
-- \cv_1|Add13~23\ = SHARE((!\cv_1|Mult17~11\ & (\cv_1|Mult15~11\ & \cv_1|Mult16~11\)) # (\cv_1|Mult17~11\ & ((\cv_1|Mult16~11\) # (\cv_1|Mult15~11\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult17~11\,
	datac => \cv_1|ALT_INV_Mult15~11\,
	datad => \cv_1|ALT_INV_Mult16~11\,
	cin => \cv_1|Add13~18\,
	sharein => \cv_1|Add13~19\,
	sumout => \cv_1|Add13~21_sumout\,
	cout => \cv_1|Add13~22\,
	shareout => \cv_1|Add13~23\);

-- Location: LABCELL_X14_Y11_N12
\cv_1|Add13~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add13~25_sumout\ = SUM(( !\cv_1|Mult17~12\ $ (!\cv_1|Mult16~12\ $ (\cv_1|Mult15~12\)) ) + ( \cv_1|Add13~23\ ) + ( \cv_1|Add13~22\ ))
-- \cv_1|Add13~26\ = CARRY(( !\cv_1|Mult17~12\ $ (!\cv_1|Mult16~12\ $ (\cv_1|Mult15~12\)) ) + ( \cv_1|Add13~23\ ) + ( \cv_1|Add13~22\ ))
-- \cv_1|Add13~27\ = SHARE((!\cv_1|Mult17~12\ & (\cv_1|Mult16~12\ & \cv_1|Mult15~12\)) # (\cv_1|Mult17~12\ & ((\cv_1|Mult15~12\) # (\cv_1|Mult16~12\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult17~12\,
	datac => \cv_1|ALT_INV_Mult16~12\,
	datad => \cv_1|ALT_INV_Mult15~12\,
	cin => \cv_1|Add13~22\,
	sharein => \cv_1|Add13~23\,
	sumout => \cv_1|Add13~25_sumout\,
	cout => \cv_1|Add13~26\,
	shareout => \cv_1|Add13~27\);

-- Location: LABCELL_X14_Y11_N15
\cv_1|Add13~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add13~29_sumout\ = SUM(( !\cv_1|Mult17~13\ $ (!\cv_1|Mult15~13\ $ (\cv_1|Mult16~13\)) ) + ( \cv_1|Add13~27\ ) + ( \cv_1|Add13~26\ ))
-- \cv_1|Add13~30\ = CARRY(( !\cv_1|Mult17~13\ $ (!\cv_1|Mult15~13\ $ (\cv_1|Mult16~13\)) ) + ( \cv_1|Add13~27\ ) + ( \cv_1|Add13~26\ ))
-- \cv_1|Add13~31\ = SHARE((!\cv_1|Mult17~13\ & (\cv_1|Mult15~13\ & \cv_1|Mult16~13\)) # (\cv_1|Mult17~13\ & ((\cv_1|Mult16~13\) # (\cv_1|Mult15~13\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult17~13\,
	datac => \cv_1|ALT_INV_Mult15~13\,
	datad => \cv_1|ALT_INV_Mult16~13\,
	cin => \cv_1|Add13~26\,
	sharein => \cv_1|Add13~27\,
	sumout => \cv_1|Add13~29_sumout\,
	cout => \cv_1|Add13~30\,
	shareout => \cv_1|Add13~31\);

-- Location: LABCELL_X14_Y11_N18
\cv_1|Add13~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add13~33_sumout\ = SUM(( !\cv_1|Mult17~14\ $ (!\cv_1|Mult16~14\ $ (\cv_1|Mult15~14\)) ) + ( \cv_1|Add13~31\ ) + ( \cv_1|Add13~30\ ))
-- \cv_1|Add13~34\ = CARRY(( !\cv_1|Mult17~14\ $ (!\cv_1|Mult16~14\ $ (\cv_1|Mult15~14\)) ) + ( \cv_1|Add13~31\ ) + ( \cv_1|Add13~30\ ))
-- \cv_1|Add13~35\ = SHARE((!\cv_1|Mult17~14\ & (\cv_1|Mult16~14\ & \cv_1|Mult15~14\)) # (\cv_1|Mult17~14\ & ((\cv_1|Mult15~14\) # (\cv_1|Mult16~14\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult17~14\,
	datac => \cv_1|ALT_INV_Mult16~14\,
	datad => \cv_1|ALT_INV_Mult15~14\,
	cin => \cv_1|Add13~30\,
	sharein => \cv_1|Add13~31\,
	sumout => \cv_1|Add13~33_sumout\,
	cout => \cv_1|Add13~34\,
	shareout => \cv_1|Add13~35\);

-- Location: LABCELL_X14_Y11_N21
\cv_1|Add13~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add13~37_sumout\ = SUM(( !\cv_1|Mult17~15\ $ (!\cv_1|Mult16~15\ $ (\cv_1|Mult15~15\)) ) + ( \cv_1|Add13~35\ ) + ( \cv_1|Add13~34\ ))
-- \cv_1|Add13~38\ = CARRY(( !\cv_1|Mult17~15\ $ (!\cv_1|Mult16~15\ $ (\cv_1|Mult15~15\)) ) + ( \cv_1|Add13~35\ ) + ( \cv_1|Add13~34\ ))
-- \cv_1|Add13~39\ = SHARE((!\cv_1|Mult17~15\ & (\cv_1|Mult16~15\ & \cv_1|Mult15~15\)) # (\cv_1|Mult17~15\ & ((\cv_1|Mult15~15\) # (\cv_1|Mult16~15\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult17~15\,
	datac => \cv_1|ALT_INV_Mult16~15\,
	datad => \cv_1|ALT_INV_Mult15~15\,
	cin => \cv_1|Add13~34\,
	sharein => \cv_1|Add13~35\,
	sumout => \cv_1|Add13~37_sumout\,
	cout => \cv_1|Add13~38\,
	shareout => \cv_1|Add13~39\);

-- Location: LABCELL_X14_Y11_N24
\cv_1|Add13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add13~5_sumout\ = SUM(( !\cv_1|Mult15~16\ $ (!\cv_1|Mult16~16\ $ (\cv_1|Mult17~16\)) ) + ( \cv_1|Add13~39\ ) + ( \cv_1|Add13~38\ ))
-- \cv_1|Add13~6\ = CARRY(( !\cv_1|Mult15~16\ $ (!\cv_1|Mult16~16\ $ (\cv_1|Mult17~16\)) ) + ( \cv_1|Add13~39\ ) + ( \cv_1|Add13~38\ ))
-- \cv_1|Add13~7\ = SHARE((!\cv_1|Mult15~16\ & (\cv_1|Mult16~16\ & \cv_1|Mult17~16\)) # (\cv_1|Mult15~16\ & ((\cv_1|Mult17~16\) # (\cv_1|Mult16~16\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult15~16\,
	datac => \cv_1|ALT_INV_Mult16~16\,
	datad => \cv_1|ALT_INV_Mult17~16\,
	cin => \cv_1|Add13~38\,
	sharein => \cv_1|Add13~39\,
	sumout => \cv_1|Add13~5_sumout\,
	cout => \cv_1|Add13~6\,
	shareout => \cv_1|Add13~7\);

-- Location: LABCELL_X14_Y14_N0
\cv_1|Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~1_sumout\ = SUM(( !\cv_1|Add9~1_sumout\ $ (!\cv_1|Add13~1_sumout\ $ (\cv_1|Add8~41_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \cv_1|Add8~2\ = CARRY(( !\cv_1|Add9~1_sumout\ $ (!\cv_1|Add13~1_sumout\ $ (\cv_1|Add8~41_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \cv_1|Add8~3\ = SHARE((!\cv_1|Add9~1_sumout\ & (\cv_1|Add13~1_sumout\ & \cv_1|Add8~41_sumout\)) # (\cv_1|Add9~1_sumout\ & ((\cv_1|Add8~41_sumout\) # (\cv_1|Add13~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Add9~1_sumout\,
	datac => \cv_1|ALT_INV_Add13~1_sumout\,
	datad => \cv_1|ALT_INV_Add8~41_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \cv_1|Add8~1_sumout\,
	cout => \cv_1|Add8~2\,
	shareout => \cv_1|Add8~3\);

-- Location: LABCELL_X14_Y14_N3
\cv_1|Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~13_sumout\ = SUM(( !\cv_1|Add9~13_sumout\ $ (!\cv_1|Add8~53_sumout\ $ (\cv_1|Add13~13_sumout\)) ) + ( \cv_1|Add8~3\ ) + ( \cv_1|Add8~2\ ))
-- \cv_1|Add8~14\ = CARRY(( !\cv_1|Add9~13_sumout\ $ (!\cv_1|Add8~53_sumout\ $ (\cv_1|Add13~13_sumout\)) ) + ( \cv_1|Add8~3\ ) + ( \cv_1|Add8~2\ ))
-- \cv_1|Add8~15\ = SHARE((!\cv_1|Add9~13_sumout\ & (\cv_1|Add8~53_sumout\ & \cv_1|Add13~13_sumout\)) # (\cv_1|Add9~13_sumout\ & ((\cv_1|Add13~13_sumout\) # (\cv_1|Add8~53_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Add9~13_sumout\,
	datac => \cv_1|ALT_INV_Add8~53_sumout\,
	datad => \cv_1|ALT_INV_Add13~13_sumout\,
	cin => \cv_1|Add8~2\,
	sharein => \cv_1|Add8~3\,
	sumout => \cv_1|Add8~13_sumout\,
	cout => \cv_1|Add8~14\,
	shareout => \cv_1|Add8~15\);

-- Location: LABCELL_X14_Y14_N6
\cv_1|Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~17_sumout\ = SUM(( !\cv_1|Add9~17_sumout\ $ (!\cv_1|Add13~17_sumout\ $ (\cv_1|Add8~57_sumout\)) ) + ( \cv_1|Add8~15\ ) + ( \cv_1|Add8~14\ ))
-- \cv_1|Add8~18\ = CARRY(( !\cv_1|Add9~17_sumout\ $ (!\cv_1|Add13~17_sumout\ $ (\cv_1|Add8~57_sumout\)) ) + ( \cv_1|Add8~15\ ) + ( \cv_1|Add8~14\ ))
-- \cv_1|Add8~19\ = SHARE((!\cv_1|Add9~17_sumout\ & (\cv_1|Add13~17_sumout\ & \cv_1|Add8~57_sumout\)) # (\cv_1|Add9~17_sumout\ & ((\cv_1|Add8~57_sumout\) # (\cv_1|Add13~17_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Add9~17_sumout\,
	datac => \cv_1|ALT_INV_Add13~17_sumout\,
	datad => \cv_1|ALT_INV_Add8~57_sumout\,
	cin => \cv_1|Add8~14\,
	sharein => \cv_1|Add8~15\,
	sumout => \cv_1|Add8~17_sumout\,
	cout => \cv_1|Add8~18\,
	shareout => \cv_1|Add8~19\);

-- Location: LABCELL_X14_Y14_N9
\cv_1|Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~21_sumout\ = SUM(( !\cv_1|Add9~21_sumout\ $ (!\cv_1|Add13~21_sumout\ $ (\cv_1|Add8~61_sumout\)) ) + ( \cv_1|Add8~19\ ) + ( \cv_1|Add8~18\ ))
-- \cv_1|Add8~22\ = CARRY(( !\cv_1|Add9~21_sumout\ $ (!\cv_1|Add13~21_sumout\ $ (\cv_1|Add8~61_sumout\)) ) + ( \cv_1|Add8~19\ ) + ( \cv_1|Add8~18\ ))
-- \cv_1|Add8~23\ = SHARE((!\cv_1|Add9~21_sumout\ & (\cv_1|Add13~21_sumout\ & \cv_1|Add8~61_sumout\)) # (\cv_1|Add9~21_sumout\ & ((\cv_1|Add8~61_sumout\) # (\cv_1|Add13~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Add9~21_sumout\,
	datac => \cv_1|ALT_INV_Add13~21_sumout\,
	datad => \cv_1|ALT_INV_Add8~61_sumout\,
	cin => \cv_1|Add8~18\,
	sharein => \cv_1|Add8~19\,
	sumout => \cv_1|Add8~21_sumout\,
	cout => \cv_1|Add8~22\,
	shareout => \cv_1|Add8~23\);

-- Location: LABCELL_X14_Y14_N12
\cv_1|Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~25_sumout\ = SUM(( !\cv_1|Add9~25_sumout\ $ (!\cv_1|Add13~25_sumout\ $ (\cv_1|Add8~65_sumout\)) ) + ( \cv_1|Add8~23\ ) + ( \cv_1|Add8~22\ ))
-- \cv_1|Add8~26\ = CARRY(( !\cv_1|Add9~25_sumout\ $ (!\cv_1|Add13~25_sumout\ $ (\cv_1|Add8~65_sumout\)) ) + ( \cv_1|Add8~23\ ) + ( \cv_1|Add8~22\ ))
-- \cv_1|Add8~27\ = SHARE((!\cv_1|Add9~25_sumout\ & (\cv_1|Add13~25_sumout\ & \cv_1|Add8~65_sumout\)) # (\cv_1|Add9~25_sumout\ & ((\cv_1|Add8~65_sumout\) # (\cv_1|Add13~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Add9~25_sumout\,
	datac => \cv_1|ALT_INV_Add13~25_sumout\,
	datad => \cv_1|ALT_INV_Add8~65_sumout\,
	cin => \cv_1|Add8~22\,
	sharein => \cv_1|Add8~23\,
	sumout => \cv_1|Add8~25_sumout\,
	cout => \cv_1|Add8~26\,
	shareout => \cv_1|Add8~27\);

-- Location: LABCELL_X14_Y14_N15
\cv_1|Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~29_sumout\ = SUM(( !\cv_1|Add9~29_sumout\ $ (!\cv_1|Add13~29_sumout\ $ (\cv_1|Add8~69_sumout\)) ) + ( \cv_1|Add8~27\ ) + ( \cv_1|Add8~26\ ))
-- \cv_1|Add8~30\ = CARRY(( !\cv_1|Add9~29_sumout\ $ (!\cv_1|Add13~29_sumout\ $ (\cv_1|Add8~69_sumout\)) ) + ( \cv_1|Add8~27\ ) + ( \cv_1|Add8~26\ ))
-- \cv_1|Add8~31\ = SHARE((!\cv_1|Add9~29_sumout\ & (\cv_1|Add13~29_sumout\ & \cv_1|Add8~69_sumout\)) # (\cv_1|Add9~29_sumout\ & ((\cv_1|Add8~69_sumout\) # (\cv_1|Add13~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Add9~29_sumout\,
	datac => \cv_1|ALT_INV_Add13~29_sumout\,
	datad => \cv_1|ALT_INV_Add8~69_sumout\,
	cin => \cv_1|Add8~26\,
	sharein => \cv_1|Add8~27\,
	sumout => \cv_1|Add8~29_sumout\,
	cout => \cv_1|Add8~30\,
	shareout => \cv_1|Add8~31\);

-- Location: LABCELL_X14_Y14_N18
\cv_1|Add8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~33_sumout\ = SUM(( !\cv_1|Add9~33_sumout\ $ (!\cv_1|Add13~33_sumout\ $ (\cv_1|Add8~73_sumout\)) ) + ( \cv_1|Add8~31\ ) + ( \cv_1|Add8~30\ ))
-- \cv_1|Add8~34\ = CARRY(( !\cv_1|Add9~33_sumout\ $ (!\cv_1|Add13~33_sumout\ $ (\cv_1|Add8~73_sumout\)) ) + ( \cv_1|Add8~31\ ) + ( \cv_1|Add8~30\ ))
-- \cv_1|Add8~35\ = SHARE((!\cv_1|Add9~33_sumout\ & (\cv_1|Add13~33_sumout\ & \cv_1|Add8~73_sumout\)) # (\cv_1|Add9~33_sumout\ & ((\cv_1|Add8~73_sumout\) # (\cv_1|Add13~33_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Add9~33_sumout\,
	datac => \cv_1|ALT_INV_Add13~33_sumout\,
	datad => \cv_1|ALT_INV_Add8~73_sumout\,
	cin => \cv_1|Add8~30\,
	sharein => \cv_1|Add8~31\,
	sumout => \cv_1|Add8~33_sumout\,
	cout => \cv_1|Add8~34\,
	shareout => \cv_1|Add8~35\);

-- Location: LABCELL_X14_Y14_N21
\cv_1|Add8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~37_sumout\ = SUM(( !\cv_1|Add9~37_sumout\ $ (!\cv_1|Add8~77_sumout\ $ (\cv_1|Add13~37_sumout\)) ) + ( \cv_1|Add8~35\ ) + ( \cv_1|Add8~34\ ))
-- \cv_1|Add8~38\ = CARRY(( !\cv_1|Add9~37_sumout\ $ (!\cv_1|Add8~77_sumout\ $ (\cv_1|Add13~37_sumout\)) ) + ( \cv_1|Add8~35\ ) + ( \cv_1|Add8~34\ ))
-- \cv_1|Add8~39\ = SHARE((!\cv_1|Add9~37_sumout\ & (\cv_1|Add8~77_sumout\ & \cv_1|Add13~37_sumout\)) # (\cv_1|Add9~37_sumout\ & ((\cv_1|Add13~37_sumout\) # (\cv_1|Add8~77_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Add9~37_sumout\,
	datac => \cv_1|ALT_INV_Add8~77_sumout\,
	datad => \cv_1|ALT_INV_Add13~37_sumout\,
	cin => \cv_1|Add8~34\,
	sharein => \cv_1|Add8~35\,
	sumout => \cv_1|Add8~37_sumout\,
	cout => \cv_1|Add8~38\,
	shareout => \cv_1|Add8~39\);

-- Location: LABCELL_X14_Y14_N24
\cv_1|Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~5_sumout\ = SUM(( !\cv_1|Add9~5_sumout\ $ (!\cv_1|Add8~45_sumout\ $ (\cv_1|Add13~5_sumout\)) ) + ( \cv_1|Add8~39\ ) + ( \cv_1|Add8~38\ ))
-- \cv_1|Add8~6\ = CARRY(( !\cv_1|Add9~5_sumout\ $ (!\cv_1|Add8~45_sumout\ $ (\cv_1|Add13~5_sumout\)) ) + ( \cv_1|Add8~39\ ) + ( \cv_1|Add8~38\ ))
-- \cv_1|Add8~7\ = SHARE((!\cv_1|Add9~5_sumout\ & (\cv_1|Add8~45_sumout\ & \cv_1|Add13~5_sumout\)) # (\cv_1|Add9~5_sumout\ & ((\cv_1|Add13~5_sumout\) # (\cv_1|Add8~45_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Add9~5_sumout\,
	datac => \cv_1|ALT_INV_Add8~45_sumout\,
	datad => \cv_1|ALT_INV_Add13~5_sumout\,
	cin => \cv_1|Add8~38\,
	sharein => \cv_1|Add8~39\,
	sumout => \cv_1|Add8~5_sumout\,
	cout => \cv_1|Add8~6\,
	shareout => \cv_1|Add8~7\);

-- Location: DSP_X15_Y19_N0
\cv_1|Mult4~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 8,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \cv_1|Mult4~8_ACLR_bus\,
	clk => \cv_1|Mult4~8_CLK_bus\,
	ena => \cv_1|Mult4~8_ENA_bus\,
	ax => \cv_1|Mult4~8_AX_bus\,
	ay => \cv_1|Mult4~8_AY_bus\,
	resulta => \cv_1|Mult4~8_RESULTA_bus\);

-- Location: DSP_X15_Y21_N0
\cv_1|Mult5~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 8,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \cv_1|Mult5~8_ACLR_bus\,
	clk => \cv_1|Mult5~8_CLK_bus\,
	ena => \cv_1|Mult5~8_ENA_bus\,
	ax => \cv_1|Mult5~8_AX_bus\,
	ay => \cv_1|Mult5~8_AY_bus\,
	resulta => \cv_1|Mult5~8_RESULTA_bus\);

-- Location: DSP_X8_Y19_N0
\cv_1|Mult3~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 8,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \cv_1|Mult3~8_ACLR_bus\,
	clk => \cv_1|Mult3~8_CLK_bus\,
	ena => \cv_1|Mult3~8_ENA_bus\,
	ax => \cv_1|Mult3~8_AX_bus\,
	ay => \cv_1|Mult3~8_AY_bus\,
	resulta => \cv_1|Mult3~8_RESULTA_bus\);

-- Location: MLABCELL_X13_Y18_N30
\cv_1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add1~1_sumout\ = SUM(( !\cv_1|Mult4~8_resulta\ $ (!\cv_1|Mult5~8_resulta\ $ (\cv_1|Mult3~8_resulta\)) ) + ( !VCC ) + ( !VCC ))
-- \cv_1|Add1~2\ = CARRY(( !\cv_1|Mult4~8_resulta\ $ (!\cv_1|Mult5~8_resulta\ $ (\cv_1|Mult3~8_resulta\)) ) + ( !VCC ) + ( !VCC ))
-- \cv_1|Add1~3\ = SHARE((!\cv_1|Mult4~8_resulta\ & (\cv_1|Mult5~8_resulta\ & \cv_1|Mult3~8_resulta\)) # (\cv_1|Mult4~8_resulta\ & ((\cv_1|Mult3~8_resulta\) # (\cv_1|Mult5~8_resulta\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult4~8_resulta\,
	datac => \cv_1|ALT_INV_Mult5~8_resulta\,
	datad => \cv_1|ALT_INV_Mult3~8_resulta\,
	cin => GND,
	sharein => GND,
	sumout => \cv_1|Add1~1_sumout\,
	cout => \cv_1|Add1~2\,
	shareout => \cv_1|Add1~3\);

-- Location: MLABCELL_X13_Y18_N33
\cv_1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add1~13_sumout\ = SUM(( !\cv_1|Mult4~9\ $ (!\cv_1|Mult3~9\ $ (\cv_1|Mult5~9\)) ) + ( \cv_1|Add1~3\ ) + ( \cv_1|Add1~2\ ))
-- \cv_1|Add1~14\ = CARRY(( !\cv_1|Mult4~9\ $ (!\cv_1|Mult3~9\ $ (\cv_1|Mult5~9\)) ) + ( \cv_1|Add1~3\ ) + ( \cv_1|Add1~2\ ))
-- \cv_1|Add1~15\ = SHARE((!\cv_1|Mult4~9\ & (\cv_1|Mult3~9\ & \cv_1|Mult5~9\)) # (\cv_1|Mult4~9\ & ((\cv_1|Mult5~9\) # (\cv_1|Mult3~9\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult4~9\,
	datac => \cv_1|ALT_INV_Mult3~9\,
	datad => \cv_1|ALT_INV_Mult5~9\,
	cin => \cv_1|Add1~2\,
	sharein => \cv_1|Add1~3\,
	sumout => \cv_1|Add1~13_sumout\,
	cout => \cv_1|Add1~14\,
	shareout => \cv_1|Add1~15\);

-- Location: MLABCELL_X13_Y18_N36
\cv_1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add1~17_sumout\ = SUM(( !\cv_1|Mult4~10\ $ (!\cv_1|Mult3~10\ $ (\cv_1|Mult5~10\)) ) + ( \cv_1|Add1~15\ ) + ( \cv_1|Add1~14\ ))
-- \cv_1|Add1~18\ = CARRY(( !\cv_1|Mult4~10\ $ (!\cv_1|Mult3~10\ $ (\cv_1|Mult5~10\)) ) + ( \cv_1|Add1~15\ ) + ( \cv_1|Add1~14\ ))
-- \cv_1|Add1~19\ = SHARE((!\cv_1|Mult4~10\ & (\cv_1|Mult3~10\ & \cv_1|Mult5~10\)) # (\cv_1|Mult4~10\ & ((\cv_1|Mult5~10\) # (\cv_1|Mult3~10\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult4~10\,
	datac => \cv_1|ALT_INV_Mult3~10\,
	datad => \cv_1|ALT_INV_Mult5~10\,
	cin => \cv_1|Add1~14\,
	sharein => \cv_1|Add1~15\,
	sumout => \cv_1|Add1~17_sumout\,
	cout => \cv_1|Add1~18\,
	shareout => \cv_1|Add1~19\);

-- Location: MLABCELL_X13_Y18_N39
\cv_1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add1~21_sumout\ = SUM(( !\cv_1|Mult4~11\ $ (!\cv_1|Mult3~11\ $ (\cv_1|Mult5~11\)) ) + ( \cv_1|Add1~19\ ) + ( \cv_1|Add1~18\ ))
-- \cv_1|Add1~22\ = CARRY(( !\cv_1|Mult4~11\ $ (!\cv_1|Mult3~11\ $ (\cv_1|Mult5~11\)) ) + ( \cv_1|Add1~19\ ) + ( \cv_1|Add1~18\ ))
-- \cv_1|Add1~23\ = SHARE((!\cv_1|Mult4~11\ & (\cv_1|Mult3~11\ & \cv_1|Mult5~11\)) # (\cv_1|Mult4~11\ & ((\cv_1|Mult5~11\) # (\cv_1|Mult3~11\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult4~11\,
	datac => \cv_1|ALT_INV_Mult3~11\,
	datad => \cv_1|ALT_INV_Mult5~11\,
	cin => \cv_1|Add1~18\,
	sharein => \cv_1|Add1~19\,
	sumout => \cv_1|Add1~21_sumout\,
	cout => \cv_1|Add1~22\,
	shareout => \cv_1|Add1~23\);

-- Location: MLABCELL_X13_Y18_N42
\cv_1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add1~25_sumout\ = SUM(( !\cv_1|Mult4~12\ $ (!\cv_1|Mult3~12\ $ (\cv_1|Mult5~12\)) ) + ( \cv_1|Add1~23\ ) + ( \cv_1|Add1~22\ ))
-- \cv_1|Add1~26\ = CARRY(( !\cv_1|Mult4~12\ $ (!\cv_1|Mult3~12\ $ (\cv_1|Mult5~12\)) ) + ( \cv_1|Add1~23\ ) + ( \cv_1|Add1~22\ ))
-- \cv_1|Add1~27\ = SHARE((!\cv_1|Mult4~12\ & (\cv_1|Mult3~12\ & \cv_1|Mult5~12\)) # (\cv_1|Mult4~12\ & ((\cv_1|Mult5~12\) # (\cv_1|Mult3~12\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult4~12\,
	datac => \cv_1|ALT_INV_Mult3~12\,
	datad => \cv_1|ALT_INV_Mult5~12\,
	cin => \cv_1|Add1~22\,
	sharein => \cv_1|Add1~23\,
	sumout => \cv_1|Add1~25_sumout\,
	cout => \cv_1|Add1~26\,
	shareout => \cv_1|Add1~27\);

-- Location: MLABCELL_X13_Y18_N45
\cv_1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add1~29_sumout\ = SUM(( !\cv_1|Mult5~13\ $ (!\cv_1|Mult3~13\ $ (\cv_1|Mult4~13\)) ) + ( \cv_1|Add1~27\ ) + ( \cv_1|Add1~26\ ))
-- \cv_1|Add1~30\ = CARRY(( !\cv_1|Mult5~13\ $ (!\cv_1|Mult3~13\ $ (\cv_1|Mult4~13\)) ) + ( \cv_1|Add1~27\ ) + ( \cv_1|Add1~26\ ))
-- \cv_1|Add1~31\ = SHARE((!\cv_1|Mult5~13\ & (\cv_1|Mult3~13\ & \cv_1|Mult4~13\)) # (\cv_1|Mult5~13\ & ((\cv_1|Mult4~13\) # (\cv_1|Mult3~13\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult5~13\,
	datac => \cv_1|ALT_INV_Mult3~13\,
	datad => \cv_1|ALT_INV_Mult4~13\,
	cin => \cv_1|Add1~26\,
	sharein => \cv_1|Add1~27\,
	sumout => \cv_1|Add1~29_sumout\,
	cout => \cv_1|Add1~30\,
	shareout => \cv_1|Add1~31\);

-- Location: MLABCELL_X13_Y18_N48
\cv_1|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add1~33_sumout\ = SUM(( !\cv_1|Mult5~14\ $ (!\cv_1|Mult3~14\ $ (\cv_1|Mult4~14\)) ) + ( \cv_1|Add1~31\ ) + ( \cv_1|Add1~30\ ))
-- \cv_1|Add1~34\ = CARRY(( !\cv_1|Mult5~14\ $ (!\cv_1|Mult3~14\ $ (\cv_1|Mult4~14\)) ) + ( \cv_1|Add1~31\ ) + ( \cv_1|Add1~30\ ))
-- \cv_1|Add1~35\ = SHARE((!\cv_1|Mult5~14\ & (\cv_1|Mult3~14\ & \cv_1|Mult4~14\)) # (\cv_1|Mult5~14\ & ((\cv_1|Mult4~14\) # (\cv_1|Mult3~14\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult5~14\,
	datac => \cv_1|ALT_INV_Mult3~14\,
	datad => \cv_1|ALT_INV_Mult4~14\,
	cin => \cv_1|Add1~30\,
	sharein => \cv_1|Add1~31\,
	sumout => \cv_1|Add1~33_sumout\,
	cout => \cv_1|Add1~34\,
	shareout => \cv_1|Add1~35\);

-- Location: MLABCELL_X13_Y18_N51
\cv_1|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add1~37_sumout\ = SUM(( !\cv_1|Mult3~15\ $ (!\cv_1|Mult4~15\ $ (\cv_1|Mult5~15\)) ) + ( \cv_1|Add1~35\ ) + ( \cv_1|Add1~34\ ))
-- \cv_1|Add1~38\ = CARRY(( !\cv_1|Mult3~15\ $ (!\cv_1|Mult4~15\ $ (\cv_1|Mult5~15\)) ) + ( \cv_1|Add1~35\ ) + ( \cv_1|Add1~34\ ))
-- \cv_1|Add1~39\ = SHARE((!\cv_1|Mult3~15\ & (\cv_1|Mult4~15\ & \cv_1|Mult5~15\)) # (\cv_1|Mult3~15\ & ((\cv_1|Mult5~15\) # (\cv_1|Mult4~15\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult3~15\,
	datac => \cv_1|ALT_INV_Mult4~15\,
	datad => \cv_1|ALT_INV_Mult5~15\,
	cin => \cv_1|Add1~34\,
	sharein => \cv_1|Add1~35\,
	sumout => \cv_1|Add1~37_sumout\,
	cout => \cv_1|Add1~38\,
	shareout => \cv_1|Add1~39\);

-- Location: MLABCELL_X13_Y18_N54
\cv_1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add1~5_sumout\ = SUM(( !\cv_1|Mult4~16\ $ (!\cv_1|Mult5~16\ $ (\cv_1|Mult3~16\)) ) + ( \cv_1|Add1~39\ ) + ( \cv_1|Add1~38\ ))
-- \cv_1|Add1~6\ = CARRY(( !\cv_1|Mult4~16\ $ (!\cv_1|Mult5~16\ $ (\cv_1|Mult3~16\)) ) + ( \cv_1|Add1~39\ ) + ( \cv_1|Add1~38\ ))
-- \cv_1|Add1~7\ = SHARE((!\cv_1|Mult4~16\ & (\cv_1|Mult5~16\ & \cv_1|Mult3~16\)) # (\cv_1|Mult4~16\ & ((\cv_1|Mult3~16\) # (\cv_1|Mult5~16\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult4~16\,
	datac => \cv_1|ALT_INV_Mult5~16\,
	datad => \cv_1|ALT_INV_Mult3~16\,
	cin => \cv_1|Add1~38\,
	sharein => \cv_1|Add1~39\,
	sumout => \cv_1|Add1~5_sumout\,
	cout => \cv_1|Add1~6\,
	shareout => \cv_1|Add1~7\);

-- Location: DSP_X8_Y21_N0
\cv_1|Mult7~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 8,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \cv_1|Mult7~8_ACLR_bus\,
	clk => \cv_1|Mult7~8_CLK_bus\,
	ena => \cv_1|Mult7~8_ENA_bus\,
	ax => \cv_1|Mult7~8_AX_bus\,
	ay => \cv_1|Mult7~8_AY_bus\,
	resulta => \cv_1|Mult7~8_RESULTA_bus\);

-- Location: DSP_X8_Y17_N0
\cv_1|Mult6~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 8,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \cv_1|Mult6~8_ACLR_bus\,
	clk => \cv_1|Mult6~8_CLK_bus\,
	ena => \cv_1|Mult6~8_ENA_bus\,
	ax => \cv_1|Mult6~8_AX_bus\,
	ay => \cv_1|Mult6~8_AY_bus\,
	resulta => \cv_1|Mult6~8_RESULTA_bus\);

-- Location: LABCELL_X14_Y12_N30
\input_filter[8][0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[8][0]~9_combout\ = ( !\convolution:delay[0]~q\ & ( (\convolution:cont_clock[2]~q\ & (\convolution:delay[1]~q\ & \convolution:cont_clock[1]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_convolution:cont_clock[2]~q\,
	datab => \ALT_INV_convolution:delay[1]~q\,
	datac => \ALT_INV_convolution:cont_clock[1]~q\,
	dataf => \ALT_INV_convolution:delay[0]~q\,
	combout => \input_filter[8][0]~9_combout\);

-- Location: MLABCELL_X13_Y12_N12
\input_filter[8][0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[8][0]~10_combout\ = ( !\convolution:enable_buffer_filter~q\ & ( (!\input_filter[8][0]~9_combout\ & (!\reset~input_o\ & ((\input_matrix[8][0]~2_combout\) # (\input_matrix~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000011100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_matrix~0_combout\,
	datab => \ALT_INV_input_matrix[8][0]~2_combout\,
	datac => \ALT_INV_input_filter[8][0]~9_combout\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_convolution:enable_buffer_filter~q\,
	combout => \input_filter[8][0]~10_combout\);

-- Location: DSP_X8_Y15_N0
\cv_1|Mult8~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 8,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \cv_1|Mult8~8_ACLR_bus\,
	clk => \cv_1|Mult8~8_CLK_bus\,
	ena => \cv_1|Mult8~8_ENA_bus\,
	ax => \cv_1|Mult8~8_AX_bus\,
	ay => \cv_1|Mult8~8_AY_bus\,
	resulta => \cv_1|Mult8~8_RESULTA_bus\);

-- Location: MLABCELL_X9_Y14_N0
\cv_1|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add5~1_sumout\ = SUM(( !\cv_1|Mult8~8_resulta\ $ (!\cv_1|Mult6~8_resulta\ $ (\cv_1|Mult7~8_resulta\)) ) + ( !VCC ) + ( !VCC ))
-- \cv_1|Add5~2\ = CARRY(( !\cv_1|Mult8~8_resulta\ $ (!\cv_1|Mult6~8_resulta\ $ (\cv_1|Mult7~8_resulta\)) ) + ( !VCC ) + ( !VCC ))
-- \cv_1|Add5~3\ = SHARE((!\cv_1|Mult8~8_resulta\ & (\cv_1|Mult6~8_resulta\ & \cv_1|Mult7~8_resulta\)) # (\cv_1|Mult8~8_resulta\ & ((\cv_1|Mult7~8_resulta\) # (\cv_1|Mult6~8_resulta\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult8~8_resulta\,
	datac => \cv_1|ALT_INV_Mult6~8_resulta\,
	datad => \cv_1|ALT_INV_Mult7~8_resulta\,
	cin => GND,
	sharein => GND,
	sumout => \cv_1|Add5~1_sumout\,
	cout => \cv_1|Add5~2\,
	shareout => \cv_1|Add5~3\);

-- Location: MLABCELL_X9_Y14_N3
\cv_1|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add5~13_sumout\ = SUM(( !\cv_1|Mult8~9\ $ (!\cv_1|Mult6~9\ $ (\cv_1|Mult7~9\)) ) + ( \cv_1|Add5~3\ ) + ( \cv_1|Add5~2\ ))
-- \cv_1|Add5~14\ = CARRY(( !\cv_1|Mult8~9\ $ (!\cv_1|Mult6~9\ $ (\cv_1|Mult7~9\)) ) + ( \cv_1|Add5~3\ ) + ( \cv_1|Add5~2\ ))
-- \cv_1|Add5~15\ = SHARE((!\cv_1|Mult8~9\ & (\cv_1|Mult6~9\ & \cv_1|Mult7~9\)) # (\cv_1|Mult8~9\ & ((\cv_1|Mult7~9\) # (\cv_1|Mult6~9\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult8~9\,
	datac => \cv_1|ALT_INV_Mult6~9\,
	datad => \cv_1|ALT_INV_Mult7~9\,
	cin => \cv_1|Add5~2\,
	sharein => \cv_1|Add5~3\,
	sumout => \cv_1|Add5~13_sumout\,
	cout => \cv_1|Add5~14\,
	shareout => \cv_1|Add5~15\);

-- Location: MLABCELL_X9_Y14_N6
\cv_1|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add5~17_sumout\ = SUM(( !\cv_1|Mult8~10\ $ (!\cv_1|Mult7~10\ $ (\cv_1|Mult6~10\)) ) + ( \cv_1|Add5~15\ ) + ( \cv_1|Add5~14\ ))
-- \cv_1|Add5~18\ = CARRY(( !\cv_1|Mult8~10\ $ (!\cv_1|Mult7~10\ $ (\cv_1|Mult6~10\)) ) + ( \cv_1|Add5~15\ ) + ( \cv_1|Add5~14\ ))
-- \cv_1|Add5~19\ = SHARE((!\cv_1|Mult8~10\ & (\cv_1|Mult7~10\ & \cv_1|Mult6~10\)) # (\cv_1|Mult8~10\ & ((\cv_1|Mult6~10\) # (\cv_1|Mult7~10\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult8~10\,
	datac => \cv_1|ALT_INV_Mult7~10\,
	datad => \cv_1|ALT_INV_Mult6~10\,
	cin => \cv_1|Add5~14\,
	sharein => \cv_1|Add5~15\,
	sumout => \cv_1|Add5~17_sumout\,
	cout => \cv_1|Add5~18\,
	shareout => \cv_1|Add5~19\);

-- Location: MLABCELL_X9_Y14_N9
\cv_1|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add5~21_sumout\ = SUM(( !\cv_1|Mult6~11\ $ (!\cv_1|Mult7~11\ $ (\cv_1|Mult8~11\)) ) + ( \cv_1|Add5~19\ ) + ( \cv_1|Add5~18\ ))
-- \cv_1|Add5~22\ = CARRY(( !\cv_1|Mult6~11\ $ (!\cv_1|Mult7~11\ $ (\cv_1|Mult8~11\)) ) + ( \cv_1|Add5~19\ ) + ( \cv_1|Add5~18\ ))
-- \cv_1|Add5~23\ = SHARE((!\cv_1|Mult6~11\ & (\cv_1|Mult7~11\ & \cv_1|Mult8~11\)) # (\cv_1|Mult6~11\ & ((\cv_1|Mult8~11\) # (\cv_1|Mult7~11\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult6~11\,
	datac => \cv_1|ALT_INV_Mult7~11\,
	datad => \cv_1|ALT_INV_Mult8~11\,
	cin => \cv_1|Add5~18\,
	sharein => \cv_1|Add5~19\,
	sumout => \cv_1|Add5~21_sumout\,
	cout => \cv_1|Add5~22\,
	shareout => \cv_1|Add5~23\);

-- Location: MLABCELL_X9_Y14_N12
\cv_1|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add5~25_sumout\ = SUM(( !\cv_1|Mult8~12\ $ (!\cv_1|Mult6~12\ $ (\cv_1|Mult7~12\)) ) + ( \cv_1|Add5~23\ ) + ( \cv_1|Add5~22\ ))
-- \cv_1|Add5~26\ = CARRY(( !\cv_1|Mult8~12\ $ (!\cv_1|Mult6~12\ $ (\cv_1|Mult7~12\)) ) + ( \cv_1|Add5~23\ ) + ( \cv_1|Add5~22\ ))
-- \cv_1|Add5~27\ = SHARE((!\cv_1|Mult8~12\ & (\cv_1|Mult6~12\ & \cv_1|Mult7~12\)) # (\cv_1|Mult8~12\ & ((\cv_1|Mult7~12\) # (\cv_1|Mult6~12\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult8~12\,
	datac => \cv_1|ALT_INV_Mult6~12\,
	datad => \cv_1|ALT_INV_Mult7~12\,
	cin => \cv_1|Add5~22\,
	sharein => \cv_1|Add5~23\,
	sumout => \cv_1|Add5~25_sumout\,
	cout => \cv_1|Add5~26\,
	shareout => \cv_1|Add5~27\);

-- Location: MLABCELL_X9_Y14_N15
\cv_1|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add5~29_sumout\ = SUM(( !\cv_1|Mult8~13\ $ (!\cv_1|Mult6~13\ $ (\cv_1|Mult7~13\)) ) + ( \cv_1|Add5~27\ ) + ( \cv_1|Add5~26\ ))
-- \cv_1|Add5~30\ = CARRY(( !\cv_1|Mult8~13\ $ (!\cv_1|Mult6~13\ $ (\cv_1|Mult7~13\)) ) + ( \cv_1|Add5~27\ ) + ( \cv_1|Add5~26\ ))
-- \cv_1|Add5~31\ = SHARE((!\cv_1|Mult8~13\ & (\cv_1|Mult6~13\ & \cv_1|Mult7~13\)) # (\cv_1|Mult8~13\ & ((\cv_1|Mult7~13\) # (\cv_1|Mult6~13\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult8~13\,
	datac => \cv_1|ALT_INV_Mult6~13\,
	datad => \cv_1|ALT_INV_Mult7~13\,
	cin => \cv_1|Add5~26\,
	sharein => \cv_1|Add5~27\,
	sumout => \cv_1|Add5~29_sumout\,
	cout => \cv_1|Add5~30\,
	shareout => \cv_1|Add5~31\);

-- Location: MLABCELL_X9_Y14_N18
\cv_1|Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add5~33_sumout\ = SUM(( !\cv_1|Mult8~14\ $ (!\cv_1|Mult6~14\ $ (\cv_1|Mult7~14\)) ) + ( \cv_1|Add5~31\ ) + ( \cv_1|Add5~30\ ))
-- \cv_1|Add5~34\ = CARRY(( !\cv_1|Mult8~14\ $ (!\cv_1|Mult6~14\ $ (\cv_1|Mult7~14\)) ) + ( \cv_1|Add5~31\ ) + ( \cv_1|Add5~30\ ))
-- \cv_1|Add5~35\ = SHARE((!\cv_1|Mult8~14\ & (\cv_1|Mult6~14\ & \cv_1|Mult7~14\)) # (\cv_1|Mult8~14\ & ((\cv_1|Mult7~14\) # (\cv_1|Mult6~14\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult8~14\,
	datac => \cv_1|ALT_INV_Mult6~14\,
	datad => \cv_1|ALT_INV_Mult7~14\,
	cin => \cv_1|Add5~30\,
	sharein => \cv_1|Add5~31\,
	sumout => \cv_1|Add5~33_sumout\,
	cout => \cv_1|Add5~34\,
	shareout => \cv_1|Add5~35\);

-- Location: MLABCELL_X9_Y14_N21
\cv_1|Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add5~37_sumout\ = SUM(( !\cv_1|Mult6~15\ $ (!\cv_1|Mult8~15\ $ (\cv_1|Mult7~15\)) ) + ( \cv_1|Add5~35\ ) + ( \cv_1|Add5~34\ ))
-- \cv_1|Add5~38\ = CARRY(( !\cv_1|Mult6~15\ $ (!\cv_1|Mult8~15\ $ (\cv_1|Mult7~15\)) ) + ( \cv_1|Add5~35\ ) + ( \cv_1|Add5~34\ ))
-- \cv_1|Add5~39\ = SHARE((!\cv_1|Mult6~15\ & (\cv_1|Mult8~15\ & \cv_1|Mult7~15\)) # (\cv_1|Mult6~15\ & ((\cv_1|Mult7~15\) # (\cv_1|Mult8~15\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult6~15\,
	datac => \cv_1|ALT_INV_Mult8~15\,
	datad => \cv_1|ALT_INV_Mult7~15\,
	cin => \cv_1|Add5~34\,
	sharein => \cv_1|Add5~35\,
	sumout => \cv_1|Add5~37_sumout\,
	cout => \cv_1|Add5~38\,
	shareout => \cv_1|Add5~39\);

-- Location: MLABCELL_X9_Y14_N24
\cv_1|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add5~5_sumout\ = SUM(( !\cv_1|Mult7~16\ $ (!\cv_1|Mult6~16\ $ (\cv_1|Mult8~16\)) ) + ( \cv_1|Add5~39\ ) + ( \cv_1|Add5~38\ ))
-- \cv_1|Add5~6\ = CARRY(( !\cv_1|Mult7~16\ $ (!\cv_1|Mult6~16\ $ (\cv_1|Mult8~16\)) ) + ( \cv_1|Add5~39\ ) + ( \cv_1|Add5~38\ ))
-- \cv_1|Add5~7\ = SHARE((!\cv_1|Mult7~16\ & (\cv_1|Mult6~16\ & \cv_1|Mult8~16\)) # (\cv_1|Mult7~16\ & ((\cv_1|Mult8~16\) # (\cv_1|Mult6~16\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult7~16\,
	datac => \cv_1|ALT_INV_Mult6~16\,
	datad => \cv_1|ALT_INV_Mult8~16\,
	cin => \cv_1|Add5~38\,
	sharein => \cv_1|Add5~39\,
	sumout => \cv_1|Add5~5_sumout\,
	cout => \cv_1|Add5~6\,
	shareout => \cv_1|Add5~7\);

-- Location: DSP_X8_Y13_N0
\cv_1|Mult2~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 8,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \cv_1|Mult2~8_ACLR_bus\,
	clk => \cv_1|Mult2~8_CLK_bus\,
	ena => \cv_1|Mult2~8_ENA_bus\,
	ax => \cv_1|Mult2~8_AX_bus\,
	ay => \cv_1|Mult2~8_AY_bus\,
	resulta => \cv_1|Mult2~8_RESULTA_bus\);

-- Location: MLABCELL_X13_Y12_N9
\input_filter[1][0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \input_filter[1][0]~11_combout\ = ( !\input_matrix~0_combout\ & ( (!\reset~input_o\ & (!\Decoder1~3_combout\ & !\convolution:enable_buffer_filter~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_Decoder1~3_combout\,
	datac => \ALT_INV_convolution:enable_buffer_filter~q\,
	dataf => \ALT_INV_input_matrix~0_combout\,
	combout => \input_filter[1][0]~11_combout\);

-- Location: DSP_X8_Y9_N0
\cv_1|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 8,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \cv_1|Mult0~8_ACLR_bus\,
	clk => \cv_1|Mult0~8_CLK_bus\,
	ena => \cv_1|Mult0~8_ENA_bus\,
	ax => \cv_1|Mult0~8_AX_bus\,
	ay => \cv_1|Mult0~8_AY_bus\,
	resulta => \cv_1|Mult0~8_RESULTA_bus\);

-- Location: DSP_X8_Y11_N0
\cv_1|Mult1~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 8,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \cv_1|Mult1~8_ACLR_bus\,
	clk => \cv_1|Mult1~8_CLK_bus\,
	ena => \cv_1|Mult1~8_ENA_bus\,
	ax => \cv_1|Mult1~8_AX_bus\,
	ay => \cv_1|Mult1~8_AY_bus\,
	resulta => \cv_1|Mult1~8_RESULTA_bus\);

-- Location: MLABCELL_X9_Y13_N0
\cv_1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~81_sumout\ = SUM(( !\cv_1|Mult1~8_resulta\ $ (!\cv_1|Mult2~8_resulta\ $ (\cv_1|Mult0~8_resulta\)) ) + ( !VCC ) + ( !VCC ))
-- \cv_1|Add0~82\ = CARRY(( !\cv_1|Mult1~8_resulta\ $ (!\cv_1|Mult2~8_resulta\ $ (\cv_1|Mult0~8_resulta\)) ) + ( !VCC ) + ( !VCC ))
-- \cv_1|Add0~83\ = SHARE((!\cv_1|Mult1~8_resulta\ & (\cv_1|Mult2~8_resulta\ & \cv_1|Mult0~8_resulta\)) # (\cv_1|Mult1~8_resulta\ & ((\cv_1|Mult0~8_resulta\) # (\cv_1|Mult2~8_resulta\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult1~8_resulta\,
	datac => \cv_1|ALT_INV_Mult2~8_resulta\,
	datad => \cv_1|ALT_INV_Mult0~8_resulta\,
	cin => GND,
	sharein => GND,
	sumout => \cv_1|Add0~81_sumout\,
	cout => \cv_1|Add0~82\,
	shareout => \cv_1|Add0~83\);

-- Location: MLABCELL_X9_Y13_N3
\cv_1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~93_sumout\ = SUM(( !\cv_1|Mult0~9\ $ (!\cv_1|Mult1~9\ $ (\cv_1|Mult2~9\)) ) + ( \cv_1|Add0~83\ ) + ( \cv_1|Add0~82\ ))
-- \cv_1|Add0~94\ = CARRY(( !\cv_1|Mult0~9\ $ (!\cv_1|Mult1~9\ $ (\cv_1|Mult2~9\)) ) + ( \cv_1|Add0~83\ ) + ( \cv_1|Add0~82\ ))
-- \cv_1|Add0~95\ = SHARE((!\cv_1|Mult0~9\ & (\cv_1|Mult1~9\ & \cv_1|Mult2~9\)) # (\cv_1|Mult0~9\ & ((\cv_1|Mult2~9\) # (\cv_1|Mult1~9\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult0~9\,
	datac => \cv_1|ALT_INV_Mult1~9\,
	datad => \cv_1|ALT_INV_Mult2~9\,
	cin => \cv_1|Add0~82\,
	sharein => \cv_1|Add0~83\,
	sumout => \cv_1|Add0~93_sumout\,
	cout => \cv_1|Add0~94\,
	shareout => \cv_1|Add0~95\);

-- Location: MLABCELL_X9_Y13_N6
\cv_1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~97_sumout\ = SUM(( !\cv_1|Mult2~10\ $ (!\cv_1|Mult0~10\ $ (\cv_1|Mult1~10\)) ) + ( \cv_1|Add0~95\ ) + ( \cv_1|Add0~94\ ))
-- \cv_1|Add0~98\ = CARRY(( !\cv_1|Mult2~10\ $ (!\cv_1|Mult0~10\ $ (\cv_1|Mult1~10\)) ) + ( \cv_1|Add0~95\ ) + ( \cv_1|Add0~94\ ))
-- \cv_1|Add0~99\ = SHARE((!\cv_1|Mult2~10\ & (\cv_1|Mult0~10\ & \cv_1|Mult1~10\)) # (\cv_1|Mult2~10\ & ((\cv_1|Mult1~10\) # (\cv_1|Mult0~10\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult2~10\,
	datac => \cv_1|ALT_INV_Mult0~10\,
	datad => \cv_1|ALT_INV_Mult1~10\,
	cin => \cv_1|Add0~94\,
	sharein => \cv_1|Add0~95\,
	sumout => \cv_1|Add0~97_sumout\,
	cout => \cv_1|Add0~98\,
	shareout => \cv_1|Add0~99\);

-- Location: MLABCELL_X9_Y13_N9
\cv_1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~101_sumout\ = SUM(( !\cv_1|Mult0~11\ $ (!\cv_1|Mult1~11\ $ (\cv_1|Mult2~11\)) ) + ( \cv_1|Add0~99\ ) + ( \cv_1|Add0~98\ ))
-- \cv_1|Add0~102\ = CARRY(( !\cv_1|Mult0~11\ $ (!\cv_1|Mult1~11\ $ (\cv_1|Mult2~11\)) ) + ( \cv_1|Add0~99\ ) + ( \cv_1|Add0~98\ ))
-- \cv_1|Add0~103\ = SHARE((!\cv_1|Mult0~11\ & (\cv_1|Mult1~11\ & \cv_1|Mult2~11\)) # (\cv_1|Mult0~11\ & ((\cv_1|Mult2~11\) # (\cv_1|Mult1~11\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult0~11\,
	datac => \cv_1|ALT_INV_Mult1~11\,
	datad => \cv_1|ALT_INV_Mult2~11\,
	cin => \cv_1|Add0~98\,
	sharein => \cv_1|Add0~99\,
	sumout => \cv_1|Add0~101_sumout\,
	cout => \cv_1|Add0~102\,
	shareout => \cv_1|Add0~103\);

-- Location: MLABCELL_X9_Y13_N12
\cv_1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~105_sumout\ = SUM(( !\cv_1|Mult0~12\ $ (!\cv_1|Mult1~12\ $ (\cv_1|Mult2~12\)) ) + ( \cv_1|Add0~103\ ) + ( \cv_1|Add0~102\ ))
-- \cv_1|Add0~106\ = CARRY(( !\cv_1|Mult0~12\ $ (!\cv_1|Mult1~12\ $ (\cv_1|Mult2~12\)) ) + ( \cv_1|Add0~103\ ) + ( \cv_1|Add0~102\ ))
-- \cv_1|Add0~107\ = SHARE((!\cv_1|Mult0~12\ & (\cv_1|Mult1~12\ & \cv_1|Mult2~12\)) # (\cv_1|Mult0~12\ & ((\cv_1|Mult2~12\) # (\cv_1|Mult1~12\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult0~12\,
	datac => \cv_1|ALT_INV_Mult1~12\,
	datad => \cv_1|ALT_INV_Mult2~12\,
	cin => \cv_1|Add0~102\,
	sharein => \cv_1|Add0~103\,
	sumout => \cv_1|Add0~105_sumout\,
	cout => \cv_1|Add0~106\,
	shareout => \cv_1|Add0~107\);

-- Location: MLABCELL_X9_Y13_N15
\cv_1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~109_sumout\ = SUM(( !\cv_1|Mult2~13\ $ (!\cv_1|Mult0~13\ $ (\cv_1|Mult1~13\)) ) + ( \cv_1|Add0~107\ ) + ( \cv_1|Add0~106\ ))
-- \cv_1|Add0~110\ = CARRY(( !\cv_1|Mult2~13\ $ (!\cv_1|Mult0~13\ $ (\cv_1|Mult1~13\)) ) + ( \cv_1|Add0~107\ ) + ( \cv_1|Add0~106\ ))
-- \cv_1|Add0~111\ = SHARE((!\cv_1|Mult2~13\ & (\cv_1|Mult0~13\ & \cv_1|Mult1~13\)) # (\cv_1|Mult2~13\ & ((\cv_1|Mult1~13\) # (\cv_1|Mult0~13\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult2~13\,
	datac => \cv_1|ALT_INV_Mult0~13\,
	datad => \cv_1|ALT_INV_Mult1~13\,
	cin => \cv_1|Add0~106\,
	sharein => \cv_1|Add0~107\,
	sumout => \cv_1|Add0~109_sumout\,
	cout => \cv_1|Add0~110\,
	shareout => \cv_1|Add0~111\);

-- Location: MLABCELL_X9_Y13_N18
\cv_1|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~113_sumout\ = SUM(( !\cv_1|Mult2~14\ $ (!\cv_1|Mult0~14\ $ (\cv_1|Mult1~14\)) ) + ( \cv_1|Add0~111\ ) + ( \cv_1|Add0~110\ ))
-- \cv_1|Add0~114\ = CARRY(( !\cv_1|Mult2~14\ $ (!\cv_1|Mult0~14\ $ (\cv_1|Mult1~14\)) ) + ( \cv_1|Add0~111\ ) + ( \cv_1|Add0~110\ ))
-- \cv_1|Add0~115\ = SHARE((!\cv_1|Mult2~14\ & (\cv_1|Mult0~14\ & \cv_1|Mult1~14\)) # (\cv_1|Mult2~14\ & ((\cv_1|Mult1~14\) # (\cv_1|Mult0~14\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult2~14\,
	datac => \cv_1|ALT_INV_Mult0~14\,
	datad => \cv_1|ALT_INV_Mult1~14\,
	cin => \cv_1|Add0~110\,
	sharein => \cv_1|Add0~111\,
	sumout => \cv_1|Add0~113_sumout\,
	cout => \cv_1|Add0~114\,
	shareout => \cv_1|Add0~115\);

-- Location: MLABCELL_X9_Y13_N21
\cv_1|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~117_sumout\ = SUM(( !\cv_1|Mult2~15\ $ (!\cv_1|Mult0~15\ $ (\cv_1|Mult1~15\)) ) + ( \cv_1|Add0~115\ ) + ( \cv_1|Add0~114\ ))
-- \cv_1|Add0~118\ = CARRY(( !\cv_1|Mult2~15\ $ (!\cv_1|Mult0~15\ $ (\cv_1|Mult1~15\)) ) + ( \cv_1|Add0~115\ ) + ( \cv_1|Add0~114\ ))
-- \cv_1|Add0~119\ = SHARE((!\cv_1|Mult2~15\ & (\cv_1|Mult0~15\ & \cv_1|Mult1~15\)) # (\cv_1|Mult2~15\ & ((\cv_1|Mult1~15\) # (\cv_1|Mult0~15\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult2~15\,
	datac => \cv_1|ALT_INV_Mult0~15\,
	datad => \cv_1|ALT_INV_Mult1~15\,
	cin => \cv_1|Add0~114\,
	sharein => \cv_1|Add0~115\,
	sumout => \cv_1|Add0~117_sumout\,
	cout => \cv_1|Add0~118\,
	shareout => \cv_1|Add0~119\);

-- Location: MLABCELL_X9_Y13_N24
\cv_1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~85_sumout\ = SUM(( !\cv_1|Mult2~16\ $ (!\cv_1|Mult0~16\ $ (\cv_1|Mult1~16\)) ) + ( \cv_1|Add0~119\ ) + ( \cv_1|Add0~118\ ))
-- \cv_1|Add0~86\ = CARRY(( !\cv_1|Mult2~16\ $ (!\cv_1|Mult0~16\ $ (\cv_1|Mult1~16\)) ) + ( \cv_1|Add0~119\ ) + ( \cv_1|Add0~118\ ))
-- \cv_1|Add0~87\ = SHARE((!\cv_1|Mult2~16\ & (\cv_1|Mult0~16\ & \cv_1|Mult1~16\)) # (\cv_1|Mult2~16\ & ((\cv_1|Mult1~16\) # (\cv_1|Mult0~16\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult2~16\,
	datac => \cv_1|ALT_INV_Mult0~16\,
	datad => \cv_1|ALT_INV_Mult1~16\,
	cin => \cv_1|Add0~118\,
	sharein => \cv_1|Add0~119\,
	sumout => \cv_1|Add0~85_sumout\,
	cout => \cv_1|Add0~86\,
	shareout => \cv_1|Add0~87\);

-- Location: LABCELL_X12_Y14_N30
\cv_1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~41_sumout\ = SUM(( !\cv_1|Add1~1_sumout\ $ (!\cv_1|Add0~81_sumout\ $ (\cv_1|Add5~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \cv_1|Add0~42\ = CARRY(( !\cv_1|Add1~1_sumout\ $ (!\cv_1|Add0~81_sumout\ $ (\cv_1|Add5~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \cv_1|Add0~43\ = SHARE((!\cv_1|Add1~1_sumout\ & (\cv_1|Add0~81_sumout\ & \cv_1|Add5~1_sumout\)) # (\cv_1|Add1~1_sumout\ & ((\cv_1|Add5~1_sumout\) # (\cv_1|Add0~81_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Add1~1_sumout\,
	datac => \cv_1|ALT_INV_Add0~81_sumout\,
	datad => \cv_1|ALT_INV_Add5~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \cv_1|Add0~41_sumout\,
	cout => \cv_1|Add0~42\,
	shareout => \cv_1|Add0~43\);

-- Location: LABCELL_X12_Y14_N33
\cv_1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~53_sumout\ = SUM(( !\cv_1|Add0~93_sumout\ $ (!\cv_1|Add5~13_sumout\ $ (\cv_1|Add1~13_sumout\)) ) + ( \cv_1|Add0~43\ ) + ( \cv_1|Add0~42\ ))
-- \cv_1|Add0~54\ = CARRY(( !\cv_1|Add0~93_sumout\ $ (!\cv_1|Add5~13_sumout\ $ (\cv_1|Add1~13_sumout\)) ) + ( \cv_1|Add0~43\ ) + ( \cv_1|Add0~42\ ))
-- \cv_1|Add0~55\ = SHARE((!\cv_1|Add0~93_sumout\ & (\cv_1|Add5~13_sumout\ & \cv_1|Add1~13_sumout\)) # (\cv_1|Add0~93_sumout\ & ((\cv_1|Add1~13_sumout\) # (\cv_1|Add5~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Add0~93_sumout\,
	datac => \cv_1|ALT_INV_Add5~13_sumout\,
	datad => \cv_1|ALT_INV_Add1~13_sumout\,
	cin => \cv_1|Add0~42\,
	sharein => \cv_1|Add0~43\,
	sumout => \cv_1|Add0~53_sumout\,
	cout => \cv_1|Add0~54\,
	shareout => \cv_1|Add0~55\);

-- Location: LABCELL_X12_Y14_N36
\cv_1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~57_sumout\ = SUM(( !\cv_1|Add5~17_sumout\ $ (!\cv_1|Add1~17_sumout\ $ (\cv_1|Add0~97_sumout\)) ) + ( \cv_1|Add0~55\ ) + ( \cv_1|Add0~54\ ))
-- \cv_1|Add0~58\ = CARRY(( !\cv_1|Add5~17_sumout\ $ (!\cv_1|Add1~17_sumout\ $ (\cv_1|Add0~97_sumout\)) ) + ( \cv_1|Add0~55\ ) + ( \cv_1|Add0~54\ ))
-- \cv_1|Add0~59\ = SHARE((!\cv_1|Add5~17_sumout\ & (\cv_1|Add1~17_sumout\ & \cv_1|Add0~97_sumout\)) # (\cv_1|Add5~17_sumout\ & ((\cv_1|Add0~97_sumout\) # (\cv_1|Add1~17_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Add5~17_sumout\,
	datac => \cv_1|ALT_INV_Add1~17_sumout\,
	datad => \cv_1|ALT_INV_Add0~97_sumout\,
	cin => \cv_1|Add0~54\,
	sharein => \cv_1|Add0~55\,
	sumout => \cv_1|Add0~57_sumout\,
	cout => \cv_1|Add0~58\,
	shareout => \cv_1|Add0~59\);

-- Location: LABCELL_X12_Y14_N39
\cv_1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~61_sumout\ = SUM(( !\cv_1|Add0~101_sumout\ $ (!\cv_1|Add5~21_sumout\ $ (\cv_1|Add1~21_sumout\)) ) + ( \cv_1|Add0~59\ ) + ( \cv_1|Add0~58\ ))
-- \cv_1|Add0~62\ = CARRY(( !\cv_1|Add0~101_sumout\ $ (!\cv_1|Add5~21_sumout\ $ (\cv_1|Add1~21_sumout\)) ) + ( \cv_1|Add0~59\ ) + ( \cv_1|Add0~58\ ))
-- \cv_1|Add0~63\ = SHARE((!\cv_1|Add0~101_sumout\ & (\cv_1|Add5~21_sumout\ & \cv_1|Add1~21_sumout\)) # (\cv_1|Add0~101_sumout\ & ((\cv_1|Add1~21_sumout\) # (\cv_1|Add5~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Add0~101_sumout\,
	datac => \cv_1|ALT_INV_Add5~21_sumout\,
	datad => \cv_1|ALT_INV_Add1~21_sumout\,
	cin => \cv_1|Add0~58\,
	sharein => \cv_1|Add0~59\,
	sumout => \cv_1|Add0~61_sumout\,
	cout => \cv_1|Add0~62\,
	shareout => \cv_1|Add0~63\);

-- Location: LABCELL_X12_Y14_N42
\cv_1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~65_sumout\ = SUM(( !\cv_1|Add0~105_sumout\ $ (!\cv_1|Add5~25_sumout\ $ (\cv_1|Add1~25_sumout\)) ) + ( \cv_1|Add0~63\ ) + ( \cv_1|Add0~62\ ))
-- \cv_1|Add0~66\ = CARRY(( !\cv_1|Add0~105_sumout\ $ (!\cv_1|Add5~25_sumout\ $ (\cv_1|Add1~25_sumout\)) ) + ( \cv_1|Add0~63\ ) + ( \cv_1|Add0~62\ ))
-- \cv_1|Add0~67\ = SHARE((!\cv_1|Add0~105_sumout\ & (\cv_1|Add5~25_sumout\ & \cv_1|Add1~25_sumout\)) # (\cv_1|Add0~105_sumout\ & ((\cv_1|Add1~25_sumout\) # (\cv_1|Add5~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Add0~105_sumout\,
	datac => \cv_1|ALT_INV_Add5~25_sumout\,
	datad => \cv_1|ALT_INV_Add1~25_sumout\,
	cin => \cv_1|Add0~62\,
	sharein => \cv_1|Add0~63\,
	sumout => \cv_1|Add0~65_sumout\,
	cout => \cv_1|Add0~66\,
	shareout => \cv_1|Add0~67\);

-- Location: LABCELL_X12_Y14_N45
\cv_1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~69_sumout\ = SUM(( !\cv_1|Add1~29_sumout\ $ (!\cv_1|Add5~29_sumout\ $ (\cv_1|Add0~109_sumout\)) ) + ( \cv_1|Add0~67\ ) + ( \cv_1|Add0~66\ ))
-- \cv_1|Add0~70\ = CARRY(( !\cv_1|Add1~29_sumout\ $ (!\cv_1|Add5~29_sumout\ $ (\cv_1|Add0~109_sumout\)) ) + ( \cv_1|Add0~67\ ) + ( \cv_1|Add0~66\ ))
-- \cv_1|Add0~71\ = SHARE((!\cv_1|Add1~29_sumout\ & (\cv_1|Add5~29_sumout\ & \cv_1|Add0~109_sumout\)) # (\cv_1|Add1~29_sumout\ & ((\cv_1|Add0~109_sumout\) # (\cv_1|Add5~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Add1~29_sumout\,
	datac => \cv_1|ALT_INV_Add5~29_sumout\,
	datad => \cv_1|ALT_INV_Add0~109_sumout\,
	cin => \cv_1|Add0~66\,
	sharein => \cv_1|Add0~67\,
	sumout => \cv_1|Add0~69_sumout\,
	cout => \cv_1|Add0~70\,
	shareout => \cv_1|Add0~71\);

-- Location: LABCELL_X12_Y14_N48
\cv_1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~73_sumout\ = SUM(( !\cv_1|Add0~113_sumout\ $ (!\cv_1|Add5~33_sumout\ $ (\cv_1|Add1~33_sumout\)) ) + ( \cv_1|Add0~71\ ) + ( \cv_1|Add0~70\ ))
-- \cv_1|Add0~74\ = CARRY(( !\cv_1|Add0~113_sumout\ $ (!\cv_1|Add5~33_sumout\ $ (\cv_1|Add1~33_sumout\)) ) + ( \cv_1|Add0~71\ ) + ( \cv_1|Add0~70\ ))
-- \cv_1|Add0~75\ = SHARE((!\cv_1|Add0~113_sumout\ & (\cv_1|Add5~33_sumout\ & \cv_1|Add1~33_sumout\)) # (\cv_1|Add0~113_sumout\ & ((\cv_1|Add1~33_sumout\) # (\cv_1|Add5~33_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Add0~113_sumout\,
	datac => \cv_1|ALT_INV_Add5~33_sumout\,
	datad => \cv_1|ALT_INV_Add1~33_sumout\,
	cin => \cv_1|Add0~70\,
	sharein => \cv_1|Add0~71\,
	sumout => \cv_1|Add0~73_sumout\,
	cout => \cv_1|Add0~74\,
	shareout => \cv_1|Add0~75\);

-- Location: LABCELL_X12_Y14_N51
\cv_1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~77_sumout\ = SUM(( !\cv_1|Add0~117_sumout\ $ (!\cv_1|Add1~37_sumout\ $ (\cv_1|Add5~37_sumout\)) ) + ( \cv_1|Add0~75\ ) + ( \cv_1|Add0~74\ ))
-- \cv_1|Add0~78\ = CARRY(( !\cv_1|Add0~117_sumout\ $ (!\cv_1|Add1~37_sumout\ $ (\cv_1|Add5~37_sumout\)) ) + ( \cv_1|Add0~75\ ) + ( \cv_1|Add0~74\ ))
-- \cv_1|Add0~79\ = SHARE((!\cv_1|Add0~117_sumout\ & (\cv_1|Add1~37_sumout\ & \cv_1|Add5~37_sumout\)) # (\cv_1|Add0~117_sumout\ & ((\cv_1|Add5~37_sumout\) # (\cv_1|Add1~37_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Add0~117_sumout\,
	datac => \cv_1|ALT_INV_Add1~37_sumout\,
	datad => \cv_1|ALT_INV_Add5~37_sumout\,
	cin => \cv_1|Add0~74\,
	sharein => \cv_1|Add0~75\,
	sumout => \cv_1|Add0~77_sumout\,
	cout => \cv_1|Add0~78\,
	shareout => \cv_1|Add0~79\);

-- Location: LABCELL_X12_Y14_N54
\cv_1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~45_sumout\ = SUM(( !\cv_1|Add1~5_sumout\ $ (!\cv_1|Add5~5_sumout\ $ (\cv_1|Add0~85_sumout\)) ) + ( \cv_1|Add0~79\ ) + ( \cv_1|Add0~78\ ))
-- \cv_1|Add0~46\ = CARRY(( !\cv_1|Add1~5_sumout\ $ (!\cv_1|Add5~5_sumout\ $ (\cv_1|Add0~85_sumout\)) ) + ( \cv_1|Add0~79\ ) + ( \cv_1|Add0~78\ ))
-- \cv_1|Add0~47\ = SHARE((!\cv_1|Add1~5_sumout\ & (\cv_1|Add5~5_sumout\ & \cv_1|Add0~85_sumout\)) # (\cv_1|Add1~5_sumout\ & ((\cv_1|Add0~85_sumout\) # (\cv_1|Add5~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Add1~5_sumout\,
	datac => \cv_1|ALT_INV_Add5~5_sumout\,
	datad => \cv_1|ALT_INV_Add0~85_sumout\,
	cin => \cv_1|Add0~78\,
	sharein => \cv_1|Add0~79\,
	sumout => \cv_1|Add0~45_sumout\,
	cout => \cv_1|Add0~46\,
	shareout => \cv_1|Add0~47\);

-- Location: MLABCELL_X13_Y14_N30
\cv_1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~1_sumout\ = SUM(( \cv_1|Add8~1_sumout\ ) + ( \cv_1|Add0~41_sumout\ ) + ( !VCC ))
-- \cv_1|Add0~2\ = CARRY(( \cv_1|Add8~1_sumout\ ) + ( \cv_1|Add0~41_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cv_1|ALT_INV_Add0~41_sumout\,
	datad => \cv_1|ALT_INV_Add8~1_sumout\,
	cin => GND,
	sumout => \cv_1|Add0~1_sumout\,
	cout => \cv_1|Add0~2\);

-- Location: MLABCELL_X13_Y14_N33
\cv_1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~13_sumout\ = SUM(( \cv_1|Add8~13_sumout\ ) + ( \cv_1|Add0~53_sumout\ ) + ( \cv_1|Add0~2\ ))
-- \cv_1|Add0~14\ = CARRY(( \cv_1|Add8~13_sumout\ ) + ( \cv_1|Add0~53_sumout\ ) + ( \cv_1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cv_1|ALT_INV_Add0~53_sumout\,
	datad => \cv_1|ALT_INV_Add8~13_sumout\,
	cin => \cv_1|Add0~2\,
	sumout => \cv_1|Add0~13_sumout\,
	cout => \cv_1|Add0~14\);

-- Location: MLABCELL_X13_Y14_N36
\cv_1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~17_sumout\ = SUM(( \cv_1|Add8~17_sumout\ ) + ( \cv_1|Add0~57_sumout\ ) + ( \cv_1|Add0~14\ ))
-- \cv_1|Add0~18\ = CARRY(( \cv_1|Add8~17_sumout\ ) + ( \cv_1|Add0~57_sumout\ ) + ( \cv_1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cv_1|ALT_INV_Add0~57_sumout\,
	datad => \cv_1|ALT_INV_Add8~17_sumout\,
	cin => \cv_1|Add0~14\,
	sumout => \cv_1|Add0~17_sumout\,
	cout => \cv_1|Add0~18\);

-- Location: MLABCELL_X13_Y14_N39
\cv_1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~21_sumout\ = SUM(( \cv_1|Add8~21_sumout\ ) + ( \cv_1|Add0~61_sumout\ ) + ( \cv_1|Add0~18\ ))
-- \cv_1|Add0~22\ = CARRY(( \cv_1|Add8~21_sumout\ ) + ( \cv_1|Add0~61_sumout\ ) + ( \cv_1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Add0~61_sumout\,
	datad => \cv_1|ALT_INV_Add8~21_sumout\,
	cin => \cv_1|Add0~18\,
	sumout => \cv_1|Add0~21_sumout\,
	cout => \cv_1|Add0~22\);

-- Location: MLABCELL_X13_Y14_N42
\cv_1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~25_sumout\ = SUM(( \cv_1|Add0~65_sumout\ ) + ( \cv_1|Add8~25_sumout\ ) + ( \cv_1|Add0~22\ ))
-- \cv_1|Add0~26\ = CARRY(( \cv_1|Add0~65_sumout\ ) + ( \cv_1|Add8~25_sumout\ ) + ( \cv_1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Add8~25_sumout\,
	datad => \cv_1|ALT_INV_Add0~65_sumout\,
	cin => \cv_1|Add0~22\,
	sumout => \cv_1|Add0~25_sumout\,
	cout => \cv_1|Add0~26\);

-- Location: MLABCELL_X13_Y14_N45
\cv_1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~29_sumout\ = SUM(( \cv_1|Add8~29_sumout\ ) + ( \cv_1|Add0~69_sumout\ ) + ( \cv_1|Add0~26\ ))
-- \cv_1|Add0~30\ = CARRY(( \cv_1|Add8~29_sumout\ ) + ( \cv_1|Add0~69_sumout\ ) + ( \cv_1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Add0~69_sumout\,
	datad => \cv_1|ALT_INV_Add8~29_sumout\,
	cin => \cv_1|Add0~26\,
	sumout => \cv_1|Add0~29_sumout\,
	cout => \cv_1|Add0~30\);

-- Location: MLABCELL_X13_Y14_N48
\cv_1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~33_sumout\ = SUM(( \cv_1|Add0~73_sumout\ ) + ( \cv_1|Add8~33_sumout\ ) + ( \cv_1|Add0~30\ ))
-- \cv_1|Add0~34\ = CARRY(( \cv_1|Add0~73_sumout\ ) + ( \cv_1|Add8~33_sumout\ ) + ( \cv_1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Add8~33_sumout\,
	datad => \cv_1|ALT_INV_Add0~73_sumout\,
	cin => \cv_1|Add0~30\,
	sumout => \cv_1|Add0~33_sumout\,
	cout => \cv_1|Add0~34\);

-- Location: MLABCELL_X13_Y14_N51
\cv_1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~37_sumout\ = SUM(( \cv_1|Add8~37_sumout\ ) + ( \cv_1|Add0~77_sumout\ ) + ( \cv_1|Add0~34\ ))
-- \cv_1|Add0~38\ = CARRY(( \cv_1|Add8~37_sumout\ ) + ( \cv_1|Add0~77_sumout\ ) + ( \cv_1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Add0~77_sumout\,
	datad => \cv_1|ALT_INV_Add8~37_sumout\,
	cin => \cv_1|Add0~34\,
	sumout => \cv_1|Add0~37_sumout\,
	cout => \cv_1|Add0~38\);

-- Location: MLABCELL_X13_Y14_N54
\cv_1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~5_sumout\ = SUM(( \cv_1|Add8~5_sumout\ ) + ( \cv_1|Add0~45_sumout\ ) + ( \cv_1|Add0~38\ ))
-- \cv_1|Add0~6\ = CARRY(( \cv_1|Add8~5_sumout\ ) + ( \cv_1|Add0~45_sumout\ ) + ( \cv_1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Add8~5_sumout\,
	datac => \cv_1|ALT_INV_Add0~45_sumout\,
	cin => \cv_1|Add0~38\,
	sumout => \cv_1|Add0~5_sumout\,
	cout => \cv_1|Add0~6\);

-- Location: MLABCELL_X13_Y14_N27
\cv_1|cv_o~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|cv_o~0_combout\ = ( \cv_1|Add0~1_sumout\ ) # ( !\cv_1|Add0~1_sumout\ & ( \cv_1|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cv_1|ALT_INV_Add0~5_sumout\,
	dataf => \cv_1|ALT_INV_Add0~1_sumout\,
	combout => \cv_1|cv_o~0_combout\);

-- Location: MLABCELL_X9_Y13_N27
\cv_1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~89_sumout\ = SUM(( !\cv_1|Mult1~25\ $ (!\cv_1|Mult0~25\ $ (\cv_1|Mult2~25\)) ) + ( \cv_1|Add0~87\ ) + ( \cv_1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult1~25\,
	datac => \cv_1|ALT_INV_Mult0~25\,
	datad => \cv_1|ALT_INV_Mult2~25\,
	cin => \cv_1|Add0~86\,
	sharein => \cv_1|Add0~87\,
	sumout => \cv_1|Add0~89_sumout\);

-- Location: MLABCELL_X9_Y14_N27
\cv_1|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add5~9_sumout\ = SUM(( !\cv_1|Mult8~25\ $ (!\cv_1|Mult7~25\ $ (\cv_1|Mult6~25\)) ) + ( \cv_1|Add5~7\ ) + ( \cv_1|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult8~25\,
	datac => \cv_1|ALT_INV_Mult7~25\,
	datad => \cv_1|ALT_INV_Mult6~25\,
	cin => \cv_1|Add5~6\,
	sharein => \cv_1|Add5~7\,
	sumout => \cv_1|Add5~9_sumout\);

-- Location: MLABCELL_X13_Y18_N57
\cv_1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add1~9_sumout\ = SUM(( !\cv_1|Mult4~25\ $ (!\cv_1|Mult3~25\ $ (\cv_1|Mult5~25\)) ) + ( \cv_1|Add1~7\ ) + ( \cv_1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult4~25\,
	datac => \cv_1|ALT_INV_Mult3~25\,
	datad => \cv_1|ALT_INV_Mult5~25\,
	cin => \cv_1|Add1~6\,
	sharein => \cv_1|Add1~7\,
	sumout => \cv_1|Add1~9_sumout\);

-- Location: LABCELL_X12_Y14_N57
\cv_1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~49_sumout\ = SUM(( !\cv_1|Add0~89_sumout\ $ (!\cv_1|Add5~9_sumout\ $ (\cv_1|Add1~9_sumout\)) ) + ( \cv_1|Add0~47\ ) + ( \cv_1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Add0~89_sumout\,
	datac => \cv_1|ALT_INV_Add5~9_sumout\,
	datad => \cv_1|ALT_INV_Add1~9_sumout\,
	cin => \cv_1|Add0~46\,
	sharein => \cv_1|Add0~47\,
	sumout => \cv_1|Add0~49_sumout\);

-- Location: LABCELL_X14_Y13_N27
\cv_1|Add9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add9~9_sumout\ = SUM(( !\cv_1|Mult12~25\ $ (!\cv_1|Mult14~25\ $ (\cv_1|Mult13~25\)) ) + ( \cv_1|Add9~7\ ) + ( \cv_1|Add9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Mult12~25\,
	datac => \cv_1|ALT_INV_Mult14~25\,
	datad => \cv_1|ALT_INV_Mult13~25\,
	cin => \cv_1|Add9~6\,
	sharein => \cv_1|Add9~7\,
	sumout => \cv_1|Add9~9_sumout\);

-- Location: LABCELL_X14_Y15_N57
\cv_1|Add8~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~49_sumout\ = SUM(( !\cv_1|Mult9~25\ $ (!\cv_1|Mult10~25\ $ (\cv_1|Mult11~25\)) ) + ( \cv_1|Add8~47\ ) + ( \cv_1|Add8~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult9~25\,
	datac => \cv_1|ALT_INV_Mult10~25\,
	datad => \cv_1|ALT_INV_Mult11~25\,
	cin => \cv_1|Add8~46\,
	sharein => \cv_1|Add8~47\,
	sumout => \cv_1|Add8~49_sumout\);

-- Location: LABCELL_X14_Y11_N27
\cv_1|Add13~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add13~9_sumout\ = SUM(( !\cv_1|Mult17~25\ $ (!\cv_1|Mult16~25\ $ (\cv_1|Mult15~25\)) ) + ( \cv_1|Add13~7\ ) + ( \cv_1|Add13~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cv_1|ALT_INV_Mult17~25\,
	datac => \cv_1|ALT_INV_Mult16~25\,
	datad => \cv_1|ALT_INV_Mult15~25\,
	cin => \cv_1|Add13~6\,
	sharein => \cv_1|Add13~7\,
	sumout => \cv_1|Add13~9_sumout\);

-- Location: LABCELL_X14_Y14_N27
\cv_1|Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add8~9_sumout\ = SUM(( !\cv_1|Add9~9_sumout\ $ (!\cv_1|Add8~49_sumout\ $ (\cv_1|Add13~9_sumout\)) ) + ( \cv_1|Add8~7\ ) + ( \cv_1|Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cv_1|ALT_INV_Add9~9_sumout\,
	datac => \cv_1|ALT_INV_Add8~49_sumout\,
	datad => \cv_1|ALT_INV_Add13~9_sumout\,
	cin => \cv_1|Add8~6\,
	sharein => \cv_1|Add8~7\,
	sumout => \cv_1|Add8~9_sumout\);

-- Location: MLABCELL_X13_Y14_N57
\cv_1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|Add0~9_sumout\ = SUM(( \cv_1|Add8~9_sumout\ ) + ( \cv_1|Add0~49_sumout\ ) + ( \cv_1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cv_1|ALT_INV_Add0~49_sumout\,
	datad => \cv_1|ALT_INV_Add8~9_sumout\,
	cin => \cv_1|Add0~6\,
	sumout => \cv_1|Add0~9_sumout\);

-- Location: FF_X13_Y14_N28
\cv_1|cv_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cv_1|cv_o~0_combout\,
	sclr => \cv_1|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cv_1|cv_o\(0));

-- Location: MLABCELL_X13_Y14_N18
\cv_1|cv_o~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|cv_o~1_combout\ = ( \cv_1|Add0~13_sumout\ ) # ( !\cv_1|Add0~13_sumout\ & ( \cv_1|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cv_1|ALT_INV_Add0~5_sumout\,
	dataf => \cv_1|ALT_INV_Add0~13_sumout\,
	combout => \cv_1|cv_o~1_combout\);

-- Location: FF_X13_Y14_N19
\cv_1|cv_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cv_1|cv_o~1_combout\,
	sclr => \cv_1|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cv_1|cv_o\(1));

-- Location: MLABCELL_X13_Y14_N21
\cv_1|cv_o~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|cv_o~2_combout\ = ( \cv_1|Add0~5_sumout\ ) # ( !\cv_1|Add0~5_sumout\ & ( \cv_1|Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cv_1|ALT_INV_Add0~17_sumout\,
	dataf => \cv_1|ALT_INV_Add0~5_sumout\,
	combout => \cv_1|cv_o~2_combout\);

-- Location: FF_X13_Y14_N23
\cv_1|cv_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cv_1|cv_o~2_combout\,
	sclr => \cv_1|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cv_1|cv_o\(2));

-- Location: MLABCELL_X13_Y14_N24
\cv_1|cv_o~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|cv_o~3_combout\ = ( \cv_1|Add0~21_sumout\ ) # ( !\cv_1|Add0~21_sumout\ & ( \cv_1|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cv_1|ALT_INV_Add0~5_sumout\,
	dataf => \cv_1|ALT_INV_Add0~21_sumout\,
	combout => \cv_1|cv_o~3_combout\);

-- Location: FF_X13_Y14_N25
\cv_1|cv_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cv_1|cv_o~3_combout\,
	sclr => \cv_1|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cv_1|cv_o\(3));

-- Location: MLABCELL_X13_Y14_N15
\cv_1|cv_o~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|cv_o~4_combout\ = ( \cv_1|Add0~25_sumout\ ) # ( !\cv_1|Add0~25_sumout\ & ( \cv_1|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cv_1|ALT_INV_Add0~5_sumout\,
	dataf => \cv_1|ALT_INV_Add0~25_sumout\,
	combout => \cv_1|cv_o~4_combout\);

-- Location: FF_X13_Y14_N16
\cv_1|cv_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cv_1|cv_o~4_combout\,
	sclr => \cv_1|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cv_1|cv_o\(4));

-- Location: MLABCELL_X13_Y14_N12
\cv_1|cv_o~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|cv_o~5_combout\ = (\cv_1|Add0~29_sumout\) # (\cv_1|Add0~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cv_1|ALT_INV_Add0~5_sumout\,
	datad => \cv_1|ALT_INV_Add0~29_sumout\,
	combout => \cv_1|cv_o~5_combout\);

-- Location: FF_X13_Y14_N13
\cv_1|cv_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cv_1|cv_o~5_combout\,
	sclr => \cv_1|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cv_1|cv_o\(5));

-- Location: MLABCELL_X13_Y14_N9
\cv_1|cv_o~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|cv_o~6_combout\ = ( \cv_1|Add0~33_sumout\ ) # ( !\cv_1|Add0~33_sumout\ & ( \cv_1|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cv_1|ALT_INV_Add0~5_sumout\,
	dataf => \cv_1|ALT_INV_Add0~33_sumout\,
	combout => \cv_1|cv_o~6_combout\);

-- Location: FF_X13_Y14_N10
\cv_1|cv_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cv_1|cv_o~6_combout\,
	sclr => \cv_1|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cv_1|cv_o\(6));

-- Location: MLABCELL_X13_Y14_N6
\cv_1|cv_o~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \cv_1|cv_o~7_combout\ = ( \cv_1|Add0~37_sumout\ ) # ( !\cv_1|Add0~37_sumout\ & ( \cv_1|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cv_1|ALT_INV_Add0~5_sumout\,
	dataf => \cv_1|ALT_INV_Add0~37_sumout\,
	combout => \cv_1|cv_o~7_combout\);

-- Location: FF_X13_Y14_N7
\cv_1|cv_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cv_1|cv_o~7_combout\,
	sclr => \cv_1|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cv_1|cv_o\(7));
END structure;


