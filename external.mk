include $(sort $(wildcard $(BR2_EXTERNAL_MESHTASTIC_PATH)/package/*/*.mk))

ifeq ($(BR2_EXTERNAL_MESHTASTIC_OVERLAY),y)
BR2_ROOTFS_OVERLAY += $(BR2_EXTERNAL_MESHTASTIC_PATH)/overlays/rootfs_overlay
endif
