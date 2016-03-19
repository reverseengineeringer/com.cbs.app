package com.adobe.b.c.a.a;

import com.adobe.b.a.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class a$16
  implements com.adobe.b.a.b
{
  a$16(a parama) {}
  
  public final Object call(Object paramObject)
  {
    HashMap localHashMap = (HashMap)paramObject;
    String str1 = com.adobe.b.b.a.a((String)localHashMap.get("videoId")) + "_" + localHashMap.get("podPosition");
    paramObject = a.o(a);
    Object localObject1 = a.n(a);
    new StringBuilder("#_executeOpenAd(id=").append(localHashMap.get("adId")).append(", length=").append(localHashMap.get("adLength")).append(", podPlayerName=").append(localHashMap.get("podPlayerName")).append(", parentId=").append(localHashMap.get("videoId")).append(", podId=").append(str1).append(", parentPodPosition=").append(localHashMap.get("adPosition")).append(", podSecond=").append(localHashMap.get("podSecond")).append(")");
    ((c)paramObject).a((String)localObject1);
    if (!a.c()) {}
    while (!a.l(a).a(localHashMap, new String[] { "videoId", "streamType", "playerName", "adId", "adLength", "podPlayerName", "adPosition" })) {
      return null;
    }
    if (!(localHashMap.get("podSecond") instanceof Double)) {}
    Object localObject2;
    Object localObject3;
    for (paramObject = localHashMap.get("playhead");; paramObject = localHashMap.get("podSecond"))
    {
      localHashMap.put("podSecond", paramObject);
      localObject2 = (HashMap)localHashMap.get("metaVideo");
      paramObject = (HashMap)localHashMap.get("metaAd");
      localObject1 = new HashMap();
      if (localObject2 == null) {
        break;
      }
      localObject3 = ((HashMap)localObject2).keySet().iterator();
      while (((Iterator)localObject3).hasNext())
      {
        String str2 = (String)((Iterator)localObject3).next();
        ((HashMap)localObject1).put(str2, ((HashMap)localObject2).get(str2));
        a.m(a).add(str2);
      }
    }
    if (paramObject != null)
    {
      localObject2 = ((HashMap)paramObject).keySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (String)((Iterator)localObject2).next();
        ((HashMap)localObject1).put(localObject3, ((HashMap)paramObject).get(localObject3));
        a.m(a).add(localObject3);
      }
    }
    ((HashMap)localObject1).put("a.contentType", localHashMap.get("streamType"));
    ((HashMap)localObject1).put("a.media.name", localHashMap.get("videoId"));
    ((HashMap)localObject1).put("a.media.playerName", localHashMap.get("playerName"));
    if (localHashMap.get("channel") != null) {
      paramObject = localHashMap.get("channel");
    }
    for (;;)
    {
      ((HashMap)localObject1).put("a.media.channel", paramObject);
      ((HashMap)localObject1).put("a.media.ad.name", localHashMap.get("adId"));
      if (localHashMap.get("adName") != null)
      {
        paramObject = localHashMap.get("adName");
        label533:
        ((HashMap)localObject1).put("a.media.ad.friendlyName", paramObject);
        if (localHashMap.get("podName") == null) {
          break label739;
        }
        paramObject = localHashMap.get("podName");
        label557:
        ((HashMap)localObject1).put("a.media.ad.podFriendlyName", paramObject);
        if (((Double)localHashMap.get("adLength")).longValue() != 0L) {
          break label745;
        }
        paramObject = "0.0";
        label585:
        ((HashMap)localObject1).put("a.media.ad.length", paramObject);
        ((HashMap)localObject1).put("a.media.ad.playerName", localHashMap.get("podPlayerName"));
        ((HashMap)localObject1).put("a.media.ad.pod", str1);
        if (localHashMap.get("adPosition") != null) {
          break label764;
        }
        paramObject = "0.0";
        label627:
        ((HashMap)localObject1).put("a.media.ad.podPosition", paramObject);
        if (((Double)localHashMap.get("podSecond")).longValue() != 0L) {
          break label777;
        }
        paramObject = "0.0";
        label655:
        ((HashMap)localObject1).put("a.media.ad.podSecond", paramObject);
        ((HashMap)localObject1).put("a.media.ad.view", "true");
        ((HashMap)localObject1).put("&&pev3", "videoAd");
        if (!((Boolean)localHashMap.get("isPrimetime")).booleanValue()) {
          break label796;
        }
        paramObject = "mspa_s";
        ((HashMap)localObject1).put("&&pe", paramObject);
        com.adobe.mobile.b.a((Map)localObject1);
      }
      try
      {
        Thread.sleep(0L);
        a.c(a, "sc_ad_start", localHashMap);
        return null;
        paramObject = "";
        continue;
        paramObject = "";
        break label533;
        label739:
        paramObject = "";
        break label557;
        label745:
        paramObject = Long.valueOf(((Double)localHashMap.get("adLength")).longValue());
        break label585;
        label764:
        paramObject = (Long)localHashMap.get("adPosition");
        break label627;
        label777:
        paramObject = Long.valueOf(((Double)localHashMap.get("podSecond")).longValue());
        break label655;
        label796:
        paramObject = "msa_s";
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
 * Qualified Name:     com.adobe.b.c.a.a.a.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */