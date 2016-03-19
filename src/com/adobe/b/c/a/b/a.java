package com.adobe.b.c.a.b;

import com.adobe.b.a.a.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class a
  extends com.adobe.b.a.a.a
{
  private static String A = "api:bitrate_change";
  private static String B = "api:quantum_end";
  private static String i = "api:aa_start";
  private static String j = "api:aa_ad_start";
  private static String k = "api:config";
  private static String l = "api:video_load";
  private static String m = "api:video_unload";
  private static String n = "api:video_start";
  private static String o = "api:video_complete";
  private static String p = "api:ad_start";
  private static String q = "api:ad_complete";
  private static String r = "api:play";
  private static String s = "api:pause";
  private static String t = "api:buffer_start";
  private static String u = "api:seek_start";
  private static String v = "api:seek_complete";
  private static String w = "api:chapter_start";
  private static String x = "api:chapter_complete";
  private static String y = "api:track_error";
  private static String z = "api:track_internal_error";
  private c C;
  private com.adobe.b.c.a D;
  private com.adobe.b.a.b.d E = new com.adobe.b.a.b.d(b);
  private com.adobe.b.a.b.a F = E.a("heartbeat-channel");
  private b G;
  private boolean H = false;
  private boolean I = false;
  private boolean J;
  private boolean K;
  private boolean L;
  private com.adobe.b.c.a.b.a.a.b M;
  private com.adobe.b.c.a.b.a.b.a N;
  private com.adobe.b.c.a.b.a.e.a O;
  private com.adobe.b.c.a.b.a.c.a P;
  private com.adobe.b.a.b Q = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (a.a(a.this) != null) {}
      do
      {
        return null;
        a.a(a.this, new com.adobe.b.c.a("Internal error", "AdobeHeartbeatPlugin is in ERROR state."));
        a.a(a.this, "error", a.a(a.this));
      } while (a.b(a.this) == null);
      a.b(a.this).onError(a.a(a.this));
      return null;
    }
  };
  private com.adobe.b.a.b R = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (!c()) {
        return null;
      }
      a.c(a.this).a(new com.adobe.b.a.a(a.d(), paramAnonymousObject));
      return null;
    }
  };
  private com.adobe.b.a.b S = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (!c()) {
        return null;
      }
      a.c(a.this).a(new com.adobe.b.a.a(a.e(), paramAnonymousObject));
      return null;
    }
  };
  private com.adobe.b.a.b T = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      a.a(a.this, null);
      if (!c()) {
        return null;
      }
      if (a.d(a.this)) {
        a.c(a.this).a(new com.adobe.b.a.a(a.f(), paramAnonymousObject));
      }
      a.a(a.this, false);
      a.b(a.this, true);
      a.c(a.this, false);
      a.d(a.this, false);
      a.c(a.this).a(new com.adobe.b.a.a(a.g(), paramAnonymousObject));
      a.a(a.this, true);
      return null;
    }
  };
  private com.adobe.b.a.b U = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      a.a(a.this, null);
      if (!c()) {
        return null;
      }
      a.c(a.this).a(new com.adobe.b.a.a(a.f(), paramAnonymousObject));
      a.a(a.this, false);
      return null;
    }
  };
  private com.adobe.b.a.b V = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (!c()) {
        return null;
      }
      a.c(a.this).a(new com.adobe.b.a.a(a.h(), paramAnonymousObject));
      return null;
    }
  };
  private com.adobe.b.a.b W = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (!c()) {
        return null;
      }
      a.c(a.this).a(new com.adobe.b.a.a(a.i(), paramAnonymousObject));
      return null;
    }
  };
  private com.adobe.b.a.b X = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (!c()) {
        return null;
      }
      a.b(a.this, false);
      a.a(a.this, paramAnonymousObject);
      return null;
    }
  };
  private com.adobe.b.a.b Y = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (!c()) {
        return null;
      }
      a.c(a.this).a(new com.adobe.b.a.a(a.j(), paramAnonymousObject));
      a.b(a.this, true);
      return null;
    }
  };
  private com.adobe.b.a.b Z = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (!c()) {
        return null;
      }
      a.c(a.this).a(new com.adobe.b.a.a(a.k(), paramAnonymousObject));
      a.a(a.this, paramAnonymousObject);
      return null;
    }
  };
  private com.adobe.b.a.b aa = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (!c()) {}
      do
      {
        return null;
        a.c(a.this).a(new com.adobe.b.a.a(a.l(), paramAnonymousObject));
      } while ((!(paramAnonymousObject instanceof HashMap)) || (((Boolean)((HashMap)paramAnonymousObject).get("isInAdBreak")).booleanValue()));
      a.a(a.this, paramAnonymousObject);
      return null;
    }
  };
  private com.adobe.b.a.b ab = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (!c()) {
        return null;
      }
      a.c(a.this).a(new com.adobe.b.a.a(a.m(), paramAnonymousObject));
      a.d(a.this, true);
      return null;
    }
  };
  private com.adobe.b.a.b ac = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (!c()) {
        return null;
      }
      a.d(a.this, false);
      a.a(a.this, paramAnonymousObject);
      return null;
    }
  };
  private com.adobe.b.a.b ad = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (!c()) {
        return null;
      }
      a.c(a.this).a(new com.adobe.b.a.a(a.n(), paramAnonymousObject));
      a.c(a.this).a(new com.adobe.b.a.a(a.j(), paramAnonymousObject));
      a.c(a.this, true);
      return null;
    }
  };
  private com.adobe.b.a.b ae = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (!c()) {
        return null;
      }
      a.c(a.this).a(new com.adobe.b.a.a(a.o(), paramAnonymousObject));
      a.c(a.this, false);
      a.a(a.this, paramAnonymousObject);
      return null;
    }
  };
  private com.adobe.b.a.b af = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (!c()) {
        return null;
      }
      a.c(a.this).a(new com.adobe.b.a.a(a.p(), paramAnonymousObject));
      return null;
    }
  };
  private com.adobe.b.a.b ag = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (!c()) {
        return null;
      }
      a.c(a.this).a(new com.adobe.b.a.a(a.q(), paramAnonymousObject));
      return null;
    }
  };
  private com.adobe.b.a.b ah = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (!c()) {
        return null;
      }
      a.c(a.this).a(new com.adobe.b.a.a(a.r(), paramAnonymousObject));
      return null;
    }
  };
  private com.adobe.b.a.b ai = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (!c()) {
        return null;
      }
      a.c(a.this).a(new com.adobe.b.a.a(a.s(), paramAnonymousObject));
      return null;
    }
  };
  private com.adobe.b.a.b aj = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (!c()) {
        return null;
      }
      a.c(a.this).a(new com.adobe.b.a.a(a.t(), paramAnonymousObject));
      return null;
    }
  };
  private com.adobe.b.a.b ak = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      paramAnonymousObject = (com.adobe.b.a.a)paramAnonymousObject;
      a.a(a.this, (com.adobe.b.c.a)((com.adobe.b.a.a)paramAnonymousObject).b());
      paramAnonymousObject = new HashMap();
      ((HashMap)paramAnonymousObject).put("source", "sourceErrorHeartbeat");
      ((HashMap)paramAnonymousObject).put("error_id", a.a(a.this).a() + "|" + a.a(a.this).b());
      a.c(a.this).a(new com.adobe.b.a.a(a.u(), paramAnonymousObject));
      paramAnonymousObject = new HashMap();
      ((HashMap)paramAnonymousObject).put("reset", Boolean.valueOf(true));
      a.c(a.this).a("clock:reporting.pause", paramAnonymousObject);
      a.b(a.this, "error", a.a(a.this));
      if (a.b(a.this) != null) {
        a.b(a.this).onError(a.a(a.this));
      }
      return null;
    }
  };
  
  public a(final c paramc)
  {
    super("adobe-heartbeat");
    C = paramc;
    N = new com.adobe.b.c.a.b.a.b.a(F, b);
    P = new com.adobe.b.c.a.b.a.c.a(F, b);
    O = new com.adobe.b.c.a.b.a.e.a(F, b);
    paramc = new HashMap();
    paramc.put("version", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        return com.adobe.b.c.e.a();
      }
    });
    paramc.put("api_level", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        return com.adobe.b.c.e.b();
      }
    });
    paramc.put("tracking_server", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        if (a.e(a.this) != null) {
          return a.e(a.this).a();
        }
        return null;
      }
    });
    paramc.put("publisher", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        if (a.e(a.this) != null) {
          return a.e(a.this).b();
        }
        return null;
      }
    });
    paramc.put("quiet_mode", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        if (a.e(a.this) != null) {}
        for (boolean bool = ef;; bool = false) {
          return Boolean.valueOf(bool);
        }
      }
    });
    paramc.put("ovp", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        if (a.e(a.this) != null) {
          return eb;
        }
        return Boolean.valueOf(false);
      }
    });
    paramc.put("sdk", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        if (a.e(a.this) != null) {
          return ec;
        }
        return null;
      }
    });
    paramc.put("is_primetime", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        if (a.e(a.this) != null) {}
        for (boolean bool = ed;; bool = false) {
          return Boolean.valueOf(bool);
        }
      }
    });
    paramc.put("psdk_version", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        if (a.e(a.this) != null) {
          return ee;
        }
        return null;
      }
    });
    d = new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (ArrayList)paramAnonymousObject;
        if ((paramAnonymousObject == null) || (((ArrayList)paramAnonymousObject).size() == 0)) {
          return null;
        }
        HashMap localHashMap = new HashMap();
        Iterator localIterator = ((ArrayList)paramAnonymousObject).iterator();
        if (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          if (paramc.containsKey(str)) {}
          for (paramAnonymousObject = ((com.adobe.b.a.b)paramc.get(str)).call(this);; paramAnonymousObject = null)
          {
            localHashMap.put(str, paramAnonymousObject);
            break;
          }
        }
        return localHashMap;
      }
    };
  }
  
  public final void a(com.adobe.b.a.a.d paramd)
  {
    if (!(paramd instanceof b)) {
      throw new Error("Expected config data to be instance of AdobeHeartbeatPluginConfig.");
    }
    G = ((b)paramd);
    if (G.g) {
      b.a();
    }
    for (;;)
    {
      paramd = b;
      Object localObject = a;
      new StringBuilder("#configure({trackingServer=").append(G.a()).append(", publisher=").append(G.b()).append(", quietMode=").append(G.f).append(", ssl=").append(G.a).append("})");
      paramd.a((String)localObject);
      paramd = G.a() + "/settings/";
      localObject = new HashMap();
      ((HashMap)localObject).put("tracking_server", G.a());
      ((HashMap)localObject).put("check_status_server", paramd);
      ((HashMap)localObject).put("publisher", G.b());
      ((HashMap)localObject).put("quiet_mode", Boolean.valueOf(G.f));
      ((HashMap)localObject).put("ssl", Boolean.valueOf(G.a));
      F.a(new com.adobe.b.a.a(k, localObject));
      H = true;
      return;
      b.b();
    }
  }
  
  public final void a(f paramf)
  {
    super.a(paramf);
    F.a("error", ak, this);
    M = new com.adobe.b.c.a.b.a.a.b(e, F, b);
    F.a("clock:check_status.resume", null);
    F.a(new com.adobe.b.a.a("clock:check_status.get_settings", null));
    e.a(this, "handleAnalyticsError", Q);
    e.a(this, "handleAnalyticsStart", R);
    e.a(this, "handleAnalyticsAdStart", S);
    e.a(this, "handleVideoLoad", T);
    e.a(this, "handleVideoUnload", U);
    e.a(this, "handleVideoStart", V);
    e.a(this, "handleVideoComplete", W);
    e.a(this, "handlePlay", X);
    e.a(this, "handlePause", Y);
    e.a(this, "handleAdStart", Z);
    e.a(this, "handleAdComplete", aa);
    e.a(this, "handleBufferStart", ab);
    e.a(this, "handleBufferComplete", ac);
    e.a(this, "handleSeekStart", ad);
    e.a(this, "handleSeekComplete", ae);
    e.a(this, "handleChapterStart", af);
    e.a(this, "handleChapterComplete", ag);
    e.a(this, "handleBitrateChange", ah);
    e.a(this, "handleTrackError", ai);
    e.a(this, "handleClockReportingTick", aj);
    e.a(new com.adobe.b.a.e("player", "video_load"), this, "handleVideoLoad", null);
    e.a(new com.adobe.b.a.e("player", "video_unload"), this, "handleVideoUnload", null);
    paramf = new ArrayList();
    paramf.add(new com.adobe.b.a.a.e("player", "video.id", "videoId"));
    paramf.add(new com.adobe.b.a.a.e("player", "video.name", "videoName"));
    paramf.add(new com.adobe.b.a.a.e("player", "video.length", "videoLength"));
    paramf.add(new com.adobe.b.a.a.e("player", "video.playhead", "playhead"));
    paramf.add(new com.adobe.b.a.a.e("player", "video.playerName", "playerName"));
    paramf.add(new com.adobe.b.a.a.e("player", "video.streamType", "streamType"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.fps", "fps"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.droppedFrames", "droppedFrames"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.bitrate", "bitrate"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.startupTime", "startupTime"));
    paramf.add(new com.adobe.b.a.a.e("adobe-analytics", "rsid", "rsid"));
    paramf.add(new com.adobe.b.a.a.e("adobe-analytics", "tracking_server", "trackingServer"));
    paramf.add(new com.adobe.b.a.a.e("adobe-analytics", "channel", "channel"));
    paramf.add(new com.adobe.b.a.a.e("adobe-analytics", "meta.video.*", "metaVideo"));
    paramf.add(new com.adobe.b.a.a.e("adobe-analytics", "ssl", "useSsl"));
    paramf.add(new com.adobe.b.a.a.e("adobe-heartbeat", "publisher", "publisher"));
    paramf.add(new com.adobe.b.a.a.e("adobe-heartbeat", "sdk", "sdk"));
    paramf.add(new com.adobe.b.a.a.e("adobe-heartbeat", "ovp", "ovp"));
    paramf.add(new com.adobe.b.a.a.e("adobe-heartbeat", "version", "version"));
    paramf.add(new com.adobe.b.a.a.e("adobe-heartbeat", "api_level", "apiLvl"));
    e.a(new com.adobe.b.a.e("player", "video_start"), this, "handleVideoStart", paramf);
    paramf = new ArrayList();
    paramf.add(new com.adobe.b.a.a.e("player", "qos.fps", "fps"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.droppedFrames", "droppedFrames"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.bitrate", "bitrate"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.startupTime", "startupTime"));
    e.a(new com.adobe.b.a.e("player", "video_complete"), this, "handleVideoComplete", paramf);
    paramf = new ArrayList();
    paramf.add(new com.adobe.b.a.a.e("player", "video.playhead", "playhead"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.fps", "fps"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.droppedFrames", "droppedFrames"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.bitrate", "bitrate"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.startupTime", "startupTime"));
    e.a(new com.adobe.b.a.e("player", "play"), this, "handlePlay", paramf);
    paramf = new ArrayList();
    paramf.add(new com.adobe.b.a.a.e("player", "video.playhead", "playhead"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.fps", "fps"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.droppedFrames", "droppedFrames"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.bitrate", "bitrate"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.startupTime", "startupTime"));
    e.a(new com.adobe.b.a.e("player", "pause"), this, "handlePause", paramf);
    paramf = new ArrayList();
    paramf.add(new com.adobe.b.a.a.e("player", "video.playhead", "playhead"));
    paramf.add(new com.adobe.b.a.a.e("player", "ad.id", "adId"));
    paramf.add(new com.adobe.b.a.a.e("player", "ad.position", "adPosition"));
    paramf.add(new com.adobe.b.a.a.e("player", "pod.name", "podName"));
    paramf.add(new com.adobe.b.a.a.e("player", "pod.playerName", "podPlayerName"));
    paramf.add(new com.adobe.b.a.a.e("player", "pod.position", "podPosition"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.fps", "fps"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.droppedFrames", "droppedFrames"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.bitrate", "bitrate"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.startupTime", "startupTime"));
    paramf.add(new com.adobe.b.a.a.e("adobe-analytics", "meta.video.*", "metaVideo"));
    paramf.add(new com.adobe.b.a.a.e("adobe-analytics", "meta.ad.*", "metaAd"));
    e.a(new com.adobe.b.a.e("player", "ad_start"), this, "handleAdStart", paramf);
    paramf = new ArrayList();
    paramf.add(new com.adobe.b.a.a.e("player", "video.playhead", "playhead"));
    paramf.add(new com.adobe.b.a.a.e("player", "ad.isInAdBreak", "isInAdBreak"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.fps", "fps"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.droppedFrames", "droppedFrames"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.bitrate", "bitrate"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.startupTime", "startupTime"));
    e.a(new com.adobe.b.a.e("player", "ad_complete"), this, "handleAdComplete", paramf);
    paramf = new ArrayList();
    paramf.add(new com.adobe.b.a.a.e("player", "video.playhead", "playhead"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.fps", "fps"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.droppedFrames", "droppedFrames"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.bitrate", "bitrate"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.startupTime", "startupTime"));
    e.a(new com.adobe.b.a.e("player", "buffer_start"), this, "handleBufferStart", paramf);
    paramf = new ArrayList();
    paramf.add(new com.adobe.b.a.a.e("player", "video.playhead", "playhead"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.fps", "fps"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.droppedFrames", "droppedFrames"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.bitrate", "bitrate"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.startupTime", "startupTime"));
    e.a(new com.adobe.b.a.e("player", "buffer_complete"), this, "handleBufferComplete", paramf);
    paramf = new ArrayList();
    paramf.add(new com.adobe.b.a.a.e("player", "video.playhead", "playhead"));
    e.a(new com.adobe.b.a.e("player", "seek_start"), this, "handleSeekStart", paramf);
    paramf = new ArrayList();
    paramf.add(new com.adobe.b.a.a.e("player", "video.playhead", "playhead"));
    paramf.add(new com.adobe.b.a.a.e("player", "ad.isInAd", "isInAd"));
    paramf.add(new com.adobe.b.a.a.e("player", "ad.id", "adId"));
    paramf.add(new com.adobe.b.a.a.e("player", "ad.position", "adPosition"));
    paramf.add(new com.adobe.b.a.a.e("player", "pod.playerName", "podPlayerName"));
    paramf.add(new com.adobe.b.a.a.e("player", "pod.position", "podPosition"));
    paramf.add(new com.adobe.b.a.a.e("player", "chapter.isInChapter", "isInChapter"));
    paramf.add(new com.adobe.b.a.a.e("player", "chapter.position", "chapterPosition"));
    paramf.add(new com.adobe.b.a.a.e("player", "chapter.name", "chapterName"));
    paramf.add(new com.adobe.b.a.a.e("player", "chapter.length", "chapterLength"));
    paramf.add(new com.adobe.b.a.a.e("player", "chapter.startTime", "chapterOffset"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.fps", "fps"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.droppedFrames", "droppedFrames"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.bitrate", "bitrate"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.startupTime", "startupTime"));
    e.a(new com.adobe.b.a.e("player", "seek_complete"), this, "handleSeekComplete", paramf);
    paramf = new ArrayList();
    paramf.add(new com.adobe.b.a.a.e("player", "video.playhead", "playhead"));
    paramf.add(new com.adobe.b.a.a.e("player", "chapter.position", "chapterPosition"));
    paramf.add(new com.adobe.b.a.a.e("player", "chapter.name", "chapterName"));
    paramf.add(new com.adobe.b.a.a.e("player", "chapter.length", "chapterLength"));
    paramf.add(new com.adobe.b.a.a.e("player", "chapter.startTime", "chapterOffset"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.fps", "fps"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.droppedFrames", "droppedFrames"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.bitrate", "bitrate"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.startupTime", "startupTime"));
    paramf.add(new com.adobe.b.a.a.e("adobe-analytics", "meta.video.*", "metaVideo"));
    paramf.add(new com.adobe.b.a.a.e("adobe-analytics", "meta.chapter.*", "metaChapter"));
    e.a(new com.adobe.b.a.e("player", "chapter_start"), this, "handleChapterStart", paramf);
    paramf = new ArrayList();
    paramf.add(new com.adobe.b.a.a.e("player", "video.playhead", "playhead"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.fps", "fps"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.droppedFrames", "droppedFrames"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.bitrate", "bitrate"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.startupTime", "startupTime"));
    e.a(new com.adobe.b.a.e("player", "chapter_complete"), this, "handleChapterComplete", paramf);
    paramf = new ArrayList();
    paramf.add(new com.adobe.b.a.a.e("player", "video.playhead", "playhead"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.fps", "fps"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.droppedFrames", "droppedFrames"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.bitrate", "bitrate"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.startupTime", "startupTime"));
    e.a(new com.adobe.b.a.e("player", "bitrate_change"), this, "handleBitrateChange", paramf);
    paramf = new ArrayList();
    e.a(new com.adobe.b.a.e("player", "track_error"), this, "handleTrackError", paramf);
    paramf = new ArrayList();
    paramf.add(new com.adobe.b.a.a.e("player", "video.playhead", "playhead"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.fps", "fps"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.droppedFrames", "droppedFrames"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.bitrate", "bitrate"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.startupTime", "startupTime"));
    e.a(new com.adobe.b.a.e("service.clock", "heartbeat.reporting.tick"), this, "handleClockReportingTick", paramf);
    paramf = new ArrayList();
    e.a(new com.adobe.b.a.e("adobe-analytics", "error"), this, "handleAnalyticsError", paramf);
    paramf = new ArrayList();
    paramf.add(new com.adobe.b.a.a.e("adobe-analytics", "vid", "vid"));
    paramf.add(new com.adobe.b.a.a.e("adobe-analytics", "aid", "aid"));
    paramf.add(new com.adobe.b.a.a.e("adobe-analytics", "mid", "mid"));
    paramf.add(new com.adobe.b.a.a.e("player", "video.playhead", "playhead"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.fps", "fps"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.droppedFrames", "droppedFrames"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.bitrate", "bitrate"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.startupTime", "startupTime"));
    e.a(new com.adobe.b.a.e("adobe-analytics", "aa_start"), this, "handleAnalyticsStart", paramf);
    paramf = new ArrayList();
    paramf.add(new com.adobe.b.a.a.e("player", "video.playhead", "playhead"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.fps", "fps"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.droppedFrames", "droppedFrames"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.bitrate", "bitrate"));
    paramf.add(new com.adobe.b.a.a.e("player", "qos.startupTime", "startupTime"));
    e.a(new com.adobe.b.a.e("adobe-analytics", "sc_ad_start"), this, "handleAnalyticsAdStart", paramf);
  }
  
  protected final boolean c()
  {
    if (!H)
    {
      b.a(a, "_canProcess() > Plugin not configured.");
      return false;
    }
    if (D != null)
    {
      b.a(a, "_canProcess() > Plugin in ERROR state.");
      return false;
    }
    return super.c();
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */