
plugin_LTLIBRARIES = libgstdvdlpcmdec.la

libgstdvdlpcmdec_la_SOURCES = gstdvdlpcmdec.c
libgstdvdlpcmdec_la_CFLAGS = $(GST_PLUGINS_BASE_CFLAGS) $(GST_CFLAGS)
libgstdvdlpcmdec_la_LIBADD = $(GST_PLUGINS_BASE_LIBS) -lgstaudio-@GST_MAJORMINOR@ $(GST_LIBS)
libgstdvdlpcmdec_la_LDFLAGS = $(GST_PLUGIN_LDFLAGS)
libgstdvdlpcmdec_la_LIBTOOLFLAGS = --tag=disable-static

noinst_HEADERS = gstdvdlpcmdec.h
