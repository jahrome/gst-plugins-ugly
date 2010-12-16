LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:=		\
	asfheaders.c		\
	asfpacket.c		\
	gstasf.c		\
	gstasfdemux.c		\
	gstrtpasfdepay.c	\
	gstrtspwms.c

LOCAL_SHARED_LIBRARIES :=	\
	libgsttag-0.10		\
	libgstaudio-0.10	\
	libgstreamer-0.10	\
	libgstbase-0.10		\
	libgstriff-0.10		\
	libgstrtp-0.10		\
	libgstrtsp-0.10		\
	libgstsdp-0.10		\
	libglib-2.0		\
	libgthread-2.0		\
	libgmodule-2.0		\
	libgobject-2.0

LOCAL_MODULE:= libgstasfdemux

LOCAL_C_INCLUDES := 			\
	$(LOCAL_PATH)			\
	$(GST_PLUGINS_UGLY_TOP)		\
	$(GST_PLUGINS_UGLY_TOP)/android	\
	external/gstreamer		\
	external/gstreamer/android 	\
	external/gstreamer/libs		\
	external/gstreamer/gst		\
	external/gstreamer/gst/android	\
	external/gst-plugins-base/gst-libs   \
	external/gst-plugins-base/gst-libs/gst/tag/android   \
	external/glib			\
	external/glib/android	  	\
	external/glib/glib		\
	external/glib/gmodule	  	\
	external/glib/gobject	  	\
	external/glib/gthread

LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H		\
	-DBUILD_WITH_ANDROID

include $(BUILD_PLUGIN_LIBRARY)
