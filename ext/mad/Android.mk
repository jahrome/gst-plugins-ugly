LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	gstmad.c	\
	gstid3tag.c

LOCAL_STATIC_LIBRARIES :=	\
	libmad			\
	libid3tag

LOCAL_SHARED_LIBRARIES :=	\
	libgsttag-0.10		\
	libgstaudio-0.10	\
	libgstreamer-0.10	\
	libgstbase-0.10		\
	libglib-2.0		\
	libgthread-2.0		\
	libgmodule-2.0		\
	libgobject-2.0		\
	libz

LOCAL_MODULE:= libgstmad

LOCAL_C_INCLUDES := 			\
	$(LOCAL_PATH)			\
	$(GST_PLUGINS_BAD_TOP)		\
	$(GST_PLUGINS_BAD_TOP)/android	\
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
	external/glib/gthread		\
	external/libmad/		\
	external/libid3tag/

LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H		\
	-DBUILD_WITH_ANDROID

include $(BUILD_PLUGIN_LIBRARY)
