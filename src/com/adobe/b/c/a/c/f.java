package com.adobe.b.c.a.c;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class f
  extends com.adobe.b.a.a.a
{
  private h i;
  private boolean j;
  private boolean k;
  private final com.adobe.b.a.b l = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      HashMap localHashMap = (HashMap)paramAnonymousObject;
      if (localHashMap.containsKey("video")) {
        return ((HashMap)paramAnonymousObject).get("video");
      }
      localHashMap.put("video", f.a(f.this).getVideoInfo());
      paramAnonymousObject = f.c(f.this);
      String str = f.b(f.this);
      new StringBuilder("Data from delegate > VideoInfo: ").append(localHashMap.get("video"));
      ((com.adobe.b.a.c)paramAnonymousObject).b(str);
      return localHashMap.get("video");
    }
  };
  private final com.adobe.b.a.b m = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      paramAnonymousObject = (HashMap)paramAnonymousObject;
      if (((HashMap)paramAnonymousObject).containsKey("ad")) {
        return ((HashMap)paramAnonymousObject).get("ad");
      }
      ((HashMap)paramAnonymousObject).put("ad", f.a(f.this).getAdInfo());
      com.adobe.b.a.c localc = f.e(f.this);
      String str = f.d(f.this);
      new StringBuilder("Data from delegate > AdInfo: ").append(((HashMap)paramAnonymousObject).get("ad"));
      localc.b(str);
      return ((HashMap)paramAnonymousObject).get("ad");
    }
  };
  private final com.adobe.b.a.b n = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      HashMap localHashMap = (HashMap)paramAnonymousObject;
      if (localHashMap.containsKey("pod")) {
        return localHashMap.get("pod");
      }
      localHashMap.put("pod", f.a(f.this).getAdBreakInfo());
      com.adobe.b.a.c localc = f.g(f.this);
      String str = f.f(f.this);
      new StringBuilder("Data from delegate > AdBreakInfo: ").append(((HashMap)paramAnonymousObject).get("pod"));
      localc.b(str);
      return localHashMap.get("pod");
    }
  };
  private final com.adobe.b.a.b o = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      HashMap localHashMap = (HashMap)paramAnonymousObject;
      if (localHashMap.containsKey("chapter")) {
        return localHashMap.get("chapter");
      }
      localHashMap.put("chapter", f.a(f.this).getChapterInfo());
      com.adobe.b.a.c localc = f.i(f.this);
      String str = f.h(f.this);
      new StringBuilder("Data from delegate > ChapterInfo: ").append(((HashMap)paramAnonymousObject).get("chapter"));
      localc.b(str);
      return localHashMap.get("chapter");
    }
  };
  private final com.adobe.b.a.b p = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      HashMap localHashMap = (HashMap)paramAnonymousObject;
      if (localHashMap.containsKey("qos")) {
        return ((HashMap)paramAnonymousObject).get("qos");
      }
      localHashMap.put("qos", f.a(f.this).getQoSInfo());
      com.adobe.b.a.c localc = f.k(f.this);
      String str = f.j(f.this);
      new StringBuilder("Data from delegate > QoSInfo: ").append(((HashMap)paramAnonymousObject).get("qos"));
      localc.b(str);
      return localHashMap.get("qos");
    }
  };
  
  public f(final h paramh)
  {
    super("player");
    i = paramh;
    j = false;
    k = false;
    paramh = new HashMap();
    final HashMap localHashMap = new HashMap();
    paramh.put("video.id", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (e)f.l(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = b;; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.n(f.this);
          String str = f.m(f.this);
          new StringBuilder("Resolving video.id: ").append((String)paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("video.name", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (e)f.l(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = c;; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.p(f.this);
          String str = f.o(f.this);
          new StringBuilder("Resolving video.name: ").append((String)paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("video.length", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (e)f.l(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = d;; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.r(f.this);
          String str = f.q(f.this);
          new StringBuilder("Resolving video.length: ").append(paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("video.playerName", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (e)f.l(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = a;; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.t(f.this);
          String str = f.s(f.this);
          new StringBuilder("Resolving video.playerName: ").append((String)paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("video.streamType", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (e)f.l(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = f;; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.v(f.this);
          String str = f.u(f.this);
          new StringBuilder("Resolving video.streamType: ").append((String)paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("video.playhead", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (e)f.l(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (double d = e.doubleValue();; d = 0.0D)
        {
          paramAnonymousObject = Double.valueOf(d);
          com.adobe.b.a.c localc = f.x(f.this);
          String str = f.w(f.this);
          new StringBuilder("Resolving video.playhead: ").append(paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("pod.name", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (a)f.y(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = b;; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.A(f.this);
          String str = f.z(f.this);
          new StringBuilder("Resolving pod.name: ").append((String)paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("pod.playerName", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (a)f.y(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = a;; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.C(f.this);
          String str = f.B(f.this);
          new StringBuilder("Resolving pod.playerName: ").append((String)paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("pod.position", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (a)f.y(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = c;; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.E(f.this);
          String str = f.D(f.this);
          new StringBuilder("Resolving pod.position: ").append(paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("pod.startTime", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (a)f.y(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = d;; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.G(f.this);
          String str = f.F(f.this);
          new StringBuilder("Resolving pod.startTime: ").append(paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("ad.isInAdBreak", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        if ((a)f.y(f.this).call(localHashMap) != null) {}
        for (boolean bool = true;; bool = false)
        {
          paramAnonymousObject = f.I(f.this);
          String str = f.H(f.this);
          new StringBuilder("Resolving ad.isInAdBreak: ").append(bool);
          ((com.adobe.b.a.c)paramAnonymousObject).a(str);
          return Boolean.valueOf(bool);
        }
      }
    });
    paramh.put("ad.isInAd", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        if ((b)f.J(f.this).call(localHashMap) != null) {}
        for (boolean bool = true;; bool = false)
        {
          paramAnonymousObject = f.L(f.this);
          String str = f.K(f.this);
          new StringBuilder("Resolving ad.isInAd: ").append(bool);
          ((com.adobe.b.a.c)paramAnonymousObject).a(str);
          return Boolean.valueOf(bool);
        }
      }
    });
    paramh.put("ad.id", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (b)f.J(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = a;; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.N(f.this);
          String str = f.M(f.this);
          new StringBuilder("Resolving ad.id: ").append((String)paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("ad.name", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (b)f.J(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = b;; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.P(f.this);
          String str = f.O(f.this);
          new StringBuilder("Resolving ad.name: ").append((String)paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("ad.length", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (b)f.J(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = c;; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.R(f.this);
          String str = f.Q(f.this);
          new StringBuilder("Resolving ad.length: ").append(paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("ad.position", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (b)f.J(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = d;; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.T(f.this);
          String str = f.S(f.this);
          new StringBuilder("Resolving ad.position: ").append(paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("chapter.isInChapter", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        if ((c)f.U(f.this).call(localHashMap) != null) {}
        for (boolean bool = true;; bool = false)
        {
          paramAnonymousObject = f.W(f.this);
          String str = f.V(f.this);
          new StringBuilder("Resolving chapter.isInChapter: ").append(bool);
          ((com.adobe.b.a.c)paramAnonymousObject).a(str);
          return Boolean.valueOf(bool);
        }
      }
    });
    paramh.put("chapter.name", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (c)f.U(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = a;; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.Y(f.this);
          String str = f.X(f.this);
          new StringBuilder("Resolving chapter.name: ").append((String)paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("chapter.length", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (c)f.U(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = b;; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.aa(f.this);
          String str = f.Z(f.this);
          new StringBuilder("Resolving chapter.length: ").append(paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("chapter.position", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (c)f.U(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (long l = c.longValue();; l = 0L)
        {
          paramAnonymousObject = Long.valueOf(l);
          com.adobe.b.a.c localc = f.ac(f.this);
          String str = f.ab(f.this);
          new StringBuilder("Resolving chapter.position: ").append(paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("chapter.startTime", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (c)f.U(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = d;; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.ae(f.this);
          String str = f.ad(f.this);
          new StringBuilder("Resolving chapter.startTime: ").append(paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("qos.bitrate", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (d)f.af(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = a;; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.ah(f.this);
          String str = f.ag(f.this);
          new StringBuilder("Resolving qos.bitrate: ").append(paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("qos.fps", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (d)f.af(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = b;; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.aj(f.this);
          String str = f.ai(f.this);
          new StringBuilder("Resolving qos.fps: ").append(paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("qos.droppedFrames", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (d)f.af(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = c;; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.al(f.this);
          String str = f.ak(f.this);
          new StringBuilder("Resolving qos.droppedFrames: ").append(paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
      }
    });
    paramh.put("qos.startupTime", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (d)f.af(f.this).call(localHashMap);
        if (paramAnonymousObject != null) {}
        for (paramAnonymousObject = Double.valueOf(d.doubleValue() * 1000.0D);; paramAnonymousObject = null)
        {
          com.adobe.b.a.c localc = f.an(f.this);
          String str = f.am(f.this);
          new StringBuilder("Resolving qos.startupTime: ").append(paramAnonymousObject);
          localc.a(str);
          return paramAnonymousObject;
        }
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
        localHashMap.clear();
        HashMap localHashMap = new HashMap();
        Iterator localIterator = ((ArrayList)paramAnonymousObject).iterator();
        if (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          if (paramh.containsKey(str)) {}
          for (paramAnonymousObject = ((com.adobe.b.a.b)paramh.get(str)).call(this);; paramAnonymousObject = null)
          {
            localHashMap.put(str, paramAnonymousObject);
            break;
          }
        }
        return localHashMap;
      }
    };
  }
  
  private boolean a(String paramString)
  {
    boolean bool2 = true;
    com.adobe.b.a.c localc;
    String str;
    boolean bool1;
    if (!j)
    {
      localc = b;
      str = a;
      new StringBuilder("#").append(paramString).append("() > No active tracking session.");
      localc.c(str);
      bool1 = false;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (k);
      localc = b;
      str = a;
      new StringBuilder("#").append(paramString).append("() > Tracking session auto-start.");
      localc.b(str);
      b.b(a);
      bool1 = bool2;
    } while (!c());
    if (!j)
    {
      b.c(a);
      return true;
    }
    if (k)
    {
      b.b(a);
      return true;
    }
    k = true;
    a("video_start", null);
    return true;
  }
  
  public final void a(com.adobe.b.a.a.d paramd)
  {
    if (!(paramd instanceof g)) {
      throw new Error("Expected config data to be instance of VideoPlayerPluginConfig.");
    }
    paramd = (g)paramd;
    if (a) {
      b.a();
    }
    for (;;)
    {
      com.adobe.b.a.c localc = b;
      String str = a;
      new StringBuilder("configure(debugLogging=").append(a).append(")");
      localc.a(str);
      return;
      b.b();
    }
  }
  
  public final void a(com.adobe.b.a.b paramb)
  {
    b.b(a);
    if (!c()) {}
    while (!a("trackComplete")) {
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("callback", paramb);
    a("video_complete", localHashMap);
  }
  
  public final void d()
  {
    b.b(a);
    if (!c()) {
      return;
    }
    a("video_load", null);
    j = true;
    k = false;
  }
  
  public final void e()
  {
    b.b(a);
    if (!c()) {
      return;
    }
    if (!j)
    {
      b.c(a);
      return;
    }
    a("video_unload", null);
    j = false;
    k = false;
  }
  
  public final void f()
  {
    b.b(a);
    if (!c()) {}
    while (!a("trackPlay")) {
      return;
    }
    a("play", null);
  }
  
  public final void g()
  {
    b.b(a);
    if (!c()) {}
    while (!a("trackPause")) {
      return;
    }
    a("pause", null);
  }
  
  public final void h()
  {
    b.b(a);
    if (!c()) {}
    while (!a("trackBufferStart")) {
      return;
    }
    a("buffer_start", null);
  }
  
  public final void i()
  {
    b.b(a);
    if (!c()) {}
    while (!a("trackBufferComplete")) {
      return;
    }
    a("buffer_complete", null);
  }
  
  public final void j()
  {
    b.b(a);
    if (!c()) {}
    while (!a("trackSeekStart")) {
      return;
    }
    a("seek_start", null);
  }
  
  public final void k()
  {
    b.b(a);
    if (!c()) {}
    while (!a("trackSeekComplete")) {
      return;
    }
    a("seek_complete", null);
  }
  
  public final void l()
  {
    b.b(a);
    if (!c()) {}
    while (!a("trackChapterStart")) {
      return;
    }
    a("chapter_start", null);
  }
  
  public final void m()
  {
    b.b(a);
    if (!c()) {}
    while (!a("trackChapterComplete")) {
      return;
    }
    a("chapter_complete", null);
  }
  
  public final void n()
  {
    b.b(a);
    if (!c()) {}
    while (!a("trackAdStart")) {
      return;
    }
    a("ad_start", null);
  }
  
  public final void o()
  {
    b.b(a);
    if (!c()) {}
    while (!a("trackAdComplete")) {
      return;
    }
    a("ad_complete", null);
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.c.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */