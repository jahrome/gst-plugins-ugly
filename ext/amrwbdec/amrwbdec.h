/* GStreamer Adaptive Multi-Rate Wide-Band (AMR-WB) plugin
 * Copyright (C) 2006 Edgard Lima <edgard.lima@indt.org.br>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

#ifndef __GST_AMRWBDEC_H__
#define __GST_AMRWBDEC_H__

#include <gst/gst.h>
#include <gst/base/gstadapter.h>
#include <dec_if.h>
#include <if_rom.h>

G_BEGIN_DECLS

#define GST_TYPE_AMRWBDEC			\
  (gst_amrwbdec_get_type())
#define GST_AMRWBDEC(obj)						\
  (G_TYPE_CHECK_INSTANCE_CAST((obj), GST_TYPE_AMRWBDEC, GstAmrwbDec))
#define GST_AMRWBDEC_CLASS(klass)					\
  (G_TYPE_CHECK_CLASS_CAST((klass), GST_TYPE_AMRWBDEC, GstAmrwbDecClass))
#define GST_IS_AMRWBDEC(obj)					\
  (G_TYPE_CHECK_INSTANCE_TYPE((obj), GST_TYPE_AMRWBDEC))
#define GST_IS_AMRWBDEC_CLASS(klass)			\
  (G_TYPE_CHECK_CLASS_TYPE((klass), GST_TYPE_AMRWBDEC))

typedef struct _GstAmrwbDec GstAmrwbDec;
typedef struct _GstAmrwbDecClass GstAmrwbDecClass;

/**
 * GstAmrwbDec:
 *
 * Opaque data structure.
 */
struct _GstAmrwbDec {
  GstElement element;

  /* pads */
  GstPad *sinkpad, *srcpad;
  guint64 ts;

  GstAdapter *adapter;

  /* library handle */
  void *handle;

  /* output settings */
  gint channels, rate;
  gint duration;

  GstSegment        segment;
  gboolean          discont;
};

struct _GstAmrwbDecClass {
  GstElementClass parent_class;
};

GType gst_amrwbdec_get_type (void);

G_END_DECLS

#endif /* __GST_AMRWBDEC_H__ */
