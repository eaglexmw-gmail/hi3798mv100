ifeq ($(strip $(HI_TEE_STB_PLATFORM_SUPPORT)), y)
WITH_STB_PLATFORM := true
TRUSTEDCORE_DEVCHIP_CFLAGS += -DWITH_STB_PLATFORM
endif

ifeq ($(strip $(HI_TEE_VFMW_SUPPORT)), y)
WITH_HISI_VFMW := true
TRUSTEDCORE_DEVCHIP_CFLAGS += -DWITH_HISI_VFMW
#TRUSTEDCORE_THIRDPARTY_LIBS += ./platform/$(PLATFORM_DIR)/$(PLATFORM_DIR_NAME)/libs/libsec_vfmw.a
endif

ifeq ($(strip $(HI_TEE_SEC_MMZ_SUPPORT)), y)
WITH_HISI_SEC_MMZ := true
TRUSTEDCORE_DEVCHIP_CFLAGS  += -DWITH_HISI_SEC_MMZ
endif

ifeq ($(strip $(HI_TEE_SEC_TIMER_SUPPORT)), y)
WITH_HISI_SEC_TIMER := true
TRUSTEDCORE_DEVCHIP_CFLAGS  += -DWITH_HISI_SEC_TIMER
endif

ifeq ($(strip $(HI_TEE_SMMU_SUPPORT)), y)
WITH_HISI_SMMU := true
TRUSTEDCORE_DEVCHIP_CFLAGS  += -DWITH_HISI_SMMU
endif

ifeq ($(strip $(HI_TEE_TEST_SUPPORT)), y)
WITH_HISI_TEST := true
TRUSTEDCORE_DEVCHIP_CFLAGS  += -DWITH_HISI_TEST
endif

ifeq ($(strip $(HI_TEE_DMX_SUPPORT)), y)
WITH_HISI_DMX := true
TRUSTEDCORE_DEVCHIP_CFLAGS  += -DWITH_HISI_DMX
endif

ifeq ($(strip $(HI_TEE_PVR_SUPPORT)), y)
WITH_HISI_PVR := true
TRUSTEDCORE_DEVCHIP_CFLAGS  += -DWITH_HISI_PVR
endif

ifeq ($(strip $(HI_TEE_CIPHER_SUPPORT)), y)
WITH_HISI_CIPHER := true
TRUSTEDCORE_DEVCHIP_CFLAGS  += -DWITH_HISI_CIPHER
endif

ifeq ($(strip $(HI_TEE_HDMI_SUPPORT)), y)
WITH_HISI_SEC_HDMI := true
TRUSTEDCORE_DEVCHIP_CFLAGS  += -DWITH_HISI_SEC_HDMI
endif

ifeq ($(strip $(HI_TEE_OTP_SUPPORT)), y)
WITH_HISI_OTP := true
TRUSTEDCORE_DEVCHIP_CFLAGS += -DWITH_HISI_OTP
endif

ifeq ($(strip $(HI_TEE_ADVCA_SUPPORT)), y)
WITH_HISI_ADVCA := true
TRUSTEDCORE_DEVCHIP_CFLAGS += -DWITH_HISI_ADVCA
endif

ifeq ($(strip $(HI_TEE_DEMO_SUPPORT)), y)
WITH_HISI_DEMO := true
TRUSTEDCORE_DEVCHIP_CFLAGS += -DWITH_HISI_DEMO
endif

ifeq ($(strip $(HI_TEE_VDP_SUPPORT)), y)
WITH_HISI_VDP := true
TRUSTEDCORE_DEVCHIP_CFLAGS += -DWITH_HISI_VDP
endif

ifeq ($(strip $(HI_TEE_BEIDOU_SUPPORT)), y)
WITH_STB_BEIDOU := true
TRUSTEDCORE_DEVCHIP_CFLAGS += -DWITH_STB_BEIDOU
endif

ifeq ($(strip $(HI_TEE_I2C_SUPPORT)), y)
WITH_STB_I2C_DRIVER := true
TRUSTEDCORE_DEVCHIP_CFLAGS += -DWITH_STB_I2C_DRIVER
endif

ifeq ($(strip $(HI_TEE_PLAYREADY_SUPPORT)), y)
WITH_HISI_PLAYREADY := true
TRUSTEDCORE_DEVCHIP_CFLAGS += -DWITH_HISI_PLAYREADY
endif

ifeq ($(strip $(HI_TEE_WIDEVINE_SUPPORT)), y)
WITH_HISI_WIDEVINE := true
TRUSTEDCORE_DEVCHIP_CFLAGS += -DWITH_HISI_WIDEVINE
endif

ifeq ($(strip $(HI_TEE_VMX_ULTRA_SUPPORT)), y)
WITH_COMPONENT_VMX_ULTRA := true
TRUSTEDCORE_DEVCHIP_CFLAGS += -DWITH_COMPONENT_VMX_ULTRA
endif

ifeq ($(strip $(HI_TEE_VMXTAC_TEST_SUPPORT)), y)
WITH_COMPONENT_VMX_ULTRA_VMXTAC_TEST := true
TRUSTEDCORE_DEVCHIP_CFLAGS += -DWITH_COMPONENT_VMX_ULTRA_VMXTAC_TEST
endif

ifeq ($(strip $(HI_TEE_ITAC_TEST_SUPPORT)), y)
WITH_COMPONENT_VMX_ULTRA_ITAC_TEST := true
TRUSTEDCORE_DEVCHIP_CFLAGS += -DWITH_COMPONENT_VMX_ULTRA_ITAC_TEST
endif

ifeq ($(strip $(HI_TEE_TEST_TA_SUPPORT)), y)
WITH_TEST_TA := true
TRUSTEDCORE_DEVCHIP_CFLAGS += -DWITH_TEST_TA
endif
