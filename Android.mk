LOCAL_PATH := $(call my-dir)

GST_PLUGINS_UGLY_TOP := $(LOCAL_PATH)

include $(CLEAR_VARS)

# external dependencies
include $(GST_PLUGINS_UGLY_TOP)/ext/mad/Android.mk
include $(GST_PLUGINS_UGLY_TOP)/gst/mpegaudioparse/Android.mk
include $(GST_PLUGINS_UGLY_TOP)/gst/asfdemux/Android.mk
