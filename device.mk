#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Screen density
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_CONFIG := normal

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm8953 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    libshim_adsp \
    libtinycompress

PRODUCT_PACKAGES += \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcomvoiceprocessingdescriptors \
    libqcompostprocbundle

PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.broadcastradio@1.0-impl

PRODUCT_COPY_FILES +=  \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/vendor/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/audio_output_policy.conf:system/vendor/etc/audio_output_policy.conf \
    $(LOCAL_PATH)/audio/audio_platform_info_extcodec.xml:system/vendor/etc/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/vendor/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/audio_ext_spkr.conf:system/vendor/etc/audio_ext_spkr.conf \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/vendor/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:system/vendor/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:system/vendor/etc/sound_trigger_platform_info.xml    

# Bluetooth
PRODUCT_PACKAGES += \
    libbt-vendor \
    android.hardware.bluetooth@1.0-impl

# Browser
PRODUCT_PACKAGES += \
    Gello

# Camera
PRODUCT_PACKAGES += \
    libbson \
    Camera2 \
    camera.device@1.0-impl \
    camera.device@3.2-impl \
    android.hardware.camera.provider@2.4-impl \
    libshim_camera_hal \
    libshims_camera

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/msm8953_mot_albus_camera.xml:system/etc/camera/msm8953_mot_albus_camera.xml \
    $(LOCAL_PATH)/configs/camera/mot_ov5695_chromatix.xml:system/etc/camera/mot_ov5695_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_imx362_chromatix.xml:system/etc/camera/mot_imx362_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_s5k2l7_chromatix.xml:system/etc/camera/mot_s5k2l7_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_s5k2l7sa_chromatix.xml:system/etc/camera/mot_s5k2l7sa_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_ov5695_ofilm_chromatix.xml:system/etc/camera/mot_ov5695_ofilm_chromatix.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/flp.conf:system/vendor/etc/flp.conf \
    $(LOCAL_PATH)/gps/etc/gps.conf:system/vendor/etc/gps.conf \
    $(LOCAL_PATH)/gps/etc/izat.conf:system/vendor/etc/izat.conf \
    $(LOCAL_PATH)/gps/etc/lowi.conf:system/vendor/etc/lowi.conf \
    $(LOCAL_PATH)/gps/etc/sap.conf:system/vendor/etc/sap.conf \
    $(LOCAL_PATH)/gps/etc/xtwifi.conf:system/vendor/etc/xtwifi.conf \
    $(LOCAL_PATH)/gps/etc/cacert_location.pem:system/vendor/etc/cacert_location.pem

# LineageActions
PRODUCT_PACKAGES += \
    LineageActions

# Display
PRODUCT_PACKAGES += \
    copybit.msm8953 \
    gralloc.msm8953 \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    hwcomposer.msm8953 \
    memtrack.msm8953 \
    libgenlock \
    libtinyxml

PRODUCT_PACKAGES += android.hardware.media.omx@1.0-impl

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# DRM
PRODUCT_PACKAGES += \
    libprotobuf-cpp-lite

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service \
    fingerprint.msm8953

# FM
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# Gatekeeper HAL
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl

# GNSS HAL
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

# GPS
PRODUCT_PACKAGES += \
    libgps.utils \
    gps.default \
    libgnss \
    liblocation_api \
    android.hardware.gnss@1.0-impl-qti \
    libloc_api-rpc-qc

# IMS
PRODUCT_PACKAGES += \
    libshim_ims

# IPA Manager
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/vendor/etc/sec_config

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsxv26.kl:system/usr/keylayout/synaptics_dsxv26.kl \
    $(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl

# Keymaster HAL
PRODUCT_PACKAGES += \
                    android.hardware.keymaster@3.0-impl \
                    android.hardware.keymaster@3.0-service
# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/uinput-fpc.idc:system/usr/idc/uinput-fpc.idc

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    android.hardware.light@2.0-service \
    lights.msm8953

# Display Calibration
PRODUCT_PACKAGES += \
    libjni_livedisplay

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service.widevine

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qdcm_calib_data_mipi_mot_cmd_smd_1080p_549_alb.xml:system/vendor/etc/qdcm_calib_data_mipi_mot_cmd_smd_1080p_549_alb.xml

# Media
PRODUCT_PACKAGES += \
    libc2dcolorconvert

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/vendor/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_8953_v1.xml:system/vendor/etc/media_codecs_8953_v1.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/vendor/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance_8953_v1.xml:system/vendor/etc/media_codecs_performance_8953_v1.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/vendor/etc/media_profiles_vendor.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_profiles_8953_v1.xml:system/vendor/etc/media_profiles_8953_v1.xml \
    $(LOCAL_PATH)/configs/media_profiles_rc.xml:system/vendor/etc/media_profiles_rc.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/vendor/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/vendor/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/vendor/etc/media_codecs_google_video.xml

# NFC
PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/libnfc-nxp.conf:system/etc/libnfc-nxp.conf

# Netutils
PRODUCT_PACKAGES += \
    android.system.net.netd@1.0 \
    netutils-wrapper-1.0 \
    libandroid_net \
    libandroid_net_32

PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    nfc_nci.msm8953 \
    NfcNci \
    Tag \
    com.android.nfc_extras \
    android.hardware.nfc@1.0-impl

# OMX
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libOmxVidcCommon \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-service-qti

# Ramdisk
PRODUCT_PACKAGES += \
    init.mmi.touch.sh \
    init.qcom.ril.sh \
    init.qcom.bt.sh \
    init.qcom.fm.sh \
    wlan_carrier_bin.sh

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.mmi.boot.sh \
    init.mmi.laser.sh \
    init.mmi.rc \
    init.mmi.usb.rc \
    init.oem.hw.sh \
    init.qcom.rc \
    ueventd.qcom.rc

# Powerhint configuration file
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/configs/powerhint.xml:system/etc/powerhint.xml \
     $(LOCAL_PATH)/configs/perfboostsconfig.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perfboostsconfig.xml

# Releasetools script
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/check_features.sh:system/vendor/bin/check_features.sh

# RIL
PRODUCT_PACKAGES += \
    librmnetctl \
    libshim_ril \
    libprotobuf-cpp-full \
    libxml2 \
    rild_socket

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp_policy/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp_policy/mediaextractor.policy:system/vendor/etc/seccomp_policy/mediaextractor.policy

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:system/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf

PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-albus.conf:system/vendor/etc/thermal-engine.conf

# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

PRODUCT_PACKAGES += \
    vndk-sp

# Wifi
PRODUCT_PACKAGES += \
    hostapd_default.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf

# Launcher3
PRODUCT_PACKAGES += \
    Launcher3

# WiFi HAL
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

#Thermal
PRODUCT_PACKAGES += android.hardware.thermal@1.0-impl \
                    android.hardware.thermal@1.0-service \
                    thermal.msm8953

PRODUCT_PACKAGES += \
    libcurl \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    wificond \
    wifilogd \
    tcpdump \
    wcnss_service \
    libwpa_client

# Wifi Symlinks
PRODUCT_PACKAGES += \
    WCNSS_qcom_cfg.ini \
    WCNSS_qcom_wlan_nv.bin \
    WCNSS_qcom_wlan_nv_Argentina.bin \
    WCNSS_qcom_wlan_nv_Brazil.bin \
    WCNSS_qcom_wlan_nv_India.bin \
    WCNSS_wlan_dictionary.dat

PRODUCT_COPY_FILES += \
    kernel/motorola/msm8953/drivers/staging/prima/firmware_bin/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/vendor/etc/wifi/WCNSS_qcom_cfg.ini

# ZAF
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/zaf/zaf_mot_imx362.json:system/etc/zaf/zaf_mot_imx362.json \
    $(LOCAL_PATH)/configs/zaf/zaf_mot_s5k2l7.json:system/etc/zaf/zaf_mot_s5k2l7.json

# TEMP FIX
PRODUCT_PACKAGES += \
    android.hidl.base@1.0

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_VENDOR_KERNEL_HEADERS := hardware/qcom/msm8996/kernel-headers
