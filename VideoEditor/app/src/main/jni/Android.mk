LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := tutorial
LOCAL_SRC_FILES := tutorial01.c
LOCAL_CFLAGS += -std=c99
LOCAL_LDLIBS := -llog -ljnigraphics -lz -landroid -ljnigraphics
LOCAL_SHARED_LIBRARIES := libavformat libavcodec libswscale libavutil libavfilter libswresample
LOCAL_LDFLAGS += -ljnigraphics
include $(BUILD_SHARED_LIBRARY)

$(call import-module,ffmpeg-2.8.3/android/arm)