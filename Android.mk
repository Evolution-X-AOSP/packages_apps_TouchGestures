LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_USE_AAPT2 := true

LOCAL_STATIC_JAVA_LIBRARIES += \
    androidx.annotation_annotation \
    androidx.lifecycle_lifecycle-common

LOCAL_STATIC_ANDROID_LIBRARIES += \
    androidx.legacy_legacy-support-v4 \
    androidx.lifecycle_lifecycle-runtime \
    androidx.recyclerview_recyclerview \
    androidx.preference_preference \
    androidx.appcompat_appcompat \
    androidx.legacy_legacy-preference-v14

LOCAL_PACKAGE_NAME := TouchGestures
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_PRIVATE_PLATFORM_APIS := true

LOCAL_PROGUARD_ENABLED := disabled

LOCAL_DEX_PREOPT := false

include frameworks/base/packages/SettingsLib/common.mk

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))
