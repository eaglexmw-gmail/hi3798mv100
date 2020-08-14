#
# Automatically generated make config: don't edit
# SDK version: KERNELVERSION
# Tue Oct 18 09:08:27 2016
#

#
# Base
#
CFG_LINUX_PRODUCT=y
# CFG_ANDROID_PRODUCT is not set
CFG_PRODUCT_TYPE=linux
CFG_HI_USER_MODE=y
# CFG_HI_ENG_MODE is not set
CFG_HI3716MV410=y
# CFG_HI3716MV420 is not set
# CFG_HI3798MV100 is not set
# CFG_HI3798MV200 is not set
# CFG_HI3798MV200_A is not set
# CFG_HI3796MV100 is not set
# CFG_HI3796MV200 is not set
# CFG_HI3716DV100 is not set
# CFG_HI3798CV200 is not set
CFG_HI_CHIP_TYPE=hi3716mv410

#
# System Config
#
CFG_HI_32BIT_SYSTEM=y
# CFG_HI_64BIT_SYSTEM is not set
CFG_HI_USER_SPACE_LIB=y
# CFG_HI_USER_SPACE_LIB64 is not set
# CFG_HI_USER_SPACE_ALL_LIB is not set
CFG_HI_CPU_ARCH=arm

#
# Toolchains Config
#
CFG_ARM_HISTBV310_LINUX=y
CFG_HI_ARM_TOOLCHAINS_NAME=arm-histbv310-linux
CFG_HI_OUT_DIR=hi3716m41dma_ca_release_lxc
CFG_HI_LOADER_SUPPORT=y
CFG_HI_APPLOADER_SUPPORT=y
# CFG_HI_OPTM_SIZE_SUPPORT is not set

#
# Board
#

#
# Ethernet Config
#
CFG_HI_ETH_SUPPORT=y

#
# Flash Config
#
CFG_HI_NAND_FLASH_SUPPORT=y
CFG_HI_NAND_SUPPORT=y
# CFG_HI_SPI_NAND_SUPPORT is not set
CFG_HI_NAND_BLOCK_SIZE=0x20000
CFG_HI_NAND_PAGE_SIZE=2k
CFG_HI_NAND_ECC_TYPE=4bit
# CFG_HI_SPI_SUPPORT is not set
# CFG_HI_EMMC_SUPPORT is not set

#
# Tuner Config
#
CFG_HI_TUNER_NUMBER=1

#
# First Tuner Config
#
CFG_HI_TUNER_SIGNAL_CAB=y
# CFG_HI_TUNER_SIGNAL_SAT is not set
# CFG_HI_TUNER_SIGNAL_DVB_T is not set
# CFG_HI_TUNER_SIGNAL_DVB_T2 is not set
# CFG_HI_TUNER_SIGNAL_ISDB_T is not set
# CFG_HI_TUNER_SIGNAL_ATSC_T is not set
# CFG_HI_TUNER_SIGNAL_DTMB is not set
# CFG_HI_TUNER_SIGNAL_J83B is not set
# CFG_HI_TUNER_SIGNAL_ABSS is not set
# CFG_HI_TUNER_DEV_TYPE_XG_3BL is not set
# CFG_HI_TUNER_DEV_TYPE_CD1616 is not set
# CFG_HI_TUNER_DEV_TYPE_ALPS_TDAE is not set
# CFG_HI_TUNER_DEV_TYPE_TDCC is not set
# CFG_HI_TUNER_DEV_TYPE_TDA18250 is not set
# CFG_HI_TUNER_DEV_TYPE_CD1616_DOUBLE is not set
# CFG_HI_TUNER_DEV_TYPE_MT2081 is not set
# CFG_HI_TUNER_DEV_TYPE_TMX7070X is not set
# CFG_HI_TUNER_DEV_TYPE_R820C is not set
# CFG_HI_TUNER_DEV_TYPE_MXL203 is not set
# CFG_HI_TUNER_DEV_TYPE_AV2011 is not set
# CFG_HI_TUNER_DEV_TYPE_AV2018 is not set
# CFG_HI_TUNER_DEV_TYPE_SHARP7903 is not set
# CFG_HI_TUNER_DEV_TYPE_MXL101 is not set
# CFG_HI_TUNER_DEV_TYPE_MXL603 is not set
# CFG_HI_TUNER_DEV_TYPE_CXD2861 is not set
# CFG_HI_TUNER_DEV_TYPE_IT9170 is not set
# CFG_HI_TUNER_DEV_TYPE_TDA6651 is not set
CFG_HI_TUNER_DEV_TYPE_TDA18250B=y
# CFG_HI_TUNER_DEV_TYPE_M88TS2022 is not set
# CFG_HI_TUNER_DEV_TYPE_RDA5815 is not set
# CFG_HI_TUNER_DEV_TYPE_MXL254 is not set
# CFG_HI_TUNER_DEV_TYPE_SI2147 is not set
# CFG_HI_TUNER_DEV_TYPE_RAFAEL836 is not set
# CFG_HI_TUNER_DEV_TYPE_MXL608 is not set
# CFG_HI_TUNER_DEV_TYPE_MXL214 is not set
# CFG_HI_TUNER_DEV_TYPE_TDA18280 is not set
# CFG_HI_TUNER_DEV_TYPE_TDA182I5A is not set
# CFG_HI_TUNER_DEV_TYPE_SI2144 is not set
# CFG_HI_TUNER_DEV_TYPE_M88TC3800 is not set
# CFG_HI_TUNER_DEV_TYPE_MXL683 is not set
# CFG_HI_TUNER_DEV_TYPE_AV2026 is not set
CFG_HI_TUNER_DEV_ADDR=0xc0
# CFG_HI_DEMOD_DEV_TYPE_NONE is not set
CFG_HI_DEMOD_DEV_TYPE_3130I=y
# CFG_HI_DEMOD_DEV_TYPE_3130E is not set
# CFG_HI_DEMOD_DEV_TYPE_J83B is not set
# CFG_HI_DEMOD_DEV_TYPE_AVL6211 is not set
# CFG_HI_DEMOD_DEV_TYPE_MXL101 is not set
# CFG_HI_DEMOD_DEV_TYPE_MN88472 is not set
# CFG_HI_DEMOD_DEV_TYPE_MN88473 is not set
# CFG_HI_DEMOD_DEV_TYPE_CXD2837 is not set
# CFG_HI_DEMOD_DEV_TYPE_IT9170 is not set
# CFG_HI_DEMOD_DEV_TYPE_3136 is not set
# CFG_HI_DEMOD_DEV_TYPE_3137 is not set
# CFG_HI_DEMOD_DEV_TYPE_MXL254 is not set
# CFG_HI_DEMOD_DEV_TYPE_MXL214 is not set
# CFG_HI_DEMOD_DEV_TYPE_TDA18280 is not set
# CFG_HI_DEMOD_DEV_TYPE_HIFDVBC100 is not set
# CFG_HI_DEMOD_DEV_TYPE_HIFJ83B100 is not set
# CFG_HI_DEMOD_DEV_TYPE_3138 is not set
# CFG_HI_DEMOD_DEV_TYPE_ATBM888X is not set
# CFG_HI_DEMOD_DEV_TYPE_MXL683 is not set
# CFG_HI_DEMOD_DEV_TYPE_TP5001 is not set
# CFG_HI_DEMOD_DEV_TYPE_HD2501 is not set
CFG_HI_DEMOD_DEV_ADDR=0xa0
# CFG_HI_DEMOD_TS_DEFAULT is not set
CFG_HI_DEMOD_TS_PARALLEL_MODE_A=y
# CFG_HI_DEMOD_TS_PARALLEL_MODE_B is not set
# CFG_HI_DEMOD_TS_SERIAL is not set
# CFG_HI_DEMOD_TS_SERIAL_50 is not set
# CFG_HI_DEMOD_TS_SERIAL_2BIT is not set
CFG_HI_DEMOD_I2C=y
# CFG_HI_DEMOD_GPIO is not set
CFG_HI_DEMOD_I2C_CHANNEL=6
CFG_HI_DEMOD_RESET_GPIO=0x0
CFG_HI_DEMUX_PORT=0

#
# Cable Attribute Config
#
CFG_HI_DEMOD_CAB_REF_CLOCK=24000
CFG_HI_TUNER_CAB_TS_SERIAL_PIN_0=y
# CFG_HI_TUNER_CAB_TS_SERIAL_PIN_7 is not set
# CFG_HI_TUNER_TSOUT is not set

#
# Second Tuner Config
#
CFG_HI_TUNER1_SIGNAL_CAB=y
# CFG_HI_TUNER1_SIGNAL_SAT is not set
# CFG_HI_TUNER1_SIGNAL_DVB_T is not set
# CFG_HI_TUNER1_SIGNAL_DVB_T2 is not set
# CFG_HI_TUNER1_SIGNAL_ISDB_T is not set
# CFG_HI_TUNER1_SIGNAL_ATSC_T is not set
# CFG_HI_TUNER1_SIGNAL_DTMB is not set
# CFG_HI_TUNER1_SIGNAL_J83B is not set
# CFG_HI_TUNER1_SIGNAL_ABSS is not set
# CFG_HI_TUNER1_DEV_TYPE_XG_3BL is not set
# CFG_HI_TUNER1_DEV_TYPE_CD1616 is not set
# CFG_HI_TUNER1_DEV_TYPE_ALPS_TDAE is not set
# CFG_HI_TUNER1_DEV_TYPE_TDCC is not set
# CFG_HI_TUNER1_DEV_TYPE_TDA18250 is not set
# CFG_HI_TUNER1_DEV_TYPE_CD1616_DOUBLE is not set
# CFG_HI_TUNER1_DEV_TYPE_MT2081 is not set
# CFG_HI_TUNER1_DEV_TYPE_TMX7070X is not set
# CFG_HI_TUNER1_DEV_TYPE_R820C is not set
# CFG_HI_TUNER1_DEV_TYPE_MXL203 is not set
# CFG_HI_TUNER1_DEV_TYPE_AV2011 is not set
# CFG_HI_TUNER1_DEV_TYPE_AV2018 is not set
# CFG_HI_TUNER1_DEV_TYPE_SHARP7903 is not set
# CFG_HI_TUNER1_DEV_TYPE_MXL101 is not set
# CFG_HI_TUNER1_DEV_TYPE_MXL603 is not set
# CFG_HI_TUNER1_DEV_TYPE_CXD2861 is not set
# CFG_HI_TUNER1_DEV_TYPE_IT9170 is not set
# CFG_HI_TUNER1_DEV_TYPE_TDA6651 is not set
CFG_HI_TUNER1_DEV_TYPE_TDA18250B=y
# CFG_HI_TUNER1_DEV_TYPE_M88TS2022 is not set
# CFG_HI_TUNER1_DEV_TYPE_RDA5815 is not set
# CFG_HI_TUNER1_DEV_TYPE_MXL254 is not set
# CFG_HI_TUNER1_DEV_TYPE_SI2147 is not set
# CFG_HI_TUNER1_DEV_TYPE_RAFAEL836 is not set
# CFG_HI_TUNER1_DEV_TYPE_MXL608 is not set
# CFG_HI_TUNER1_DEV_TYPE_MXL214 is not set
# CFG_HI_TUNER1_DEV_TYPE_TDA18280 is not set
# CFG_HI_TUNER1_DEV_TYPE_TDA182I5A is not set
# CFG_HI_TUNER1_DEV_TYPE_SI2144 is not set
# CFG_HI_TUNER1_DEV_TYPE_M88TC3800 is not set
# CFG_HI_TUNER1_DEV_TYPE_MXL683 is not set
# CFG_HI_TUNER1_DEV_TYPE_AV2026 is not set
CFG_HI_TUNER1_DEV_ADDR=0xc0
# CFG_HI_DEMOD1_DEV_TYPE_NONE is not set
# CFG_HI_DEMOD1_DEV_TYPE_3130I is not set
CFG_HI_DEMOD1_DEV_TYPE_3130E=y
# CFG_HI_DEMOD1_DEV_TYPE_J83B is not set
# CFG_HI_DEMOD1_DEV_TYPE_AVL6211 is not set
# CFG_HI_DEMOD1_DEV_TYPE_MXL101 is not set
# CFG_HI_DEMOD1_DEV_TYPE_MN88472 is not set
# CFG_HI_DEMOD1_DEV_TYPE_MN88473 is not set
# CFG_HI_DEMOD1_DEV_TYPE_CXD2837 is not set
# CFG_HI_DEMOD1_DEV_TYPE_IT9170 is not set
# CFG_HI_DEMOD1_DEV_TYPE_3136 is not set
# CFG_HI_DEMOD1_DEV_TYPE_3137 is not set
# CFG_HI_DEMOD1_DEV_TYPE_MXL254 is not set
# CFG_HI_DEMOD1_DEV_TYPE_MXL214 is not set
# CFG_HI_DEMOD1_DEV_TYPE_TDA18280 is not set
# CFG_HI_DEMOD1_DEV_TYPE_HIFDVBC100 is not set
# CFG_HI_DEMOD1_DEV_TYPE_HIFJ83B100 is not set
# CFG_HI_DEMOD1_DEV_TYPE_3138 is not set
# CFG_HI_DEMOD1_DEV_TYPE_ATBM888X is not set
# CFG_HI_DEMOD1_DEV_TYPE_MXL683 is not set
# CFG_HI_DEMOD1_DEV_TYPE_TP5001 is not set
# CFG_HI_DEMOD1_DEV_TYPE_HD2501 is not set
CFG_HI_DEMOD1_DEV_ADDR=0xa0
# CFG_HI_DEMOD1_TS_DEFAULT is not set
# CFG_HI_DEMOD1_TS_PARALLEL_MODE_A is not set
# CFG_HI_DEMOD1_TS_PARALLEL_MODE_B is not set
CFG_HI_DEMOD1_TS_SERIAL=y
# CFG_HI_DEMOD1_TS_SERIAL_50 is not set
# CFG_HI_DEMOD1_TS_SERIAL_2BIT is not set
# CFG_HI_DEMOD1_I2C is not set
CFG_HI_DEMOD1_GPIO=y
CFG_HI_DEMOD1_GPIO_SDA=11
CFG_HI_DEMOD1_GPIO_SCL=12
CFG_HI_DEMOD1_RESET_GPIO=0x7
CFG_HI_DEMUX1_PORT=32

#
# Cable Attribute Config
#
CFG_HI_DEMOD1_CAB_REF_CLOCK=24000
CFG_HI_TUNER1_CAB_TS_SERIAL_PIN_0=y
# CFG_HI_TUNER1_CAB_TS_SERIAL_PIN_7 is not set

#
# Third Tuner Config
#
CFG_HI_TUNER2_SIGNAL_CAB=y
# CFG_HI_TUNER2_SIGNAL_SAT is not set
# CFG_HI_TUNER2_SIGNAL_DVB_T is not set
# CFG_HI_TUNER2_SIGNAL_DVB_T2 is not set
# CFG_HI_TUNER2_SIGNAL_ISDB_T is not set
# CFG_HI_TUNER2_SIGNAL_ATSC_T is not set
# CFG_HI_TUNER2_SIGNAL_DTMB is not set
# CFG_HI_TUNER2_SIGNAL_J83B is not set
# CFG_HI_TUNER2_SIGNAL_ABSS is not set
# CFG_HI_TUNER2_DEV_TYPE_XG_3BL is not set
# CFG_HI_TUNER2_DEV_TYPE_CD1616 is not set
# CFG_HI_TUNER2_DEV_TYPE_ALPS_TDAE is not set
# CFG_HI_TUNER2_DEV_TYPE_TDCC is not set
CFG_HI_TUNER2_DEV_TYPE_TDA18250=y
# CFG_HI_TUNER2_DEV_TYPE_CD1616_DOUBLE is not set
# CFG_HI_TUNER2_DEV_TYPE_MT2081 is not set
# CFG_HI_TUNER2_DEV_TYPE_TMX7070X is not set
# CFG_HI_TUNER2_DEV_TYPE_R820C is not set
# CFG_HI_TUNER2_DEV_TYPE_MXL203 is not set
# CFG_HI_TUNER2_DEV_TYPE_AV2011 is not set
# CFG_HI_TUNER2_DEV_TYPE_AV2018 is not set
# CFG_HI_TUNER2_DEV_TYPE_SHARP7903 is not set
# CFG_HI_TUNER2_DEV_TYPE_MXL101 is not set
# CFG_HI_TUNER2_DEV_TYPE_MXL603 is not set
# CFG_HI_TUNER2_DEV_TYPE_CXD2861 is not set
# CFG_HI_TUNER2_DEV_TYPE_IT9170 is not set
# CFG_HI_TUNER2_DEV_TYPE_TDA6651 is not set
# CFG_HI_TUNER2_DEV_TYPE_TDA18250B is not set
# CFG_HI_TUNER2_DEV_TYPE_M88TS2022 is not set
# CFG_HI_TUNER2_DEV_TYPE_RDA5815 is not set
# CFG_HI_TUNER2_DEV_TYPE_MXL254 is not set
# CFG_HI_TUNER2_DEV_TYPE_SI2147 is not set
# CFG_HI_TUNER2_DEV_TYPE_RAFAEL836 is not set
# CFG_HI_TUNER2_DEV_TYPE_MXL608 is not set
# CFG_HI_TUNER2_DEV_TYPE_MXL214 is not set
# CFG_HI_TUNER2_DEV_TYPE_TDA18280 is not set
# CFG_HI_TUNER2_DEV_TYPE_TDA182I5A is not set
# CFG_HI_TUNER2_DEV_TYPE_SI2144 is not set
# CFG_HI_TUNER2_DEV_TYPE_M88TC3800 is not set
# CFG_HI_TUNER2_DEV_TYPE_MXL683 is not set
# CFG_HI_TUNER2_DEV_TYPE_AV2026 is not set
CFG_HI_TUNER2_DEV_ADDR=0xc0
# CFG_HI_DEMOD2_DEV_TYPE_NONE is not set
CFG_HI_DEMOD2_DEV_TYPE_3130I=y
# CFG_HI_DEMOD2_DEV_TYPE_3130E is not set
# CFG_HI_DEMOD2_DEV_TYPE_J83B is not set
# CFG_HI_DEMOD2_DEV_TYPE_AVL6211 is not set
# CFG_HI_DEMOD2_DEV_TYPE_MXL101 is not set
# CFG_HI_DEMOD2_DEV_TYPE_MN88472 is not set
# CFG_HI_DEMOD2_DEV_TYPE_MN88473 is not set
# CFG_HI_DEMOD2_DEV_TYPE_CXD2837 is not set
# CFG_HI_DEMOD2_DEV_TYPE_IT9170 is not set
# CFG_HI_DEMOD2_DEV_TYPE_3136 is not set
# CFG_HI_DEMOD2_DEV_TYPE_3137 is not set
# CFG_HI_DEMOD2_DEV_TYPE_MXL254 is not set
# CFG_HI_DEMOD2_DEV_TYPE_MXL214 is not set
# CFG_HI_DEMOD2_DEV_TYPE_TDA18280 is not set
# CFG_HI_DEMOD2_DEV_TYPE_HIFDVBC100 is not set
# CFG_HI_DEMOD2_DEV_TYPE_HIFJ83B100 is not set
# CFG_HI_DEMOD2_DEV_TYPE_3138 is not set
# CFG_HI_DEMOD2_DEV_TYPE_ATBM888X is not set
# CFG_HI_DEMOD2_DEV_TYPE_MXL683 is not set
# CFG_HI_DEMOD2_DEV_TYPE_TP5001 is not set
# CFG_HI_DEMOD2_DEV_TYPE_HD2501 is not set
CFG_HI_DEMOD2_DEV_ADDR=0xa0
# CFG_HI_DEMOD2_TS_DEFAULT is not set
CFG_HI_DEMOD2_TS_PARALLEL_MODE_A=y
# CFG_HI_DEMOD2_TS_PARALLEL_MODE_B is not set
# CFG_HI_DEMOD2_TS_SERIAL is not set
# CFG_HI_DEMOD2_TS_SERIAL_50 is not set
# CFG_HI_DEMOD2_TS_SERIAL_2BIT is not set
CFG_HI_DEMOD2_I2C=y
# CFG_HI_DEMOD2_GPIO is not set
CFG_HI_DEMOD2_I2C_CHANNEL=5
CFG_HI_DEMOD2_RESET_GPIO=0x0
CFG_HI_DEMUX2_PORT=0

#
# Cable Attribute Config
#
CFG_HI_DEMOD2_CAB_REF_CLOCK=24000
CFG_HI_TUNER2_CAB_TS_SERIAL_PIN_0=y
# CFG_HI_TUNER2_CAB_TS_SERIAL_PIN_7 is not set

#
# Fourth Tuner Config
#
CFG_HI_TUNER3_SIGNAL_CAB=y
# CFG_HI_TUNER3_SIGNAL_SAT is not set
# CFG_HI_TUNER3_SIGNAL_DVB_T is not set
# CFG_HI_TUNER3_SIGNAL_DVB_T2 is not set
# CFG_HI_TUNER3_SIGNAL_ISDB_T is not set
# CFG_HI_TUNER3_SIGNAL_ATSC_T is not set
# CFG_HI_TUNER3_SIGNAL_DTMB is not set
# CFG_HI_TUNER3_SIGNAL_J83B is not set
# CFG_HI_TUNER3_SIGNAL_ABSS is not set
# CFG_HI_TUNER3_DEV_TYPE_XG_3BL is not set
# CFG_HI_TUNER3_DEV_TYPE_CD1616 is not set
# CFG_HI_TUNER3_DEV_TYPE_ALPS_TDAE is not set
# CFG_HI_TUNER3_DEV_TYPE_TDCC is not set
CFG_HI_TUNER3_DEV_TYPE_TDA18250=y
# CFG_HI_TUNER3_DEV_TYPE_CD1616_DOUBLE is not set
# CFG_HI_TUNER3_DEV_TYPE_MT2081 is not set
# CFG_HI_TUNER3_DEV_TYPE_TMX7070X is not set
# CFG_HI_TUNER3_DEV_TYPE_R820C is not set
# CFG_HI_TUNER3_DEV_TYPE_MXL203 is not set
# CFG_HI_TUNER3_DEV_TYPE_AV2011 is not set
# CFG_HI_TUNER3_DEV_TYPE_AV2018 is not set
# CFG_HI_TUNER3_DEV_TYPE_SHARP7903 is not set
# CFG_HI_TUNER3_DEV_TYPE_MXL101 is not set
# CFG_HI_TUNER3_DEV_TYPE_MXL603 is not set
# CFG_HI_TUNER3_DEV_TYPE_CXD2861 is not set
# CFG_HI_TUNER3_DEV_TYPE_IT9170 is not set
# CFG_HI_TUNER3_DEV_TYPE_TDA6651 is not set
# CFG_HI_TUNER3_DEV_TYPE_TDA18250B is not set
# CFG_HI_TUNER3_DEV_TYPE_M88TS2022 is not set
# CFG_HI_TUNER3_DEV_TYPE_RDA5815 is not set
# CFG_HI_TUNER3_DEV_TYPE_MXL254 is not set
# CFG_HI_TUNER3_DEV_TYPE_SI2147 is not set
# CFG_HI_TUNER3_DEV_TYPE_RAFAEL836 is not set
# CFG_HI_TUNER3_DEV_TYPE_MXL608 is not set
# CFG_HI_TUNER3_DEV_TYPE_MXL214 is not set
# CFG_HI_TUNER3_DEV_TYPE_TDA18280 is not set
# CFG_HI_TUNER3_DEV_TYPE_TDA182I5A is not set
# CFG_HI_TUNER3_DEV_TYPE_SI2144 is not set
# CFG_HI_TUNER3_DEV_TYPE_M88TC3800 is not set
# CFG_HI_TUNER3_DEV_TYPE_MXL683 is not set
# CFG_HI_TUNER3_DEV_TYPE_AV2026 is not set
CFG_HI_TUNER3_DEV_ADDR=0xc0
# CFG_HI_DEMOD3_DEV_TYPE_NONE is not set
CFG_HI_DEMOD3_DEV_TYPE_3130I=y
# CFG_HI_DEMOD3_DEV_TYPE_3130E is not set
# CFG_HI_DEMOD3_DEV_TYPE_J83B is not set
# CFG_HI_DEMOD3_DEV_TYPE_AVL6211 is not set
# CFG_HI_DEMOD3_DEV_TYPE_MXL101 is not set
# CFG_HI_DEMOD3_DEV_TYPE_MN88472 is not set
# CFG_HI_DEMOD3_DEV_TYPE_MN88473 is not set
# CFG_HI_DEMOD3_DEV_TYPE_CXD2837 is not set
# CFG_HI_DEMOD3_DEV_TYPE_IT9170 is not set
# CFG_HI_DEMOD3_DEV_TYPE_3136 is not set
# CFG_HI_DEMOD3_DEV_TYPE_3137 is not set
# CFG_HI_DEMOD3_DEV_TYPE_MXL254 is not set
# CFG_HI_DEMOD3_DEV_TYPE_MXL214 is not set
# CFG_HI_DEMOD3_DEV_TYPE_TDA18280 is not set
# CFG_HI_DEMOD3_DEV_TYPE_HIFDVBC100 is not set
# CFG_HI_DEMOD3_DEV_TYPE_HIFJ83B100 is not set
# CFG_HI_DEMOD3_DEV_TYPE_3138 is not set
# CFG_HI_DEMOD3_DEV_TYPE_ATBM888X is not set
# CFG_HI_DEMOD3_DEV_TYPE_MXL683 is not set
# CFG_HI_DEMOD3_DEV_TYPE_TP5001 is not set
# CFG_HI_DEMOD3_DEV_TYPE_HD2501 is not set
CFG_HI_DEMOD3_DEV_ADDR=0xa0
# CFG_HI_DEMOD3_TS_DEFAULT is not set
CFG_HI_DEMOD3_TS_PARALLEL_MODE_A=y
# CFG_HI_DEMOD3_TS_PARALLEL_MODE_B is not set
# CFG_HI_DEMOD3_TS_SERIAL is not set
# CFG_HI_DEMOD3_TS_SERIAL_50 is not set
# CFG_HI_DEMOD3_TS_SERIAL_2BIT is not set
CFG_HI_DEMOD3_I2C=y
# CFG_HI_DEMOD3_GPIO is not set
CFG_HI_DEMOD3_I2C_CHANNEL=5
CFG_HI_DEMOD3_RESET_GPIO=0x0
CFG_HI_DEMUX3_PORT=0

#
# Cable Attribute Config
#
CFG_HI_DEMOD3_CAB_REF_CLOCK=24000
CFG_HI_TUNER3_CAB_TS_SERIAL_PIN_0=y
# CFG_HI_TUNER3_CAB_TS_SERIAL_PIN_7 is not set

#
# Demux Config
#

#
# IF Config
#
CFG_HI_IF_TYPE=parallel_nosync_188
CFG_HI_IF_BIT_SELECTOR=0

#
# TSI Config
#
CFG_HI_TSI_NUMBER=4

#
# TSI0 Config
#
CFG_HI_TSI0_TYPE=serial_nosync
CFG_HI_TSI0_CLK_PHASE_REVERSE=0
CFG_HI_TSI0_BIT_SELECTOR=0

#
# TSI1 Config
#
CFG_HI_TSI1_TYPE=serial
CFG_HI_TSI1_CLK_PHASE_REVERSE=0
CFG_HI_TSI1_BIT_SELECTOR=0

#
# TSI2 Config
#
CFG_HI_TSI2_TYPE=parallel_nosync_188
CFG_HI_TSI2_CLK_PHASE_REVERSE=1
CFG_HI_TSI2_BIT_SELECTOR=0

#
# TSI3 Config
#
CFG_HI_TSI3_TYPE=parallel_nosync_188
CFG_HI_TSI3_CLK_PHASE_REVERSE=1
CFG_HI_TSI3_BIT_SELECTOR=0

#
# TSI4 Config
#
CFG_HI_TSI4_TYPE=parallel_nosync_188
CFG_HI_TSI4_CLK_PHASE_REVERSE=1
CFG_HI_TSI4_BIT_SELECTOR=0

#
# TSI5 Config
#
CFG_HI_TSI5_TYPE=parallel_nosync_188
CFG_HI_TSI5_CLK_PHASE_REVERSE=1
CFG_HI_TSI5_BIT_SELECTOR=0

#
# TSO Config
#
CFG_HI_TSO_NUMBER=2

#
# TSO0 Config
#
CFG_HI_TSO0_CLK_100M=y
# CFG_HI_TSO0_CLK_150M is not set
# CFG_HI_TSO0_CLK_1200M is not set
# CFG_HI_TSO0_CLK_1500M is not set
CFG_HI_TSO0_CLK_MODE_NORMAL=y
# CFG_HI_TSO0_CLK_MODE_JITTER is not set
CFG_HI_TSO0_VALID_ACTIVE_OUTPUT=y
# CFG_HI_TSO0_VALID_ACTIVE_HIGH is not set
CFG_HI_TSO0_SERIAL=y
# CFG_HI_TSO0_PARALLEL is not set
CFG_HI_TSO0_SERIAL_BIT_0=y
# CFG_HI_TSO0_SERIAL_BIT_7 is not set

#
# TSO1 Config
#
CFG_HI_TSO1_CLK_100M=y
# CFG_HI_TSO1_CLK_150M is not set
# CFG_HI_TSO1_CLK_1200M is not set
# CFG_HI_TSO1_CLK_1500M is not set
CFG_HI_TSO1_CLK_MODE_NORMAL=y
# CFG_HI_TSO1_CLK_MODE_JITTER is not set
CFG_HI_TSO1_VALID_ACTIVE_OUTPUT=y
# CFG_HI_TSO1_VALID_ACTIVE_HIGH is not set
CFG_HI_TSO1_SERIAL=y
# CFG_HI_TSO1_PARALLEL is not set
CFG_HI_TSO1_SERIAL_BIT_0=y
# CFG_HI_TSO1_SERIAL_BIT_7 is not set

#
# Keyled Config
#
# CFG_HI_KEYLED_74HC164_SELECT is not set
# CFG_HI_KEYLED_GPIOKEY_SELECT is not set
CFG_HI_KEYLED_CT1642_SELECT=y
# CFG_HI_KEYLED_PT6961_SELECT is not set
# CFG_HI_KEYLED_PT6964_SELECT is not set
# CFG_HI_KEYLED_FD650_SELECT is not set
# CFG_HI_GPIO_LIGHT_SUPPORT is not set

#
# PowerManagement Config
#
# CFG_HI_PMU_DEVICE_SELECT is not set

#
# SCI Config
#
CFG_HI_SCI_CLK_MODE_CMOS=y
# CFG_HI_SCI_CLK_MODE_OD is not set
# CFG_HI_SCI_VCCEN_MODE_CMOS is not set
CFG_HI_SCI_VCCEN_MODE_OD=y
CFG_HI_SCI_RESET_MODE_CMOS=y
# CFG_HI_SCI_RESET_MODE_OD is not set
CFG_HI_SCI_VCCEN_LOW=y
# CFG_HI_SCI_VCCEN_HIGH is not set
# CFG_HI_SCI_DETECT_LOW is not set
CFG_HI_SCI_DETECT_HIGH=y
CFG_HI_SND_MUTECTL_SUPPORT=y
CFG_HI_SND_MUTECTL_GPIO=0x17
CFG_HI_SND_MUTECTL_LEVEL=0

#
# Video DAC Config
#
CFG_HI_DAC_CVBS=3
CFG_HI_DAC_YPBPR_Y=1
CFG_HI_DAC_YPBPR_PB=2
CFG_HI_DAC_YPBPR_PR=0
# CFG_HI_VDP_VDAC_FULL_DRIVE is not set
# CFG_HI_VDP_VDAC_HALF_DRIVE is not set
CFG_HI_VDP_VDAC_QUARTER_DRIVE=y

#
# Boot Regfile Config
#
CFG_HI_BOOT_REG_NAME=hi3716m41dma_hi3716mv410_ddr3_512mbyte_16bit_2layers_nand.reg

#
# Boot
#
CFG_HI_UBOOT_SUPPORT=y
# CFG_HI_MINIBOOT_SUPPORT is not set
CFG_HI_BOOT_LOG_SUPPORT=y
# CFG_HI_FORCE_ENV_TO_MEDIA is not set
CFG_HI_BOOT_ENV_STARTADDR=0x100000
CFG_HI_BOOT_ENV_SIZE=0x10000
CFG_HI_BOOT_ENV_RANGE=0x100000
# CFG_HI_BOOT_ENV_BAK_SUPPORT is not set
CFG_HI_BOOT_COMPRESSED=y
# CFG_HI_BENCH_SUPPORT is not set
# CFG_HI_BOOT_USB_SUPPORT is not set

#
# Build Product Code in Boot
#
CFG_HI_BUILD_WITH_PRODUCT=y
CFG_HI_BUILD_WITH_KEYLED=y
# CFG_HI_BUILD_WITH_IR is not set

#
# Kernel
#
CFG_LINUX-3.18.y=y
CFG_HI_KERNEL_VERSION=linux-3.18.y
CFG_HI_KERNEL_CFG=hi3716mv410-ca-release-lxc_net_defconfig
# CFG_HI_FS_BUILDIN is not set
# CFG_HI_MSP_BUILDIN is not set

#
# Rootfs
#

#
# Board Tools Config
#
# CFG_HI_TOOL_DOSFS_SUPPORT is not set
# CFG_HI_TOOL_E2FSPROGS_SUPPORT is not set
CFG_HI_TOOL_FILECAP_SUPPORT=y
CFG_HI_TOOL_IPTABLES_SUPPORT=y
# CFG_HI_TOOL_MTDUTILS_SUPPORT is not set
# CFG_HI_TOOL_REG_SUPPORT is not set
# CFG_HI_TOOL_REG_UART_SUPPORT is not set
# CFG_HI_TOOL_PPPD_SUPPORT is not set
# CFG_HI_TOOL_MIITOOLS_SUPPORT is not set
# CFG_HI_TOOL_IPERF_SUPPORT is not set
CFG_HI_LXC_CONTAINER_SUPPORT=y
# CFG_HI_TOOL_SYSSTAT_SUPPORT is not set
# CFG_HI_TOOL_SOC_SERVER is not set
CFG_HI_TOOL_MSP_DEBUG_SUPPORT=y
CFG_HI_TOOL_PQ_DEBUG_SUPPORT=y

#
# Busybox Config
#
CFG_HI_BUSYBOX_CFG_NAME=glibc_ca_root_lxc_net_release.config
CFG_HI_BUSYBOX_CFG_SANDBOX_NAME=glibc_sandbox_lxc_net_release.config
CFG_HI_LIBCPP_SUPPORT=y

#
# File System Config
#
CFG_HI_ROOTFS_STRIP=y
CFG_HI_ROOTFS_INSTALL_SHARED_LIBS=y
# CFG_HI_ROOTFS_CRAMFS is not set
# CFG_HI_ROOTFS_YAFFS is not set
CFG_HI_ROOTFS_SQUASHFS=y
# CFG_HI_ROOTFS_UBIIMG is not set

#
# Common
#

#
# DEBUG CONFIG
#
# CFG_HI_LOADER_LOG_DISABLE is not set

#
# Component
#
CFG_HI_ADVCA_SUPPORT=y
CFG_ADVCA_CONAX=y
# CFG_ADVCA_NOVEL is not set
# CFG_ADVCA_NAGRA is not set
# CFG_ADVCA_SUMA is not set
# CFG_ADVCA_CTI is not set
# CFG_ADVCA_VERIMATRIX is not set
# CFG_ADVCA_IRDETO is not set
# CFG_ADVCA_PANACCESS is not set
# CFG_ADVCA_DCAS is not set
# CFG_ADVCA_OTHER is not set
CFG_HI_ADVCA_TYPE=CONAX
CFG_ADVCA_FUNCTION=y
# CFG_FUNCTION_DEBUG is not set
CFG_FUNCTION_RELEASE=y
# CFG_FUNCTION_FINAL is not set
CFG_HI_ADVCA_FUNCTION=RELEASE
CFG_HI_STATIC_LIB_ONLY=y
CFG_HI_ADVCA_VERIFY_ENABLE=y
# CFG_HI_ADVCA_USE_EXT1_RSA_KEY is not set
CFG_HI_ADVCA_SANDBOX_SUPPORT=y
# CFG_SANDBOX_CHROOT is not set
CFG_SANDBOX_LXC=y
CFG_HI_ADVCA_SANDBOX_TYPE=LXC
CFG_HI_ZLIB_SUPPORT=y
# CFG_HI_WIFI_SUPPORT is not set
CFG_HI_FAT_SUPPORT=y
# CFG_HI_NTFS_SUPPORT is not set
# CFG_HI_EXFAT_SUPPORT is not set
# CFG_HI_3G_SUPPORT is not set
# CFG_HI_ALSA_SUPPORT is not set
# CFG_HI_BLUETOOTH_SUPPORT is not set
CFG_HI_AUDIO_RESAMPLER_SUPPORT=y
CFG_HI_HACODEC_SUPPORT=y
CFG_HI_HACODEC_MP3DECODE_SUPPORT=y
CFG_HI_HACODEC_AACDECODE_SUPPORT=y
CFG_HI_HACODEC_AACENCODE_SUPPORT=y
CFG_HI_HACODEC_AC3PASSTHROUGH_SUPPORT=y
CFG_HI_HACODEC_AMRNBCODEC_SUPPORT=y
CFG_HI_HACODEC_AMRWBCODEC_SUPPORT=y
CFG_HI_HACODEC_BLURAYLPCMDECODE_SUPPORT=y
CFG_HI_HACODEC_COOKDECODE_SUPPORT=y
CFG_HI_HACODEC_DRADECODE_SUPPORT=y
CFG_HI_HACODEC_DTSPASSTHROUGH_SUPPORT=y
CFG_HI_HACODEC_G711CODEC_SUPPORT=y
CFG_HI_HACODEC_G722CODEC_SUPPORT=y
CFG_HI_HACODEC_PCMDECODE_SUPPORT=y
CFG_HI_HACODEC_TRUEHDPASSTHROUGH_SUPPORT=y
CFG_HI_HACODEC_WMADECODE_SUPPORT=y

#
# Caption Config
#
CFG_HI_CAPTION_SUBT_SUPPORT=y
CFG_HI_CAPTION_TTX_SUPPORT=y
CFG_HI_CAPTION_SO_SUPPORT=y
CFG_HI_CAPTION_CC_SUPPORT=y
# CFG_HI_PLAYER_SUPPORT is not set
CFG_HI_OPENSSL_SUPPORT=y
# CFG_HI_LOADER_APPLOADER is not set

#
# DRM Config
#
# CFG_HI_OPERA_SUPPORT is not set

#
# Msp
#
CFG_HI_FRONTEND_SUPPORT=y
CFG_HI_DVBC_SUPPORT=y

#
# DVB-C Demod Config
#
CFG_HI_DEMOD_TYPE_X5HDV2QAM=y
CFG_HI_DEMOD_TYPE_HI3130=y
CFG_HI_DEMOD_TYPE_J83B=y
# CFG_HI_DEMOD_TYPE_MXL254 is not set
# CFG_HI_DEMOD_TYPE_MXL214 is not set
# CFG_HI_DEMOD_TYPE_TDA18280 is not set
CFG_HI_DEMOD_TYPE_HI3138=y

#
# DVB-C Tuner Config
#
CFG_HI_TUNER_TYPE_TDA18250=y
CFG_HI_TUNER_TYPE_TDA18250B=y
# CFG_HI_TUNER_TYPE_MXL254 is not set
# CFG_HI_TUNER_TYPE_MXL214 is not set
# CFG_HI_TUNER_TYPE_TDA18280 is not set
# CFG_HI_TUNER_TYPE_MXL203 is not set
CFG_HI_TUNER_TYPE_MXL603=y
# CFG_HI_TUNER_TYPE_ALPS_TDAE is not set
# CFG_HI_TUNER_TYPE_TDCC is not set
# CFG_HI_TUNER_TYPE_MT2081 is not set
# CFG_HI_TUNER_TYPE_TMX7070X is not set
# CFG_HI_TUNER_TYPE_R820C is not set
# CFG_HI_TUNER_TYPE_TDA6651 is not set
# CFG_HI_TUNER_TYPE_XG_3BL is not set
# CFG_HI_TUNER_TYPE_CD1616 is not set
# CFG_HI_TUNER_TYPE_CD1616_LF_GIH_4 is not set
CFG_HI_TUNER_TYPE_si2147=y
CFG_HI_TUNER_TYPE_MXL608=y
CFG_HI_TUNER_TYPE_M88TC3800=y
CFG_HI_TUNER_TYPE_RAFAEL836=y
CFG_HI_DVBS_SUPPORT=y

#
# DVB-S/S2 Demod Config
#
CFG_HI_DEMOD_TYPE_AVL6211=y
CFG_HI_DEMOD_TYPE_HI3136=y
# CFG_HI_DEMOD_TYPE_TP5001 is not set
# CFG_HI_DEMOD_TYPE_HD2501 is not set

#
# DVB-S/S2 Tuner Config
#
CFG_HI_TUNER_TYPE_AV2011=y
CFG_HI_TUNER_TYPE_AV2018=y
CFG_HI_TUNER_TYPE_SHARP7903=y
CFG_HI_TUNER_TYPE_RDA5815=y
CFG_HI_TUNER_TYPE_M88TS2022=y
# CFG_HI_TUNER_TYPE_AV2026 is not set
CFG_HI_DISEQC_SUPPORT=y

#
# LNB Chip Config
#
CFG_HI_LNB_CTRL_ISL9492=y
CFG_HI_LNB_CTRL_MPS8125=y
CFG_HI_DVBT_SUPPORT=y

#
# DVB-T/T2/ISDBT/DTMB Demod Config
#
CFG_HI_DEMOD_TYPE_HI3137=y
CFG_HI_DEMOD_TYPE_CXD2837=y
CFG_HI_DEMOD_TYPE_MXL101=y
CFG_HI_DEMOD_TYPE_MN88472=y
# CFG_HI_DEMOD_TYPE_MN88473 is not set
CFG_HI_DEMOD_TYPE_IT9170=y
# CFG_HI_DEMOD_TYPE_ATBM888X is not set
# CFG_HI_DEMOD_TYPE_MXL683 is not set

#
# DVB-T/T2/ISDBT/DTMB Tuner Config
#
CFG_HI_TUNER_TYPE_CXD2861=y
CFG_HI_TUNER_TYPE_SI2147=y
CFG_HI_TUNER_TYPE_TDA182I5A=y
CFG_HI_TUNER_TYPE_SI2144=y
# CFG_HI_TUNER_TYPE_MXL683 is not set

#
# DEMUX Config
#
CFG_HI_DEMUX_POOLBUF_SIZE=0x200000

#
# Audio Config
#
# CFG_HI_SND_ALSA_AO_SUPPORT is not set
# CFG_HI_AI_SUPPORT is not set
CFG_HI_ADEC_MAX_INSTANCE=2
CFG_HI_ADEC_AUDSPECTRUM_SUPPORT=y
# CFG_HI_SND_SMARTVOLUME_SUPPORT is not set
# CFG_HI_SND_HBRA_PASSTHROUGH_SUPPORT is not set
CFG_HI_AENC_SUPPORT=y
# CFG_HI_ADAC_SUPPORT is not set
# CFG_HI_ALSA_TVL320_KERNEL_SUPPORT is not set
# CFG_HI_AUDIO_OMX_SUPPORT is not set
# CFG_HI_SND_SPDIF_DELAY_SUPPORT is not set

#
# Avplay Config
#
# CFG_HI_AVPLAY_PLAY_AND_REC_SUPPORT is not set

#
# Video Decoder Config
#
CFG_HI_VIDEO_PRE_CAP_1080P=y
# CFG_HI_VIDEO_PRE_CAP_MVC is not set
CFG_HI_VIDEO_MAX_REF_FRAME_NUM=6
CFG_HI_VIDEO_MAX_DISP_FRAME_NUM=2
CFG_HI_VIDEO_MAX_VDH_BUF=110
CFG_HI_VDEC_DEINTERLACE_SUPPORT=y
CFG_HI_VDEC_SVDEC_SUPPORT=y
CFG_HI_VDEC_REG_CODEC_SUPPORT=y
CFG_HI_VDEC_MJPEG_SUPPORT=y
CFG_HI_VDEC_USERDATA_CC_SUPPORT=y
CFG_HI_VDEC_USERDATA_CC_BUFSIZE=0x4000
CFG_HI_VDEC_DFS_SUPPORT=y
CFG_HI_VDEC_PRE_ALLOC_VDHMMZ_SUPPORT=y

#
# VO Config
#
CFG_HI_VIDEO_BUFF_DEMO=y
# CFG_HI_VIDEO_BUFF_TYPE0 is not set
# CFG_HI_DISP_USE_QPLL_SOLELY is not set
CFG_HI_DISP_TTX_INBUFFERSIZE=0x4000
CFG_HI_DISP_CC_INBUFFERSIZE=0x4000
CFG_HI_VDP_VIDEO_LINEDCMP=y
CFG_HI_PQ_V3_0=y
# CFG_HI_DISP_VIRT_OFFSET_EFFECT_WHEN_FULLSCREEN is not set

#
# VPSS Config
#
CFG_HI_VPSS_MAX_BUFFER_NUMB=6

#
# HDMI Config
#
CFG_HI_HDMI_SUPPORT_1_4=y
CFG_HI_HDMI_SUPPORT_HDCP=y
CFG_HI_HDMI_SUPPORT_CEC=y
# CFG_HI_HDMI_SUPPORT_DEBUG is not set
CFG_HI_HDMI_DEBUG_MEM_SIZE=0x80000

#
# Graphic Config
#
# CFG_HI_DIRECTFB_SUPPORT is not set
CFG_HIFB_STEREO3D_SUPPORT=y
CFG_HIFB_SCROLLTEXT_SUPPORT=y
# CFG_HI_GFX_DEBUG_LOG_SUPPORT is not set
CFG_HI_TDE_CSCTMPBUFFER_SIZE=0x0
CFG_HI_JPEG6B_STREAMBUFFER_SIZE=0x80000
CFG_HI_HD0_FB_VRAM_SIZE=7200
CFG_HI_HD1_FB_VRAM_SIZE=0
CFG_HI_HD2_FB_VRAM_SIZE=0
CFG_HI_SD0_FB_VRAM_SIZE=0

#
# GPU Config
#
# CFG_HI_GPU_SUPPORT is not set

#
# IR Config
#
CFG_HI_IR_TYPE_S2=y
# CFG_HI_IR_TYPE_STD is not set
# CFG_HI_IR_TYPE_LIRC is not set
CFG_HI_IR_NEC_SUPPORT=y
CFG_HI_IR_RC6_SUPPORT=y
CFG_HI_IR_RC5_SUPPORT=y
CFG_HI_IR_SONY_SUPPORT=y
CFG_HI_IR_TC9012_SUPPORT=y
CFG_HI_IR_CREDIT_SUPPORT=y

#
# Keyled Config
#
CFG_HI_KEYLED_SUPPORT=y
CFG_HI_KEYLED_74HC164_SUPPORT=y
# CFG_HI_KEYLED_GPIOKEY_SUPPORT is not set
CFG_HI_KEYLED_CT1642_SUPPORT=y
# CFG_HI_KEYLED_CT1642_GPIO_MODE is not set
CFG_HI_KEYLED_PT6961_SUPPORT=y
CFG_HI_KEYLED_PT6961_CLOCK_GPIO=0x2a
CFG_HI_KEYLED_PT6961_STB_GPIO=0x2b
CFG_HI_KEYLED_PT6961_DIN_GPIO=0x2c
CFG_HI_KEYLED_PT6961_DOUT_GPIO=0x2d
CFG_HI_KEYLED_PT6964_SUPPORT=y
CFG_HI_KEYLED_PT6964_CLOCK_GPIO=0x2a
CFG_HI_KEYLED_PT6964_STB_GPIO=0x2b
CFG_HI_KEYLED_PT6964_DINOUT_GPIO=0x2c
CFG_HI_KEYLED_FD650_SUPPORT=y
CFG_HI_KEYLED_FD650_CLOCK_GPIO=0x2b
CFG_HI_KEYLED_FD650_DINOUT_GPIO=0x2d

#
# PowerManagement Config
#
CFG_HI_DVFS_CPU_SUPPORT=y
# CFG_HI_DVFS_CORE_SUPPORT is not set
# CFG_HI_AVS_SUPPORT is not set
# CFG_HI_TEMP_CTRL_CONFIG is not set

#
# SCI Config
#
CFG_HI_SCI_SUPPORT=y
CFG_HI_GPIOI2C_SUPPORT=y
# CFG_HI_VI_SUPPORT is not set
# CFG_HI_VENC_SUPPORT is not set

#
# Pvr Config
#
CFG_HI_PVR_SUPPORT=y
# CFG_HI_PVR_EXTRA_BUF_SUPPORT is not set
# CFG_HI_SPI_BUS_SUPPORT is not set

#
# TEE
#
