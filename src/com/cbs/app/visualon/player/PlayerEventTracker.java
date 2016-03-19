package com.cbs.app.visualon.player;

import android.content.Context;
import android.text.format.DateUtils;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.analytics.impl.ComScoreService;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.syncbak.SyncbakChannel;
import com.cbs.app.view.utils.VideoUtil;
import java.util.HashMap;

public class PlayerEventTracker
{
  private static final String a = PlayerEventTracker.class.getSimpleName();
  
  private static HashMap<String, Object> a(VideoData paramVideoData, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("events", "event19");
    String str1 = paramVideoData.getEpisodeNum();
    String str2 = paramVideoData.getTitle();
    String str3 = paramVideoData.getCid();
    String str4 = paramVideoData.getPid();
    localHashMap.put("rsid", "cbsicbsapp");
    String str5 = Long.valueOf(paramVideoData.getCbsShowId()).toString();
    if (str5 != null) {
      localHashMap.put("showId", str5);
    }
    str5 = paramVideoData.getSeriesTitle();
    if (str5 != null) {
      localHashMap.put("showTitle", str5);
    }
    if (str1 != null) {
      localHashMap.put("EpisodeId", str1);
    }
    if (str2 != null) {
      localHashMap.put("EpisodeTitle", str2);
    }
    if (str3 != null) {
      localHashMap.put("CID", str3);
    }
    if (str4 != null) {
      localHashMap.put("PID", str4);
    }
    localHashMap.put("showName", paramVideoData.getSeriesTitle());
    localHashMap.put("episodeName", VideoUtil.b(paramVideoData));
    localHashMap.put("contentId", paramVideoData.getCid());
    localHashMap.put("userType", paramString);
    return localHashMap;
  }
  
  public static void a() {}
  
  public static void a(Context paramContext)
  {
    ComScoreService.d();
    ComScoreService.f();
  }
  
  public static void a(Context paramContext, VideoData paramVideoData, long paramLong1, long paramLong2, String paramString)
  {
    paramVideoData = a(paramVideoData, paramString);
    paramVideoData.put("VideoTime", DateUtils.formatElapsedTime((paramLong2 - paramLong1) / 1000L));
    AnalyticsManager.b(paramContext, Action.bw, paramVideoData);
  }
  
  public static void a(Context paramContext, VideoData paramVideoData, String paramString)
  {
    paramString = a(paramVideoData, paramString);
    AnalyticsManager.b(paramContext, Action.bv, paramString);
    if (paramVideoData.getFullEpisode()) {
      AnalyticsManager.b(paramContext, Action.bB, paramString);
    }
    for (;;)
    {
      ComScoreService.g();
      return;
      AnalyticsManager.b(paramContext, Action.bE, paramString);
    }
  }
  
  public static void a(Context paramContext, SyncbakChannel paramSyncbakChannel, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("events", "event19");
    localHashMap.put("CHANNEL", paramSyncbakChannel.getName());
    localHashMap.put("live_tv_stream_start", Integer.valueOf(1));
    localHashMap.put("URL", paramString);
    AnalyticsManager.b(paramContext, Action.bv, localHashMap);
    ComScoreService.g();
  }
  
  public static void a(Context paramContext, SyncbakChannel paramSyncbakChannel, String paramString1, long paramLong1, long paramLong2, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("events", "event19");
    localHashMap.put("CHANNEL", paramSyncbakChannel.getName());
    localHashMap.put("URL", paramString1);
    localHashMap.put("VideoTime", DateUtils.formatElapsedTime((paramLong2 - paramLong1) / 1000L));
    localHashMap.put("userType", paramString2);
    AnalyticsManager.b(paramContext, Action.bw, localHashMap);
  }
  
  public static void a(Context paramContext, String paramString)
  {
    HashMap localHashMap = new HashMap(3);
    localHashMap.put("ADID", paramString);
    localHashMap.put("events", "event19");
    AnalyticsManager.b(paramContext, Action.by, localHashMap);
    ComScoreService.e();
  }
  
  public static void a(Context paramContext, String paramString1, long paramLong1, long paramLong2, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("events", "event19");
    localHashMap.put("PID", paramString1);
    localHashMap.put("VideoTime", DateUtils.formatElapsedTime((paramLong2 - paramLong1) / 1000L));
    localHashMap.put("userType", paramString2);
    AnalyticsManager.b(paramContext, Action.bw, localHashMap);
  }
  
  public static void a(VideoData paramVideoData)
  {
    ComScoreService.a(paramVideoData);
  }
  
  public static void a(SyncbakChannel paramSyncbakChannel)
  {
    ComScoreService.a(paramSyncbakChannel);
  }
  
  public static void b() {}
  
  public static void b(Context paramContext, VideoData paramVideoData, String paramString)
  {
    paramString = a(paramVideoData, paramString);
    AnalyticsManager.b(paramContext, Action.bx, paramString);
    if (paramVideoData.getFullEpisode())
    {
      AnalyticsManager.b(paramContext, Action.as, paramString);
      return;
    }
    AnalyticsManager.b(paramContext, Action.aq, paramString);
  }
  
  public static void b(Context paramContext, SyncbakChannel paramSyncbakChannel, String paramString)
  {
    HashMap localHashMap = new HashMap(4);
    localHashMap.put("events", "event19");
    localHashMap.put("CHANNEL", paramSyncbakChannel.getName());
    localHashMap.put("URL", paramString);
    AnalyticsManager.b(paramContext, Action.bx, localHashMap);
  }
  
  public static void b(Context paramContext, String paramString)
  {
    HashMap localHashMap = new HashMap(3);
    localHashMap.put("ADID", paramString);
    localHashMap.put("events", "event19");
    AnalyticsManager.b(paramContext, Action.bA, localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.PlayerEventTracker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */