package com.adobe.b.c.a.a;

import com.adobe.b.a.a.f;
import com.adobe.mobile.ah;
import com.adobe.mobile.an;
import com.adobe.mobile.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class a
  extends com.adobe.b.a.a.a
{
  private Map<String, String> i;
  private Map<String, String> j;
  private Map<String, String> k;
  private d l;
  private com.adobe.b.a.b.c m;
  private com.adobe.b.a.b.c n;
  private c o;
  private com.adobe.b.c.a p;
  private b q;
  private ArrayList<String> r;
  private final com.adobe.b.a.b s = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      a.a(a.this, null);
      return null;
    }
  };
  private final com.adobe.b.a.b t = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      a.b(a.this).a(a.a(a.this));
      if (!c()) {
        return null;
      }
      a.d(a.this).a(new com.adobe.b.a.b.b(a.c(a.this), paramAnonymousObject));
      return null;
    }
  };
  private final com.adobe.b.a.b u = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      a.f(a.this).a(a.e(a.this));
      if (!c()) {
        return null;
      }
      a.d(a.this).a(new com.adobe.b.a.b.b(a.g(a.this), paramAnonymousObject));
      return null;
    }
  };
  private final com.adobe.b.a.b v = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (a.h(a.this) != null) {}
      do
      {
        return null;
        a.a(a.this, new com.adobe.b.c.a("Internal error", "HeartbeatPlugin is in ERROR state."));
        a.a(a.this, "error", a.h(a.this));
      } while (a.i(a.this) == null);
      a.i(a.this).onError(a.h(a.this));
      return null;
    }
  };
  private final com.adobe.b.a.b w = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      HashMap localHashMap = (HashMap)paramAnonymousObject;
      paramAnonymousObject = a.k(a.this);
      Object localObject = a.j(a.this);
      new StringBuilder("#_executeOpen(id=").append(localHashMap.get("videoId")).append(", videoName=").append(localHashMap.get("videoName")).append(", length=").append(localHashMap.get("videoLength")).append(", playerName=").append(localHashMap.get("playerName")).append(", channel=").append(localHashMap.get("channel")).append(", isPrimetime=").append(localHashMap.get("isPrimetime")).append(")");
      ((com.adobe.b.a.c)paramAnonymousObject).a((String)localObject);
      if (!c()) {}
      while (!a.l(a.this).a(localHashMap, new String[] { "videoId", "streamType", "videoLength", "playerName" })) {
        return null;
      }
      paramAnonymousObject = (HashMap)localHashMap.get("metaVideo");
      localObject = new HashMap();
      if (paramAnonymousObject != null)
      {
        Iterator localIterator = ((HashMap)paramAnonymousObject).keySet().iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          ((HashMap)localObject).put(str, ((HashMap)paramAnonymousObject).get(str));
          a.m(a.this).add(str);
        }
      }
      ((HashMap)localObject).put("a.contentType", localHashMap.get("streamType"));
      ((HashMap)localObject).put("a.media.name", localHashMap.get("videoId"));
      if (localHashMap.get("videoName") != null) {
        paramAnonymousObject = localHashMap.get("videoName");
      }
      for (;;)
      {
        ((HashMap)localObject).put("a.media.friendlyName", paramAnonymousObject);
        if (localHashMap.get("videoLength") == null)
        {
          paramAnonymousObject = "0.0";
          label318:
          ((HashMap)localObject).put("a.media.length", paramAnonymousObject);
          ((HashMap)localObject).put("a.media.playerName", localHashMap.get("playerName"));
          if (localHashMap.get("channel") == null) {
            break label452;
          }
          paramAnonymousObject = localHashMap.get("channel");
          label355:
          ((HashMap)localObject).put("a.media.channel", paramAnonymousObject);
          ((HashMap)localObject).put("a.media.view", "true");
          ((HashMap)localObject).put("&&pev3", "video");
          if (!((Boolean)localHashMap.get("isPrimetime")).booleanValue()) {
            break label458;
          }
          paramAnonymousObject = "msp_s";
          ((HashMap)localObject).put("&&pe", paramAnonymousObject);
          com.adobe.mobile.b.a((Map)localObject);
        }
        try
        {
          Thread.sleep(0L);
          a.b(a.this, "aa_start", localHashMap);
          return null;
          paramAnonymousObject = "";
          continue;
          paramAnonymousObject = Long.valueOf(((Double)localHashMap.get("videoLength")).longValue());
          break label318;
          label452:
          paramAnonymousObject = "";
          break label355;
          label458:
          paramAnonymousObject = "ms_s";
        }
        catch (InterruptedException paramAnonymousObject)
        {
          for (;;)
          {
            ((InterruptedException)paramAnonymousObject).printStackTrace();
          }
        }
      }
    }
  };
  private final com.adobe.b.a.b x = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      HashMap localHashMap = (HashMap)paramAnonymousObject;
      String str1 = com.adobe.b.b.a.a((String)localHashMap.get("videoId")) + "_" + localHashMap.get("podPosition");
      paramAnonymousObject = a.o(a.this);
      Object localObject1 = a.n(a.this);
      new StringBuilder("#_executeOpenAd(id=").append(localHashMap.get("adId")).append(", length=").append(localHashMap.get("adLength")).append(", podPlayerName=").append(localHashMap.get("podPlayerName")).append(", parentId=").append(localHashMap.get("videoId")).append(", podId=").append(str1).append(", parentPodPosition=").append(localHashMap.get("adPosition")).append(", podSecond=").append(localHashMap.get("podSecond")).append(")");
      ((com.adobe.b.a.c)paramAnonymousObject).a((String)localObject1);
      if (!c()) {}
      while (!a.l(a.this).a(localHashMap, new String[] { "videoId", "streamType", "playerName", "adId", "adLength", "podPlayerName", "adPosition" })) {
        return null;
      }
      if (!(localHashMap.get("podSecond") instanceof Double)) {}
      Object localObject2;
      Object localObject3;
      for (paramAnonymousObject = localHashMap.get("playhead");; paramAnonymousObject = localHashMap.get("podSecond"))
      {
        localHashMap.put("podSecond", paramAnonymousObject);
        localObject2 = (HashMap)localHashMap.get("metaVideo");
        paramAnonymousObject = (HashMap)localHashMap.get("metaAd");
        localObject1 = new HashMap();
        if (localObject2 == null) {
          break;
        }
        localObject3 = ((HashMap)localObject2).keySet().iterator();
        while (((Iterator)localObject3).hasNext())
        {
          String str2 = (String)((Iterator)localObject3).next();
          ((HashMap)localObject1).put(str2, ((HashMap)localObject2).get(str2));
          a.m(a.this).add(str2);
        }
      }
      if (paramAnonymousObject != null)
      {
        localObject2 = ((HashMap)paramAnonymousObject).keySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (String)((Iterator)localObject2).next();
          ((HashMap)localObject1).put(localObject3, ((HashMap)paramAnonymousObject).get(localObject3));
          a.m(a.this).add(localObject3);
        }
      }
      ((HashMap)localObject1).put("a.contentType", localHashMap.get("streamType"));
      ((HashMap)localObject1).put("a.media.name", localHashMap.get("videoId"));
      ((HashMap)localObject1).put("a.media.playerName", localHashMap.get("playerName"));
      if (localHashMap.get("channel") != null) {
        paramAnonymousObject = localHashMap.get("channel");
      }
      for (;;)
      {
        ((HashMap)localObject1).put("a.media.channel", paramAnonymousObject);
        ((HashMap)localObject1).put("a.media.ad.name", localHashMap.get("adId"));
        if (localHashMap.get("adName") != null)
        {
          paramAnonymousObject = localHashMap.get("adName");
          label533:
          ((HashMap)localObject1).put("a.media.ad.friendlyName", paramAnonymousObject);
          if (localHashMap.get("podName") == null) {
            break label739;
          }
          paramAnonymousObject = localHashMap.get("podName");
          label557:
          ((HashMap)localObject1).put("a.media.ad.podFriendlyName", paramAnonymousObject);
          if (((Double)localHashMap.get("adLength")).longValue() != 0L) {
            break label745;
          }
          paramAnonymousObject = "0.0";
          label585:
          ((HashMap)localObject1).put("a.media.ad.length", paramAnonymousObject);
          ((HashMap)localObject1).put("a.media.ad.playerName", localHashMap.get("podPlayerName"));
          ((HashMap)localObject1).put("a.media.ad.pod", str1);
          if (localHashMap.get("adPosition") != null) {
            break label764;
          }
          paramAnonymousObject = "0.0";
          label627:
          ((HashMap)localObject1).put("a.media.ad.podPosition", paramAnonymousObject);
          if (((Double)localHashMap.get("podSecond")).longValue() != 0L) {
            break label777;
          }
          paramAnonymousObject = "0.0";
          label655:
          ((HashMap)localObject1).put("a.media.ad.podSecond", paramAnonymousObject);
          ((HashMap)localObject1).put("a.media.ad.view", "true");
          ((HashMap)localObject1).put("&&pev3", "videoAd");
          if (!((Boolean)localHashMap.get("isPrimetime")).booleanValue()) {
            break label796;
          }
          paramAnonymousObject = "mspa_s";
          ((HashMap)localObject1).put("&&pe", paramAnonymousObject);
          com.adobe.mobile.b.a((Map)localObject1);
        }
        try
        {
          Thread.sleep(0L);
          a.c(a.this, "sc_ad_start", localHashMap);
          return null;
          paramAnonymousObject = "";
          continue;
          paramAnonymousObject = "";
          break label533;
          label739:
          paramAnonymousObject = "";
          break label557;
          label745:
          paramAnonymousObject = Long.valueOf(((Double)localHashMap.get("adLength")).longValue());
          break label585;
          label764:
          paramAnonymousObject = (Long)localHashMap.get("adPosition");
          break label627;
          label777:
          paramAnonymousObject = Long.valueOf(((Double)localHashMap.get("podSecond")).longValue());
          break label655;
          label796:
          paramAnonymousObject = "msa_s";
        }
        catch (InterruptedException paramAnonymousObject)
        {
          for (;;)
          {
            ((InterruptedException)paramAnonymousObject).printStackTrace();
          }
        }
      }
    }
  };
  private final com.adobe.b.a.b y = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      a.a(a.this, (com.adobe.b.c.a)paramAnonymousObject);
      a.v(a.this).a(a.u(a.this), a.h(a.this).a() + " | " + a.h(a.this).b());
      a.d(a.this, "error", paramAnonymousObject);
      if (a.i(a.this) != null) {
        a.i(a.this).onError(a.h(a.this));
      }
      return null;
    }
  };
  
  public a(final c paramc)
  {
    super("adobe-analytics");
    o = paramc;
    r = new ArrayList();
    i = new HashMap();
    j = new HashMap();
    k = new HashMap();
    p = null;
    m = new com.adobe.b.a.b.c((byte)0);
    l = new d(y);
    paramc = new HashMap();
    paramc.put("rsid", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        return ah.b();
      }
    });
    paramc.put("tracking_server", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        return ah.c();
      }
    });
    paramc.put("ssl", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        return Boolean.valueOf(ah.a());
      }
    });
    paramc.put("vid", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        return j.a();
      }
    });
    paramc.put("aid", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        return com.adobe.mobile.b.a();
      }
    });
    paramc.put("mid", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        return an.a();
      }
    });
    paramc.put("channel", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        if (a.p(a.this) != null) {
          return pa;
        }
        return null;
      }
    });
    paramc.put("meta", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (String)paramAnonymousObject;
        Object localObject = ((String)paramAnonymousObject).split("\\.");
        if (localObject.length < 2) {}
        do
        {
          do
          {
            do
            {
              return null;
              localObject = a.a.valueOf(localObject[0]);
              paramAnonymousObject = ((String)paramAnonymousObject).substring(((String)paramAnonymousObject).indexOf(".") + 1);
            } while (localObject == null);
            switch (a.11.a[localObject.ordinal()])
            {
            default: 
              return null;
            case 1: 
              if (((String)paramAnonymousObject).equals("*")) {
                return a.q(a.this);
              }
              break;
            }
          } while ((a.q(a.this) == null) || (!a.q(a.this).containsKey(paramAnonymousObject)));
          return (String)a.q(a.this).get(paramAnonymousObject);
          if (((String)paramAnonymousObject).equals("*")) {
            return a.r(a.this);
          }
          return a.r(a.this).get(paramAnonymousObject);
          if (((String)paramAnonymousObject).equals("*")) {
            return a.s(a.this);
          }
        } while ((a.s(a.this) == null) || (!a.s(a.this).containsKey(paramAnonymousObject)));
        return (String)a.s(a.this).get(paramAnonymousObject);
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
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          if (str.startsWith("meta."))
          {
            paramAnonymousObject = str.split("meta\\.");
            localHashMap.put(str, ((com.adobe.b.a.b)paramc.get("meta")).call(paramAnonymousObject[1]));
          }
          else
          {
            if (paramc.containsKey(str)) {}
            for (paramAnonymousObject = ((com.adobe.b.a.b)paramc.get(str)).call(this);; paramAnonymousObject = null)
            {
              localHashMap.put(str, paramAnonymousObject);
              break;
            }
          }
        }
        return localHashMap;
      }
    };
  }
  
  public final void a()
  {
    n = new com.adobe.b.a.b.c();
    n.a(new com.adobe.b.a.b.b(new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        try
        {
          Thread.sleep(100L);
          return null;
        }
        catch (InterruptedException paramAnonymousObject)
        {
          for (;;) {}
        }
      }
    }));
    n.a(new com.adobe.b.a.b.b(new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        j.a();
        com.adobe.mobile.b.a();
        an.a();
        a.t(a.this);
        return null;
      }
    }));
    super.a();
  }
  
  public final void a(com.adobe.b.a.a.d paramd)
  {
    if (!b.class.isInstance(paramd)) {
      throw new Error("Expected config data to be instance of AdobeAnalyticsPluginConfig");
    }
    q = ((b)paramd);
    if (q.b) {
      b.a();
    }
    for (;;)
    {
      paramd = b;
      String str = a;
      new StringBuilder("#configure({trackingServer=").append(q.b).append(", channel=").append(q.a).append(", ssl=").append(ah.a()).append("})");
      paramd.a(str);
      return;
      b.b();
    }
  }
  
  public final void a(f paramf)
  {
    super.a(paramf);
    e.a(this, "handleVideoLoad", s);
    e.a(this, "handleVideoStart", t);
    e.a(this, "handleAdStart", u);
    e.a(this, "handleHeartbeatPluginError", v);
    e.a(new com.adobe.b.a.e("player", "video_load"), this, "handleVideoLoad", null);
    paramf = new ArrayList();
    paramf.add(new com.adobe.b.a.a.e("player", "video.id", "videoId"));
    paramf.add(new com.adobe.b.a.a.e("player", "video.name", "videoName"));
    paramf.add(new com.adobe.b.a.a.e("player", "video.length", "videoLength"));
    paramf.add(new com.adobe.b.a.a.e("player", "video.playerName", "playerName"));
    paramf.add(new com.adobe.b.a.a.e("player", "video.streamType", "streamType"));
    paramf.add(new com.adobe.b.a.a.e("adobe-heartbeat", "is_primetime", "isPrimetime"));
    paramf.add(new com.adobe.b.a.a.e("adobe-analytics", "channel", "channel"));
    paramf.add(new com.adobe.b.a.a.e("adobe-analytics", "meta.video.*", "metaVideo"));
    e.a(new com.adobe.b.a.e("player", "video_start"), this, "handleVideoStart", paramf);
    paramf = new ArrayList();
    paramf.add(new com.adobe.b.a.a.e("player", "video.id", "videoId"));
    paramf.add(new com.adobe.b.a.a.e("player", "video.streamType", "streamType"));
    paramf.add(new com.adobe.b.a.a.e("player", "video.playhead", "playhead"));
    paramf.add(new com.adobe.b.a.a.e("player", "video.playerName", "playerName"));
    paramf.add(new com.adobe.b.a.a.e("player", "ad.id", "adId"));
    paramf.add(new com.adobe.b.a.a.e("player", "ad.length", "adLength"));
    paramf.add(new com.adobe.b.a.a.e("player", "ad.position", "adPosition"));
    paramf.add(new com.adobe.b.a.a.e("player", "ad.name", "adName"));
    paramf.add(new com.adobe.b.a.a.e("player", "pod.name", "podName"));
    paramf.add(new com.adobe.b.a.a.e("player", "pod.position", "podPosition"));
    paramf.add(new com.adobe.b.a.a.e("player", "pod.startTime", "podSecond"));
    paramf.add(new com.adobe.b.a.a.e("player", "pod.playerName", "podPlayerName"));
    paramf.add(new com.adobe.b.a.a.e("adobe-heartbeat", "is_primetime", "isPrimetime"));
    paramf.add(new com.adobe.b.a.a.e("adobe-analytics", "channel", "channel"));
    paramf.add(new com.adobe.b.a.a.e("adobe-analytics", "meta.video.*", "metaVideo"));
    paramf.add(new com.adobe.b.a.a.e("adobe-analytics", "meta.ad.*", "metaAd"));
    e.a(new com.adobe.b.a.e("player", "ad_start"), this, "handleAdStart", paramf);
    e.a(new com.adobe.b.a.e("adobe-heartbeat", "error"), this, "handleHeartbeatPluginError", null);
  }
  
  public final void a(Map<String, String> paramMap)
  {
    i = paramMap;
  }
  
  public final void b(Map<String, String> paramMap)
  {
    j = paramMap;
  }
  
  public final void c(Map<String, String> paramMap)
  {
    k = paramMap;
  }
  
  protected final boolean c()
  {
    if (p != null)
    {
      b.a(a, "#_canProcess() > In ERROR state.");
      return false;
    }
    return super.c();
  }
  
  private static enum a
  {
    private a() {}
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */