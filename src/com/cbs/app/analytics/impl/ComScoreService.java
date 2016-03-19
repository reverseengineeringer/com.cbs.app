package com.cbs.app.analytics.impl;

import android.app.Application;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.syncbak.SyncbakChannel;
import com.cbs.app.view.utils.Util;
import com.comscore.a.k;
import com.comscore.streaming.a;
import com.comscore.streaming.b;
import com.comscore.streaming.h;
import java.util.HashMap;

public final class ComScoreService
{
  private static final String a = ComScoreService.class.getSimpleName();
  private static h b;
  
  public static void a()
  {
    k.c();
    k.e();
  }
  
  public static void a(Application paramApplication)
  {
    k.a(paramApplication.getApplicationContext());
    k.b("CBS.com Android");
  }
  
  public static void a(VideoData paramVideoData)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("ns_st_ci", paramVideoData.getCid());
    localHashMap.put("c2", "3002231");
    localHashMap.put("c3", "3000023");
    localHashMap.put("ns_st_pr", paramVideoData.getSeriesTitle());
    localHashMap.put("c4", "CBS.com Android");
    Object localObject;
    if (paramVideoData.getFullEpisode())
    {
      localObject = "vc12";
      localHashMap.put("ns_st_ct", localObject);
      localHashMap.put("ns_st_st", "CBS");
      localHashMap.put("ns_st_cl", Long.valueOf(paramVideoData.getDuration() * 1000L).toString());
      localHashMap.put("ns_st_ge", paramVideoData.getGenre());
      localHashMap.put("ns_st_pu", "CBS.com");
      if (!paramVideoData.getFullEpisode()) {
        break label286;
      }
      localObject = Util.b(paramVideoData);
      if (((String)localObject).isEmpty()) {
        break label286;
      }
      localHashMap.put("ns_st_ep", localObject);
    }
    for (;;)
    {
      String str1 = Integer.valueOf(paramVideoData.getSeasonNum()).toString();
      String str2 = paramVideoData.getEpisodeNum();
      if ((str1 != null) && (!str1.isEmpty()) && (!str1.equals("0"))) {
        localHashMap.put("ns_st_sn", str1);
      }
      if ((str2 != null) && (!str2.isEmpty())) {
        localHashMap.put("ns_st_en", str2);
      }
      localHashMap.put("c6", paramVideoData.getSeriesTitle() + (String)localObject);
      localObject = new h();
      if (paramVideoData.getFullEpisode())
      {
        ((h)localObject).a(localHashMap, b.a);
        return;
        localObject = "vc11";
        break;
      }
      ((h)localObject).a(localHashMap, b.b);
      return;
      label286:
      localObject = "";
    }
  }
  
  public static void a(SyncbakChannel paramSyncbakChannel)
  {
    Object localObject = "LiveTV-" + paramSyncbakChannel.getName();
    paramSyncbakChannel = new HashMap();
    paramSyncbakChannel.put("ns_st_ci", localObject);
    paramSyncbakChannel.put("ns_st_pu", "CBS.com");
    paramSyncbakChannel.put("ns_st_st", "CBS");
    paramSyncbakChannel.put("c2", "3002231");
    paramSyncbakChannel.put("c3", "3000023");
    paramSyncbakChannel.put("ns_st_ct", "vc13");
    paramSyncbakChannel.put("c4", "CBS.com Android");
    paramSyncbakChannel.put("c6", localObject);
    paramSyncbakChannel.put("ns_st_cl", "0");
    localObject = new h();
    b = (h)localObject;
    ((h)localObject).a(paramSyncbakChannel, b.c);
  }
  
  public static void b() {}
  
  public static void c() {}
  
  public static void d()
  {
    if (b != null)
    {
      b.a();
      b = null;
    }
  }
  
  public static void e()
  {
    new h().a(a.e);
  }
  
  public static void f() {}
  
  public static void g() {}
}

/* Location:
 * Qualified Name:     com.cbs.app.analytics.impl.ComScoreService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */