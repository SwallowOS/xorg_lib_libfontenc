LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)



LOCAL_MODULE := libfontenc

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    external/libpng \
    external/zlib

LOCAL_CFLAGS := -DFONT_ENCODINGS_DIRECTORY=\"/usr/share/fonts/X11/encodings/encodings.dir\"

LOCAL_SRC_FILES := 	\
	src/encparse.c \
        src/fontenc.c \
	

LOCAL_SHARED_LIBRARIES := libz libpng



include $(BUILD_SHARED_LIBRARY)

