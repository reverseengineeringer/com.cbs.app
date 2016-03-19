package com.adobe.b.c.a.b.a.b;

import com.adobe.b.c.a.b.a.d.a.d;
import com.adobe.b.c.a.b.a.d.a.f;
import com.adobe.b.c.a.b.a.d.a.g;
import com.adobe.b.c.a.b.a.d.a.h;
import com.adobe.b.c.a.b.a.d.a.i;
import com.adobe.b.c.a.b.a.d.a.j;
import com.adobe.b.c.a.b.a.d.a.k;
import java.util.HashMap;
import java.util.Map;

public class a
{
  private final com.adobe.b.a.b A = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      a.b(a.this).a(a.a(a.this));
      if (!a.g(a.this))
      {
        a.b(a.this).a(a.a(a.this));
        return null;
      }
      a.a(a.this, false);
      return null;
    }
  };
  private final com.adobe.b.a.b B = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      Map localMap;
      synchronized (a.c(a.this))
      {
        localMap = (Map)((com.adobe.b.a.a)paramAnonymousObject).b();
        paramAnonymousObject = a.b(a.this);
        String str = a.a(a.this);
        new StringBuilder("#_onApiVideoStart(id=").append(localMap.get("videoId")).append(", name=").append(localMap.get("videoName")).append(", length=").append(localMap.get("videoLength")).append(", type=").append(localMap.get("streamType")).append(", playerName=").append(localMap.get("playerName")).append(")");
        ((com.adobe.b.a.c)paramAnonymousObject).a(str);
        if (!a.a(a.this, "_onApiVideoStart")) {
          return null;
        }
        if (!a.d(a.this).a((HashMap)localMap, new String[] { "videoId", "streamType", "videoLength", "playhead", "playerName" })) {
          return null;
        }
      }
      f.a((String)localMap.get("rsid"));
      f.b((String)localMap.get("trackingServer"));
      f.a((Boolean)localMap.get("useSsl"));
      h.a((String)localMap.get("ovp"));
      h.b((String)localMap.get("sdk"));
      h.c((String)localMap.get("channel"));
      h.e((String)localMap.get("version"));
      h.a(((Integer)localMap.get("apiLvl")).longValue());
      a.b(a.this, (String)localMap.get("videoId"));
      h.d((String)localMap.get("playerName"));
      b.b(a.h(a.this));
      b.a(((Double)localMap.get("videoLength")).doubleValue());
      b.a("main");
      b.c((String)localMap.get("publisher"));
      d.a((String)localMap.get("streamType"));
      c.a(a.a());
      a.a(a.this, localMap);
      if ((localMap.get("_eventData") != null) && ((localMap.get("_eventData") instanceof HashMap))) {}
      for (paramAnonymousObject = (com.adobe.b.a.b)((HashMap)localMap.get("_eventData")).get("callback");; paramAnonymousObject = null)
      {
        paramAnonymousObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a.this), "start", ((Double)localMap.get("playhead")).doubleValue(), localMap.get("metaVideo"), (com.adobe.b.a.b)paramAnonymousObject);
        a.a(a.this, (com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject);
        return null;
      }
    }
  };
  private final com.adobe.b.a.b C = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      for (;;)
      {
        synchronized (a.c(a.this))
        {
          paramAnonymousObject = (Map)((com.adobe.b.a.a)paramAnonymousObject).b();
          a.b(a.this).a(a.a(a.this));
          if (!a.a(a.this, "_onApiVideoComplete")) {
            return null;
          }
          if ((((Map)paramAnonymousObject).get("_eventData") != null) && ((((Map)paramAnonymousObject).get("_eventData") instanceof HashMap)))
          {
            paramAnonymousObject = (com.adobe.b.a.b)((HashMap)((Map)paramAnonymousObject).get("_eventData")).get("callback");
            paramAnonymousObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a.this), "complete", b.c(), null, (com.adobe.b.a.b)paramAnonymousObject);
            a.a(a.this, (com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject);
            a.i(a.this);
            return null;
          }
        }
        paramAnonymousObject = null;
      }
    }
  };
  private final com.adobe.b.a.b D = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      Map localMap;
      synchronized (a.c(a.this))
      {
        localMap = (Map)((com.adobe.b.a.a)paramAnonymousObject).b();
        a.b(a.this).a(a.a(a.this));
        if (!a.a(a.this, "_onApiPlay")) {
          return null;
        }
        if (!a.d(a.this).a((HashMap)localMap, new String[] { "playhead" })) {
          return null;
        }
      }
      a.a(a.this, localMap);
      if ((localMap.get("_eventData") != null) && ((localMap.get("_eventData") instanceof HashMap))) {}
      for (paramAnonymousObject = (com.adobe.b.a.b)((HashMap)localMap.get("_eventData")).get("callback");; paramAnonymousObject = null)
      {
        paramAnonymousObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a.this), "play", ((Double)localMap.get("playhead")).doubleValue(), null, (com.adobe.b.a.b)paramAnonymousObject);
        a.a(a.this, (com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject);
        return null;
      }
    }
  };
  private final com.adobe.b.a.b E = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      Map localMap;
      synchronized (a.c(a.this))
      {
        localMap = (Map)((com.adobe.b.a.a)paramAnonymousObject).b();
        a.b(a.this).a(a.a(a.this));
        if (!a.a(a.this, "_onApiPause")) {
          return null;
        }
        if (!a.d(a.this).a((HashMap)localMap, new String[] { "playhead" })) {
          return null;
        }
      }
      a.a(a.this, localMap);
      if ((localMap.get("_eventData") != null) && ((localMap.get("_eventData") instanceof HashMap))) {}
      for (paramAnonymousObject = (com.adobe.b.a.b)((HashMap)localMap.get("_eventData")).get("callback");; paramAnonymousObject = null)
      {
        paramAnonymousObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a.this), "pause", ((Double)localMap.get("playhead")).doubleValue(), null, (com.adobe.b.a.b)paramAnonymousObject);
        a.a(a.this, (com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject);
        return null;
      }
    }
  };
  private final com.adobe.b.a.b F = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      Map localMap;
      synchronized (a.c(a.this))
      {
        localMap = (Map)((com.adobe.b.a.a)paramAnonymousObject).b();
        a.b(a.this).a(a.a(a.this));
        if (!a.a(a.this, "_onApiBufferStart")) {
          return null;
        }
        if (!a.d(a.this).a((HashMap)localMap, new String[] { "playhead" })) {
          return null;
        }
      }
      a.a(a.this, localMap);
      if ((localMap.get("_eventData") != null) && ((localMap.get("_eventData") instanceof HashMap))) {}
      for (paramAnonymousObject = (com.adobe.b.a.b)((HashMap)localMap.get("_eventData")).get("callback");; paramAnonymousObject = null)
      {
        paramAnonymousObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a.this), "buffer", ((Double)localMap.get("playhead")).doubleValue(), null, (com.adobe.b.a.b)paramAnonymousObject);
        a.a(a.this, (com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject);
        return null;
      }
    }
  };
  private final com.adobe.b.a.b G = new com.adobe.b.a.b()
  {
    public final Object call(Object arg1)
    {
      synchronized (a.c(a.this))
      {
        a.b(a.this).a(a.a(a.this));
        if (!a.a(a.this, "_onApiSeekStart")) {
          return null;
        }
        a.a(a.this, b.d());
        a.a(a.this, b.e());
        b.a(null);
        b.a("main");
        a.b(a.this, b.b());
        b.a(null);
        return null;
      }
    }
  };
  private final com.adobe.b.a.b H = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      synchronized (a.c(a.this))
      {
        a.b(a.this).a(a.a(a.this));
        paramAnonymousObject = (Map)((com.adobe.b.a.a)paramAnonymousObject).b();
        if (!a.a(a.this, "_onApiSeekComplete")) {
          return null;
        }
        if (!a.d(a.this).a((HashMap)paramAnonymousObject, new String[] { "playhead" })) {
          return null;
        }
      }
      Object localObject;
      if (((Boolean)((Map)paramAnonymousObject).get("isInAd")).booleanValue())
      {
        if (!a.d(a.this).a((HashMap)paramAnonymousObject, new String[] { "adId", "adPosition", "podPosition", "podPlayerName" })) {
          return null;
        }
        localObject = com.adobe.b.b.a.a(b.b()) + "_" + ((Map)paramAnonymousObject).get("podPosition");
        if ((a.j(a.this) != null) && (a.j(a.this).b() == localObject) && (Long.valueOf(Long.parseLong(a.j(a.this).c(), 10)) == ((Map)paramAnonymousObject).get("adPosition")))
        {
          b.a(a.j(a.this));
          a.b(a.this, a.j(a.this).a());
          b.a("ad");
        }
      }
      for (;;)
      {
        if (((Boolean)((Map)paramAnonymousObject).get("isInChapter")).booleanValue())
        {
          if (!a.d(a.this).a((HashMap)paramAnonymousObject, new String[] { "chapterPosition", "chapterLength", "chapterOffset" }))
          {
            return null;
            if (b.d() != null) {
              break;
            }
            a.b(a.this, (String)((Map)paramAnonymousObject).get("adId"));
            com.adobe.b.c.a.b.a.d.a.a locala1 = new com.adobe.b.c.a.b.a.d.a.a();
            locala1.a(a.h(a.this));
            locala1.d((String)localObject);
            locala1.c((String)((Map)paramAnonymousObject).get("podPlayerName"));
            locala1.e(String.valueOf(((Map)paramAnonymousObject).get("podPosition")));
            locala1.b(a.a());
            b.a(locala1);
            break;
            b.a(null);
            b.a("main");
            a.b(a.this, b.b());
            continue;
          }
          if ((a.k(a.this) != null) && (Long.parseLong(String.valueOf(((Map)paramAnonymousObject).get("chapterPosition"))) == a.k(a.this).a())) {
            b.a(a.k(a.this));
          }
        }
      }
      for (;;)
      {
        a.a(a.this, null);
        a.a(a.this, null);
        return null;
        if (b.e() == null)
        {
          localObject = new d();
          ((d)localObject).a(com.adobe.b.b.a.a(b.b()) + "_" + ((Map)paramAnonymousObject).get("chapterPosition"));
          ((d)localObject).c((String)((Map)paramAnonymousObject).get("chapterName"));
          ((d)localObject).a(((Double)((Map)paramAnonymousObject).get("chapterLength")).doubleValue());
          ((d)localObject).a(((Long)((Map)paramAnonymousObject).get("chapterPosition")).longValue());
          ((d)localObject).b(((Double)((Map)paramAnonymousObject).get("chapterOffset")).doubleValue());
          ((d)localObject).b(a.a());
          b.a((d)localObject);
          continue;
          b.a(null);
        }
      }
    }
  };
  private final com.adobe.b.a.b I = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      Map localMap;
      Object localObject;
      synchronized (a.c(a.this))
      {
        localMap = (Map)((com.adobe.b.a.a)paramAnonymousObject).b();
        paramAnonymousObject = a.b(a.this);
        localObject = a.a(a.this);
        new StringBuilder("#_onApiAdStart(id=").append(localMap.get("adId")).append(", player_name=").append(localMap.get("podPlayerName")).append(", parent_name=").append(b.b()).append(", pod_pos=").append(localMap.get("adPosition")).append(")");
        ((com.adobe.b.a.c)paramAnonymousObject).a((String)localObject);
        if (!a.a(a.this, "_onApiAdStart")) {
          return null;
        }
        if (!a.d(a.this).a((HashMap)localMap, new String[] { "playhead", "podPosition", "podPlayerName", "adId", "adPosition" })) {
          return null;
        }
      }
      a.b(a.this, (String)localMap.get("adId"));
      paramAnonymousObject = new com.adobe.b.c.a.b.a.d.a.a();
      ((com.adobe.b.c.a.b.a.d.a.a)paramAnonymousObject).a(a.h(a.this));
      ((com.adobe.b.c.a.b.a.d.a.a)paramAnonymousObject).c((String)localMap.get("podPlayerName"));
      ((com.adobe.b.c.a.b.a.d.a.a)paramAnonymousObject).d(com.adobe.b.b.a.a(b.b()) + "_" + localMap.get("podPosition"));
      ((com.adobe.b.c.a.b.a.d.a.a)paramAnonymousObject).e(localMap.get("adPosition").toString());
      ((com.adobe.b.c.a.b.a.d.a.a)paramAnonymousObject).b(a.a());
      b.a((com.adobe.b.c.a.b.a.d.a.a)paramAnonymousObject);
      b.a("ad");
      a.a(a.this, localMap);
      if (localMap.get("metaVideo") != null) {}
      for (paramAnonymousObject = new HashMap((HashMap)localMap.get("metaVideo"));; paramAnonymousObject = null)
      {
        localObject = paramAnonymousObject;
        if (localMap.get("metaAd") != null)
        {
          localObject = (HashMap)localMap.get("metaAd");
          if (paramAnonymousObject != null)
          {
            ((HashMap)paramAnonymousObject).putAll((Map)localObject);
            localObject = paramAnonymousObject;
          }
        }
        else
        {
          if ((localMap.get("_eventData") == null) || (!(localMap.get("_eventData") instanceof HashMap))) {
            break label528;
          }
        }
        label528:
        for (paramAnonymousObject = (com.adobe.b.a.b)((HashMap)localMap.get("_eventData")).get("callback");; paramAnonymousObject = null)
        {
          paramAnonymousObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a.this), "start", ((Double)localMap.get("playhead")).doubleValue(), localObject, (com.adobe.b.a.b)paramAnonymousObject);
          a.a(a.this, (com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject);
          return null;
          localObject = (HashMap)((HashMap)localObject).clone();
          break;
        }
      }
    }
  };
  private final com.adobe.b.a.b J = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      Map localMap;
      synchronized (a.c(a.this))
      {
        a.b(a.this).a(a.a(a.this));
        localMap = (Map)((com.adobe.b.a.a)paramAnonymousObject).b();
        if (!a.a(a.this, "_onApiAdComplete")) {
          return null;
        }
        if (!a.d(a.this).a((HashMap)localMap, new String[] { "playhead" })) {
          return null;
        }
      }
      if (b.a() != "ad")
      {
        a.b(a.this).c(a.a(a.this));
        return null;
      }
      if ((localMap.get("_eventData") != null) && ((localMap.get("_eventData") instanceof HashMap))) {}
      for (paramAnonymousObject = (com.adobe.b.a.b)((HashMap)localMap.get("_eventData")).get("callback");; paramAnonymousObject = null)
      {
        paramAnonymousObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a.this), "complete", ((Double)localMap.get("playhead")).doubleValue(), null, (com.adobe.b.a.b)paramAnonymousObject);
        a.a(a.this, (com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject);
        b.a(null);
        b.a("main");
        a.b(a.this, b.b());
        return null;
      }
    }
  };
  private final com.adobe.b.a.b K = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      Map localMap;
      Object localObject;
      synchronized (a.c(a.this))
      {
        localMap = (Map)((com.adobe.b.a.a)paramAnonymousObject).b();
        paramAnonymousObject = a.b(a.this);
        localObject = a.a(a.this);
        new StringBuilder("#_onApiChapterStart(name=").append(localMap.get("chapterName")).append(", length=").append(localMap.get("chapterLength")).append(", position=").append(localMap.get("chapterPosition")).append(", chapter_offset=").append(localMap.get("chapterOffset")).append(")");
        ((com.adobe.b.a.c)paramAnonymousObject).a((String)localObject);
        if (!a.a(a.this, "_onApiChapterStart")) {
          return null;
        }
        if (!a.d(a.this).a((HashMap)localMap, new String[] { "playhead", "chapterPosition", "chapterOffset", "chapterLength" })) {
          return null;
        }
      }
      paramAnonymousObject = new d();
      ((d)paramAnonymousObject).a(com.adobe.b.b.a.a(b.b()) + "_" + localMap.get("chapterPosition"));
      ((d)paramAnonymousObject).c((String)localMap.get("chapterName"));
      ((d)paramAnonymousObject).a(((Double)localMap.get("chapterLength")).doubleValue());
      ((d)paramAnonymousObject).a(((Long)localMap.get("chapterPosition")).longValue());
      ((d)paramAnonymousObject).b(((Double)localMap.get("chapterOffset")).doubleValue());
      ((d)paramAnonymousObject).b(a.a());
      b.a((d)paramAnonymousObject);
      a.a(a.this, localMap);
      if (localMap.get("metaVideo") != null) {}
      for (paramAnonymousObject = new HashMap((HashMap)localMap.get("metaVideo"));; paramAnonymousObject = null)
      {
        localObject = paramAnonymousObject;
        if (localMap.get("metaChapter") != null)
        {
          localObject = (HashMap)localMap.get("metaChapter");
          if (paramAnonymousObject != null)
          {
            ((HashMap)paramAnonymousObject).putAll((Map)localObject);
            localObject = paramAnonymousObject;
          }
        }
        else
        {
          if ((localMap.get("_eventData") == null) || (!(localMap.get("_eventData") instanceof HashMap))) {
            break label538;
          }
        }
        label538:
        for (paramAnonymousObject = (com.adobe.b.a.b)((HashMap)localMap.get("_eventData")).get("callback");; paramAnonymousObject = null)
        {
          paramAnonymousObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a.this), "chapter_start", ((Double)localMap.get("playhead")).doubleValue(), localObject, (com.adobe.b.a.b)paramAnonymousObject);
          ((com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject).b().a(null);
          ((com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject).b().a("main");
          a.a(a.this, (com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject);
          return null;
          localObject = new HashMap((Map)localObject);
          break;
        }
      }
    }
  };
  private final com.adobe.b.a.b L = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      Map localMap;
      synchronized (a.c(a.this))
      {
        localMap = (Map)((com.adobe.b.a.a)paramAnonymousObject).b();
        a.b(a.this).a(a.a(a.this));
        if (!a.a(a.this, "_onApiChapterComplete")) {
          return null;
        }
        if (!a.d(a.this).a((HashMap)localMap, new String[] { "playhead" })) {
          return null;
        }
      }
      if (b.e() == null)
      {
        a.b(a.this).c(a.a(a.this));
        return null;
      }
      a.a(a.this, localMap);
      if ((localMap.get("_eventData") != null) && ((localMap.get("_eventData") instanceof HashMap))) {}
      for (paramAnonymousObject = (com.adobe.b.a.b)((HashMap)localMap.get("_eventData")).get("callback");; paramAnonymousObject = null)
      {
        paramAnonymousObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a.this), "chapter_complete", ((Double)localMap.get("playhead")).doubleValue(), null, (com.adobe.b.a.b)paramAnonymousObject);
        ((com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject).b().a(null);
        ((com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject).b().a("main");
        a.a(a.this, (com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject);
        b.a(null);
        return null;
      }
    }
  };
  private final com.adobe.b.a.b M = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      Map localMap;
      synchronized (a.c(a.this))
      {
        localMap = (Map)((com.adobe.b.a.a)paramAnonymousObject).b();
        a.b(a.this).a(a.a(a.this));
        if (!a.a(a.this, "_onApiBitrateChange")) {
          return null;
        }
        if (!a.d(a.this).a((HashMap)localMap, new String[] { "playhead" })) {
          return null;
        }
      }
      a.a(a.this, localMap);
      if ((localMap.get("_eventData") != null) && ((localMap.get("_eventData") instanceof HashMap))) {}
      for (paramAnonymousObject = (com.adobe.b.a.b)((HashMap)localMap.get("_eventData")).get("callback");; paramAnonymousObject = null)
      {
        paramAnonymousObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a.this), "bitrate_change", ((Double)localMap.get("playhead")).doubleValue(), null, (com.adobe.b.a.b)paramAnonymousObject);
        a.a(a.this, (com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject);
        return null;
      }
    }
  };
  private final com.adobe.b.a.b N = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      for (;;)
      {
        Map localMap;
        synchronized (a.c(a.this))
        {
          localMap = (Map)((com.adobe.b.a.a)paramAnonymousObject).b();
          if ((localMap.get("_eventData") == null) || (!(localMap.get("_eventData") instanceof HashMap))) {
            break label280;
          }
          paramAnonymousObject = (HashMap)localMap.get("_eventData");
          localObject = (com.adobe.b.a.b)((HashMap)paramAnonymousObject).get("callback");
          if (paramAnonymousObject != null)
          {
            com.adobe.b.a.c localc = a.b(a.this);
            String str = a.a(a.this);
            new StringBuilder("#_onApiTrackError(source=").append(((HashMap)paramAnonymousObject).get("source")).append(", err_id=").append(((HashMap)paramAnonymousObject).get("error_id")).append(")");
            localc.a(str);
          }
          if (!a.g(a.this))
          {
            a.b(a.this).c(a.a(a.this));
            return null;
          }
          if ((!a.l(a.this)) && (!((HashMap)paramAnonymousObject).get("source").equals("sourceErrorSDK"))) {
            return null;
          }
        }
        a.a(a.this, localMap);
        Object localObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a.this), "error", 0.0D, null, (com.adobe.b.a.b)localObject);
        ((com.adobe.b.c.a.b.a.d.b.b)localObject).a().b((String)((HashMap)paramAnonymousObject).get("error_id"));
        ((com.adobe.b.c.a.b.a.d.b.b)localObject).a().c((String)((HashMap)paramAnonymousObject).get("source"));
        a.a(a.this, (com.adobe.b.c.a.b.a.d.b.b)localObject);
        return null;
        label280:
        localObject = null;
        paramAnonymousObject = null;
      }
    }
  };
  private final com.adobe.b.a.b O = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      synchronized (a.c(a.this))
      {
        paramAnonymousObject = (Map)((com.adobe.b.a.a)paramAnonymousObject).b();
        Object localObject = a.b(a.this);
        String str = a.a(a.this);
        new StringBuilder("#_onApiTrackInternalError(source=").append(((Map)paramAnonymousObject).get("source")).append(", err_id=").append(((Map)paramAnonymousObject).get("error_id")).append(")");
        ((com.adobe.b.a.c)localObject).a(str);
        a.a(a.this, (Map)paramAnonymousObject);
        localObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a.this), "error", 0.0D, null, null);
        ((com.adobe.b.c.a.b.a.d.b.b)localObject).a().b((String)((Map)paramAnonymousObject).get("error_id"));
        ((com.adobe.b.c.a.b.a.d.b.b)localObject).a().c((String)((Map)paramAnonymousObject).get("source"));
        a.a(a.this, (com.adobe.b.c.a.b.a.d.b.b)localObject);
        return null;
      }
    }
  };
  private final com.adobe.b.a.b P = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      synchronized (a.c(a.this))
      {
        paramAnonymousObject = (Map)((com.adobe.b.a.a)paramAnonymousObject).b();
        com.adobe.b.a.c localc = a.b(a.this);
        String str = a.a(a.this);
        new StringBuilder("#_onApiQuantumEnd(interval=").append(a.a("reporting_interval")).append(")");
        localc.a(str);
        if (!a.a(a.this, "_onApiQuantumEnd")) {
          return null;
        }
        if (!a.d(a.this).a((HashMap)paramAnonymousObject, new String[] { "playhead" })) {
          return null;
        }
      }
      a.m(a.this).a().a(((Double)((Map)paramAnonymousObject).get("playhead")).doubleValue());
      a.a(a.this, (Map)paramAnonymousObject);
      a.m(a.this).d().a(e.a());
      a.m(a.this).d().a(e.b());
      a.m(a.this).d().b(e.c());
      a.m(a.this).d().c(-e.d());
      a.a(a.this, a.m(a.this));
      return null;
    }
  };
  private final com.adobe.b.a.b Q = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      synchronized (a.c(a.this))
      {
        paramAnonymousObject = (Map)((com.adobe.b.a.a)paramAnonymousObject).b();
        a.b(a.this, ((Boolean)((Map)paramAnonymousObject).get("track_external_errors")).booleanValue());
        paramAnonymousObject = a.b(a.this);
        String str = a.a(a.this);
        new StringBuilder("#_onNetworkCheckStatusComplete(track_ext_err=").append(a.l(a.this)).append(")");
        ((com.adobe.b.a.c)paramAnonymousObject).a(str);
        return null;
      }
    }
  };
  public com.adobe.b.a.b.a a;
  public com.adobe.b.c.a.b.a.d.a.c b;
  public i c;
  public j d;
  public g e;
  public com.adobe.b.c.a.b.a.d.a.b f;
  public k g;
  public h h;
  private com.adobe.b.a.c i;
  private String j;
  private b k;
  private com.adobe.b.c.a.b.a.d.b.b l;
  private long m;
  private String n;
  private boolean o;
  private boolean p;
  private boolean q;
  private boolean r;
  private c s;
  private d t;
  private com.adobe.b.c.a.b.a.d.a.a u;
  private boolean v;
  private a w;
  private final com.adobe.b.a.b x = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      Map localMap;
      synchronized (a.c(a.this))
      {
        localMap = (Map)((com.adobe.b.a.a)paramAnonymousObject).b();
        a.b(a.this).a(a.a(a.this));
        if (!a.a(a.this, "_onApiAnalyticsStart")) {
          return null;
        }
        if (!a.d(a.this).a((HashMap)localMap, new String[] { "playhead" })) {
          return null;
        }
      }
      g.a((String)localMap.get("vid"));
      g.b((String)localMap.get("aid"));
      g.c((String)localMap.get("mid"));
      a.a(a.this, localMap);
      if ((localMap.get("_eventData") != null) && ((localMap.get("_eventData") instanceof HashMap))) {}
      for (paramAnonymousObject = (com.adobe.b.a.b)((HashMap)localMap.get("_eventData")).get("callback");; paramAnonymousObject = null)
      {
        paramAnonymousObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a.this), "aa_start", ((Double)localMap.get("playhead")).doubleValue(), null, (com.adobe.b.a.b)paramAnonymousObject);
        ((com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject).b().a(null);
        ((com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject).b().a("main");
        if ((!a.e(a.this)) && (((com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject).b() != null)) {
          ((com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject).b().a(null);
        }
        a.a(a.this, (com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject);
        return null;
      }
    }
  };
  private final com.adobe.b.a.b y = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      Map localMap;
      synchronized (a.c(a.this))
      {
        localMap = (Map)((com.adobe.b.a.a)paramAnonymousObject).b();
        a.b(a.this).a(a.a(a.this));
        if (!a.a(a.this, "_onApiAnalyticsAdStart")) {
          return null;
        }
        if (!a.d(a.this).a((HashMap)localMap, new String[] { "playhead" })) {
          return null;
        }
      }
      a.a(a.this, localMap);
      if ((localMap.get("_eventData") != null) && ((localMap.get("_eventData") instanceof HashMap))) {}
      for (paramAnonymousObject = (com.adobe.b.a.b)((HashMap)localMap.get("_eventData")).get("callback");; paramAnonymousObject = null)
      {
        paramAnonymousObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a.this), "aa_ad_start", ((Double)localMap.get("playhead")).doubleValue(), null, (com.adobe.b.a.b)paramAnonymousObject);
        a.a(a.this, (com.adobe.b.c.a.b.a.d.b.b)paramAnonymousObject);
        return null;
      }
    }
  };
  private final com.adobe.b.a.b z = new com.adobe.b.a.b()
  {
    public final Object call(Object arg1)
    {
      synchronized (a.c(a.this))
      {
        a.b(a.this).a(a.a(a.this));
        a.f(a.this);
        a.a(a.this, true);
        return null;
      }
    }
  };
  
  public a(com.adobe.b.a.b.a parama, com.adobe.b.a.c paramc)
  {
    if (parama == null) {
      throw new Error("Reference to the channel object cannot be NULL.");
    }
    a = parama;
    if (paramc == null) {
      throw new Error("Reference to the logger object cannot be NULL.");
    }
    j = a.class.getSimpleName();
    i = paramc;
    b = null;
    d = null;
    e = null;
    c = null;
    f = new com.adobe.b.c.a.b.a.d.a.b();
    h = new h();
    g = new k();
    r = false;
    p = false;
    q = false;
    n = null;
    o = false;
    s = new c(this, i);
    k = new b(new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (com.adobe.b.c.a)paramAnonymousObject;
        a.b(a.this).a(a.a(a.this), ((com.adobe.b.c.a)paramAnonymousObject).a() + " | " + ((com.adobe.b.c.a)paramAnonymousObject).b());
        a.a(new com.adobe.b.a.a("error", paramAnonymousObject));
        return null;
      }
    });
    t = null;
    u = null;
    v = true;
    w = this;
    a.a("api:aa_start", x, this);
    a.a("api:aa_ad_start", y, this);
    a.a("api:video_load", z, this);
    a.a("api:video_unload", A, this);
    a.a("api:video_start", B, this);
    a.a("api:video_complete", C, this);
    a.a("api:ad_start", I, this);
    a.a("api:ad_complete", J, this);
    a.a("api:play", D, this);
    a.a("api:pause", E, this);
    a.a("api:buffer_start", F, this);
    a.a("api:seek_start", G, this);
    a.a("api:seek_complete", H, this);
    a.a("api:chapter_start", K, this);
    a.a("api:chapter_complete", L, this);
    a.a("api:bitrate_change", M, this);
    a.a("api:track_error", N, this);
    a.a("api:track_internal_error", O, this);
    a.a("api:quantum_end", P, this);
    a.a("net:check_status_complete", Q, this);
    a.b("session_id", new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        if ((c != null) && (c.a() != null)) {
          return c.a();
        }
        return null;
      }
    });
  }
  
  private void a(com.adobe.b.c.a.b.a.d.b.b paramb)
  {
    Object localObject = s.a(paramb);
    if (!ha) {
      ((com.adobe.b.c.a.b.a.d.b.a)localObject).h().c(m);
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("report", localObject);
    a.a(new com.adobe.b.a.a("context:report_available", localHashMap));
    if ((((com.adobe.b.c.a.b.a.d.b.a)localObject).e().a() == "play") || (((com.adobe.b.c.a.b.a.d.b.a)localObject).e().a() == "buffer") || (((com.adobe.b.c.a.b.a.d.b.a)localObject).e().a() == "start"))
    {
      localObject = new HashMap();
      ((Map)localObject).put("reset", Boolean.valueOf(true));
      a.a("clock:reporting.resume", localObject);
    }
    if (paramb.a().a().equalsIgnoreCase("api:aa_start")) {
      r = true;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */