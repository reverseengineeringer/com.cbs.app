package com.adobe.b.c.a.a;

import com.adobe.b.a.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class a$15
  implements com.adobe.b.a.b
{
  a$15(a parama) {}
  
  public final Object call(Object paramObject)
  {
    HashMap localHashMap = (HashMap)paramObject;
    paramObject = a.k(a);
    Object localObject = a.j(a);
    new StringBuilder("#_executeOpen(id=").append(localHashMap.get("videoId")).append(", videoName=").append(localHashMap.get("videoName")).append(", length=").append(localHashMap.get("videoLength")).append(", playerName=").append(localHashMap.get("playerName")).append(", channel=").append(localHashMap.get("channel")).append(", isPrimetime=").append(localHashMap.get("isPrimetime")).append(")");
    ((c)paramObject).a((String)localObject);
    if (!a.c()) {}
    while (!a.l(a).a(localHashMap, new String[] { "videoId", "streamType", "videoLength", "playerName" })) {
      return null;
    }
    paramObject = (HashMap)localHashMap.get("metaVideo");
    localObject = new HashMap();
    if (paramObject != null)
    {
      Iterator localIterator = ((HashMap)paramObject).keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        ((HashMap)localObject).put(str, ((HashMap)paramObject).get(str));
        a.m(a).add(str);
      }
    }
    ((HashMap)localObject).put("a.contentType", localHashMap.get("streamType"));
    ((HashMap)localObject).put("a.media.name", localHashMap.get("videoId"));
    if (localHashMap.get("videoName") != null) {
      paramObject = localHashMap.get("videoName");
    }
    for (;;)
    {
      ((HashMap)localObject).put("a.media.friendlyName", paramObject);
      if (localHashMap.get("videoLength") == null)
      {
        paramObject = "0.0";
        label318:
        ((HashMap)localObject).put("a.media.length", paramObject);
        ((HashMap)localObject).put("a.media.playerName", localHashMap.get("playerName"));
        if (localHashMap.get("channel") == null) {
          break label452;
        }
        paramObject = localHashMap.get("channel");
        label355:
        ((HashMap)localObject).put("a.media.channel", paramObject);
        ((HashMap)localObject).put("a.media.view", "true");
        ((HashMap)localObject).put("&&pev3", "video");
        if (!((Boolean)localHashMap.get("isPrimetime")).booleanValue()) {
          break label458;
        }
        paramObject = "msp_s";
        ((HashMap)localObject).put("&&pe", paramObject);
        com.adobe.mobile.b.a((Map)localObject);
      }
      try
      {
        Thread.sleep(0L);
        a.b(a, "aa_start", localHashMap);
        return null;
        paramObject = "";
        continue;
        paramObject = Long.valueOf(((Double)localHashMap.get("videoLength")).longValue());
        break label318;
        label452:
        paramObject = "";
        break label355;
        label458:
        paramObject = "ms_s";
      }
      catch (InterruptedException paramObject)
      {
        for (;;)
        {
          ((InterruptedException)paramObject).printStackTrace();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.a.a.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */