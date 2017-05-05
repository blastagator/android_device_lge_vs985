LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := wvm_shim.cpp
LOCAL_SHARED_LIBRARIES := libstagefright_foundation
LOCAL_MODULE := libshim_wvm
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := boringssl/p_dec.c boringssl/p_open.c boringssl/cipher.c \
    boringssl/e_des.c boringssl/cleanup.c boringssl/ctrl.c

LOCAL_CFLAGS += -std=c99
LOCAL_C_INCLUDES := boringssl
LOCAL_SHARED_LIBRARIES := libcrypto
LOCAL_MODULE := libshim_boringssl
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)
