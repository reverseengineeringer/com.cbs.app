package com.cbs.app.uri;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.livetv.fragment.LiveTvFragment;
import com.cbs.app.service.AuthService;
import com.cbs.app.service.AuthServiceImpl;
import com.cbs.app.service.HomeService;
import com.cbs.app.service.HomeServiceImpl;
import com.cbs.app.service.ShowService;
import com.cbs.app.service.ShowServiceImpl;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.fragments.HomeFragment;
import com.cbs.app.view.fragments.ShowFragmentV2;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.AuthEndpointResponse;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class UriHandler
{
  private static final String a = UriHandler.class.getSimpleName();
  private static String b = null;
  
  public static String a(Context paramContext)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramContext != null)
    {
      paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext);
      localObject1 = localObject2;
      if (System.currentTimeMillis() - paramContext.getLong("outside_campaign_last_time", 0L) < 259200000L) {
        localObject1 = paramContext.getString("outside_campaign", null);
      }
    }
    return (String)localObject1;
  }
  
  private static void a(Context paramContext, Fragment paramFragment, String paramString)
  {
    if ((paramContext instanceof NavigationActivity)) {
      ((NavigationActivity)paramContext).a(paramFragment, paramString);
    }
  }
  
  private static void a(Context paramContext, ShowItem paramShowItem, String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    ShowFragmentV2 localShowFragmentV2 = new ShowFragmentV2();
    localShowFragmentV2.setShowItem(paramShowItem);
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("isClassic", category.equals("Classic"));
    if (paramString != null) {
      localBundle.putString("selectedVideoId", paramString);
    }
    for (;;)
    {
      localShowFragmentV2.setArguments(localBundle);
      a(paramContext, localShowFragmentV2, "fragment_show_home");
      return;
      if (paramBoolean3) {
        localBundle.putBoolean("showCast", true);
      } else if (paramBoolean1) {
        localBundle.putBoolean("showPhotos", true);
      } else if (paramBoolean2) {
        localBundle.putBoolean("tvPlus", true);
      }
    }
  }
  
  public static boolean a(Context paramContext, Uri paramUri)
  {
    boolean bool3 = false;
    boolean bool2 = false;
    boolean bool5 = true;
    boolean bool6 = true;
    boolean bool4 = true;
    boolean bool1 = bool2;
    String str;
    Object localObject2;
    if (paramContext != null)
    {
      bool1 = bool2;
      if (paramUri != null)
      {
        new StringBuilder("deep link: ").append(paramUri.toString());
        localObject1 = paramUri.getScheme();
        if ((localObject1 == null) || (!((String)localObject1).equalsIgnoreCase("cbs"))) {
          break label610;
        }
        str = paramUri.getQueryParameter("campaign");
        Preferences.a(paramContext, true);
        localObject1 = paramUri.getPath();
        if (localObject1 == null) {
          break label1520;
        }
        localObject2 = ((String)localObject1).split("/");
        if (localObject2.length <= 0) {
          break label1520;
        }
        localObject1 = localObject2;
        if (localObject2.length <= 2) {}
      }
    }
    label250:
    label556:
    label610:
    label1486:
    label1491:
    label1496:
    label1501:
    label1515:
    label1520:
    for (Object localObject1 = (String[])Arrays.copyOfRange((Object[])localObject2, 3, localObject2.length);; localObject1 = null)
    {
      if ((localObject1 != null) && (localObject1.length > 0))
      {
        localObject2 = localObject1[0];
        if (localObject2 != null)
        {
          if ((((String)localObject2).equals("connect")) && (localObject1.length > 1))
          {
            if ((localObject1[1].equals("shows")) && (localObject1.length > 2)) {}
            for (paramUri = localObject1[2];; paramUri = null)
            {
              bool1 = a(paramContext, paramUri);
              b = str;
              if (paramContext != null)
              {
                paramUri = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
                long l = System.currentTimeMillis();
                paramUri.putString("outside_campaign", str);
                paramUri.putLong("outside_campaign_last_time", l);
                paramUri.commit();
              }
              Preferences.b(paramContext, null);
              return bool1;
            }
          }
          if ((((String)localObject2).equals("shows")) && (localObject1.length > 1))
          {
            localObject2 = localObject1[1];
            if (localObject1.length <= 2) {
              break label1501;
            }
            paramUri = localObject1[2];
            if (paramUri.equals("video"))
            {
              if (localObject1.length <= 3) {
                break label1515;
              }
              new StringBuilder("path[3]:").append(localObject1[3]);
            }
          }
        }
      }
      for (paramUri = localObject1[3];; paramUri = null)
      {
        if (paramUri != null) {}
        for (;;)
        {
          if (Preferences.c(paramContext)) {
            paramUri = null;
          }
          bool1 = false;
          bool2 = false;
          for (;;)
          {
            bool1 = a(paramContext, (String)localObject2, paramUri, bool3, bool1, bool2);
            break;
            if (paramUri.equals("photos"))
            {
              paramUri = null;
              bool1 = false;
              bool2 = false;
              bool3 = true;
            }
            else if ((paramUri.equals("connect")) || (paramUri.equals("Live Feeds")))
            {
              paramUri = null;
              bool1 = true;
              bool2 = false;
            }
            else
            {
              if (paramUri.equals("cast"))
              {
                paramUri = null;
                bool1 = false;
                bool2 = true;
                continue;
                if (((String)localObject2).equals("live-tv"))
                {
                  if (paramContext == null) {
                    break label556;
                  }
                  new LiveTvFragment();
                  a(paramContext, LiveTvFragment.b(), "fragment_live_tv");
                  bool1 = bool4;
                  break;
                }
                if (((String)localObject2).equals("all-access"))
                {
                  if ((paramContext == null) || (VideoUtil.a())) {
                    break label556;
                  }
                  SVODPopupHelper.setWeWantToSeeVideo(null);
                  SVODPopupHelper.setWeWantToSeeShow(null);
                  SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(true);
                  SVODPopupHelper.c(paramContext);
                  bool1 = bool4;
                  break;
                }
                localObject1 = Action.bt;
                localObject2 = new HashMap();
                ((HashMap)localObject2).put("events", "event19");
                ((HashMap)localObject2).put("url", paramUri);
                AnalyticsManager.a(paramContext, (Action)localObject1, (HashMap)localObject2);
                bool1 = false;
                break;
                localObject1 = Action.bt;
                localObject2 = new HashMap();
                ((HashMap)localObject2).put("events", "event19");
                ((HashMap)localObject2).put("url", paramUri);
                AnalyticsManager.a(paramContext, (Action)localObject1, (HashMap)localObject2);
                bool1 = false;
                break;
                if ((localObject1 != null) && (((String)localObject1).equals("cbs-svod")))
                {
                  Preferences.a(paramContext, true);
                  localObject1 = paramUri.getHost();
                  if ((localObject1 != null) && (((String)localObject1).equals("done")))
                  {
                    localObject1 = paramUri.getQueryParameter("token");
                    if (localObject1 != null)
                    {
                      localObject2 = new ResponseModelListener()
                      {
                        public final void a()
                        {
                          UriHandler.a();
                        }
                        
                        public final void a(ResponseModel paramAnonymousResponseModel)
                        {
                          UriHandler.a();
                          if ((paramAnonymousResponseModel instanceof AuthEndpointResponse))
                          {
                            if (((AuthEndpointResponse)paramAnonymousResponseModel).isSuccess())
                            {
                              UriHandler.a();
                              new AuthServiceImpl().b(a);
                              AccountUIHelper.a(a, false, null, null);
                            }
                          }
                          else {
                            return;
                          }
                          UriHandler.a();
                        }
                      };
                      new AuthServiceImpl().b(paramContext, (String)localObject1, (ResponseModelListener)localObject2);
                    }
                    localObject2 = paramUri.getQueryParameter("showId");
                    localObject1 = paramUri.getQueryParameter("cid");
                    str = paramUri.getQueryParameter("demoContentId");
                    paramUri = paramUri.getQueryParameter("page");
                    if (paramUri != null)
                    {
                      if (paramUri.equals("livetv"))
                      {
                        if (paramContext != null)
                        {
                          new LiveTvFragment();
                          a(paramContext, LiveTvFragment.b(), "fragment_live_tv");
                        }
                        bool1 = true;
                        break label250;
                      }
                      if (paramUri.equals("home"))
                      {
                        if ((paramContext != null) && ((paramContext instanceof NavigationActivity))) {
                          ((NavigationActivity)paramContext).k();
                        }
                        bool1 = true;
                        break label250;
                      }
                      if (paramUri.equals("svod-login"))
                      {
                        bool1 = bool2;
                        if (paramContext == null) {
                          break label250;
                        }
                        SVODPopupHelper.setWeWantToSeeVideo(null);
                        SVODPopupHelper.setWeWantToSeeShow(null);
                        SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(true);
                        AccountUIHelper.setFrom("");
                        AccountUIHelper.b(paramContext, "CBS ALL ACCESS Sign In");
                        bool1 = bool2;
                        break label250;
                      }
                      bool1 = bool2;
                      if (!paramUri.equals("show")) {
                        break label250;
                      }
                      bool1 = bool2;
                      if (localObject2 == null) {
                        break label250;
                      }
                      paramUri = ShowServiceManager.a(Long.parseLong((String)localObject2));
                      if (paramUri == null) {
                        break label1496;
                      }
                      a(paramContext, paramUri, null, false, false, false);
                    }
                  }
                }
                for (bool1 = bool5;; bool1 = false)
                {
                  break;
                  if ((localObject2 != null) && (localObject1 != null))
                  {
                    paramUri = ShowServiceManager.a(Long.valueOf((String)localObject2).longValue());
                    if (paramUri == null) {
                      break label1491;
                    }
                    a(paramContext, paramUri, (String)localObject1, false, false, false);
                  }
                  for (bool1 = bool6;; bool1 = false)
                  {
                    break;
                    bool1 = bool2;
                    if (str == null) {
                      break;
                    }
                    new ShowServiceImpl().g(paramContext, str, new ResponseModelListener()
                    {
                      public final void a() {}
                      
                      public final void a(ResponseModel paramAnonymousResponseModel)
                      {
                        if ((paramAnonymousResponseModel instanceof VideoEndpointResponse))
                        {
                          paramAnonymousResponseModel = ((VideoEndpointResponse)paramAnonymousResponseModel).getItemList();
                          if ((paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0))
                          {
                            paramAnonymousResponseModel = (VideoData)paramAnonymousResponseModel.get(0);
                            VideoUtil.a(a, paramAnonymousResponseModel);
                          }
                        }
                      }
                    });
                    bool1 = bool2;
                    break;
                    if ((localObject1 != null) && (((String)localObject1).equals("svod-login")))
                    {
                      bool1 = bool2;
                      if (paramContext == null) {
                        break;
                      }
                      SVODPopupHelper.setWeWantToSeeVideo(null);
                      SVODPopupHelper.setWeWantToSeeShow(null);
                      SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(true);
                      AccountUIHelper.setFrom("");
                      AccountUIHelper.b(paramContext, "CBS ALL ACCESS Sign In");
                      bool1 = bool2;
                      break;
                    }
                    if ((localObject1 != null) && (((String)localObject1).equals("livetv")))
                    {
                      if (paramContext != null)
                      {
                        new LiveTvFragment();
                        a(paramContext, LiveTvFragment.b(), "fragment_live_tv");
                      }
                      bool1 = true;
                      break;
                    }
                    if ((localObject1 != null) && (((String)localObject1).equals("home")))
                    {
                      if (paramContext != null)
                      {
                        paramUri = new HomeFragment();
                        localObject1 = new HomeServiceImpl().getHomePhotoData();
                        localObject2 = new Bundle();
                        ((Bundle)localObject2).putParcelableArray("homeMarquee", (Parcelable[])localObject1);
                        paramUri.setArguments((Bundle)localObject2);
                        a(paramContext, paramUri, "fragment_cbs_home");
                      }
                      bool1 = true;
                      break;
                    }
                    if ((localObject1 != null) && (((String)localObject1).equals("showhome"))) {
                      if (paramContext != null)
                      {
                        localObject1 = paramUri.getPath().split("/");
                        if (localObject1.length > 0)
                        {
                          localObject2 = localObject1[1];
                          if (localObject1.length <= 1) {
                            break label1486;
                          }
                        }
                      }
                    }
                    for (paramUri = localObject1[2];; paramUri = null)
                    {
                      if (localObject1.length > 2) {}
                      for (bool1 = Boolean.valueOf(localObject1[3]).booleanValue();; bool1 = false)
                      {
                        new StringBuilder("vals:").append((String)localObject2).append(paramUri).append(bool1);
                        a(paramContext, (String)localObject2, paramUri, bool1, false, false);
                        bool1 = true;
                        break;
                        bool1 = bool2;
                        if (localObject1 == null) {
                          break;
                        }
                        bool1 = bool2;
                        if (!((String)localObject1).equals("tos")) {
                          break;
                        }
                        paramUri = paramUri.getPath();
                        bool1 = bool2;
                        if (paramUri == null) {
                          break;
                        }
                        if (paramUri.contains("video"))
                        {
                          paramUri = new Intent("android.intent.action.VIEW", Uri.parse("https://cbsi.secure.force.com/CBSi/articles/FAQ/mThird-Party-Social-Networking-Services?template=template_mobilepp&referer=mobilepp.com&data=&cfs=default"));
                          bool1 = bool2;
                          if (!Util.a(paramContext, paramUri)) {
                            break;
                          }
                          paramContext.startActivity(paramUri);
                          bool1 = bool2;
                          break;
                        }
                        if (paramUri.contains("terms"))
                        {
                          paramUri = new Intent("android.intent.action.VIEW", Uri.parse("https://cbsi.secure.force.com/CBSi/articles/FAQ/CBSi-Terms-of-Use?template=template_tougl&referer=tougl.com&data=&cfs=default"));
                          bool1 = bool2;
                          if (!Util.a(paramContext, paramUri)) {
                            break;
                          }
                          paramContext.startActivity(paramUri);
                          bool1 = bool2;
                          break;
                        }
                        bool1 = bool2;
                        if (!paramUri.contains("privacy")) {
                          break;
                        }
                        paramUri = new Intent("android.intent.action.VIEW", Uri.parse("https://cbsi.secure.force.com/CBSi/articles/FAQ/Privacy-Policy?categories=CBS_Interactive%3AmPrivacy&template=template_mobilePrivacy&referer=mobileprivacy.com&data=&cfs=default"));
                        bool1 = bool2;
                        if (!Util.a(paramContext, paramUri)) {
                          break;
                        }
                        paramContext.startActivity(paramUri);
                        bool1 = bool2;
                        break;
                        paramUri = Action.bt;
                        localObject1 = new HashMap();
                        ((HashMap)localObject1).put("events", "event19");
                        ((HashMap)localObject1).put("error", "true");
                        AnalyticsManager.a(paramContext, paramUri, (HashMap)localObject1);
                        bool1 = bool2;
                        break;
                      }
                    }
                  }
                }
              }
              paramUri = null;
              bool1 = false;
              bool2 = false;
            }
          }
          paramUri = null;
        }
      }
    }
  }
  
  private static boolean a(Context paramContext, String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramString != null) {}
    try
    {
      long l = Long.parseLong(paramString);
      localObject1 = Long.valueOf(l);
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        Object localObject1;
        HashMap localHashMap;
        localNumberFormatException.printStackTrace();
        Object localObject2 = null;
      }
    }
    bool1 = bool2;
    if (localObject1 != null)
    {
      localObject1 = ShowServiceManager.a(((Long)localObject1).longValue());
      bool1 = bool2;
      if (paramString != null)
      {
        a(paramContext, (ShowItem)localObject1, null, false, true, false);
        paramString = Action.bt;
        localHashMap = new HashMap();
        localHashMap.put("events", "event19");
        localHashMap.put("Connect", "true");
        localHashMap.put("ShowTitle", title);
        localHashMap.put("showId", Long.valueOf(showId));
        localObject1 = "cbscom:" + showId + "|" + title;
        localHashMap.put("evar_63", localObject1);
        localHashMap.put("prop_63", localObject1);
        AnalyticsManager.a(paramContext, paramString, localHashMap);
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private static boolean a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramString1 != null)
    {
      long l = Long.valueOf(b(paramContext, paramString1)).longValue();
      if (l != 0L)
      {
        ShowItem localShowItem = ShowServiceManager.a(l);
        if (localShowItem != null)
        {
          new StringBuilder("showItem: ").append(id);
          a(paramContext, localShowItem, paramString2, paramBoolean1, paramBoolean2, paramBoolean3);
          Action localAction = Action.bt;
          HashMap localHashMap = new HashMap();
          localHashMap.put("appState", "cbscom:Splash Page");
          localHashMap.put("events", "event19");
          localHashMap.put("ShowTitle", title);
          localHashMap.put("showId", Long.valueOf(showId));
          if (paramBoolean2)
          {
            localHashMap.put("TvPlus", "true");
            if (!paramBoolean1) {
              break label291;
            }
            localHashMap.put("Photos", "true");
            label169:
            if (!paramBoolean3) {
              break label306;
            }
            localHashMap.put("showCast", Boolean.valueOf(true));
          }
          for (;;)
          {
            if (paramString2 != null) {
              localHashMap.put("cid", paramString2);
            }
            localHashMap.put("seoTitle", paramString1);
            paramString1 = "cbscom:" + showId + "|" + title;
            localHashMap.put("evar_63", paramString1);
            localHashMap.put("prop_63", paramString1);
            AnalyticsManager.a(paramContext, localAction, localHashMap);
            return true;
            localHashMap.put("TvPlus", "false");
            break;
            label291:
            localHashMap.put("Photos", "false");
            break label169;
            label306:
            localHashMap.put("showCast", Boolean.valueOf(false));
          }
        }
      }
    }
    return false;
  }
  
  private static long b(Context paramContext, String paramString)
  {
    paramContext = new GetShowIdAsyncTask(paramContext);
    paramContext.execute(new String[] { paramString });
    try
    {
      paramContext = (Long)paramContext.get(6000L, TimeUnit.MILLISECONDS);
      if (paramContext != null) {
        return paramContext.longValue();
      }
    }
    catch (InterruptedException paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
        paramContext = null;
      }
    }
    catch (TimeoutException paramContext)
    {
      for (;;)
      {
        paramContext = null;
      }
    }
    catch (ExecutionException paramContext)
    {
      for (;;) {}
    }
    return 0L;
  }
  
  public static String getTrackThroughCampaign()
  {
    return b;
  }
  
  public static void setTrackThroughCampaign(String paramString)
  {
    b = paramString;
  }
  
  public static class GetShowIdAsyncTask
    extends AsyncTask<String, Void, Long>
  {
    private Context a = null;
    
    public GetShowIdAsyncTask(Context paramContext)
    {
      a = paramContext;
    }
    
    /* Error */
    private Long a(String... arg1)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore 5
      //   3: aconst_null
      //   4: astore 6
      //   6: aload_0
      //   7: getfield 17	com/cbs/app/uri/UriHandler$GetShowIdAsyncTask:a	Landroid/content/Context;
      //   10: ifnull +311 -> 321
      //   13: aload_1
      //   14: ifnull +307 -> 321
      //   17: aload_1
      //   18: arraylength
      //   19: ifle +302 -> 321
      //   22: aload_1
      //   23: iconst_0
      //   24: aaload
      //   25: astore_1
      //   26: aload_0
      //   27: getfield 17	com/cbs/app/uri/UriHandler$GetShowIdAsyncTask:a	Landroid/content/Context;
      //   30: invokestatic 31	com/cbs/app/view/utils/Util:B	(Landroid/content/Context;)Ljava/lang/String;
      //   33: astore 7
      //   35: aload 7
      //   37: ifnull +284 -> 321
      //   40: new 33	java/net/URL
      //   43: dup
      //   44: aload 7
      //   46: invokespecial 36	java/net/URL:<init>	(Ljava/lang/String;)V
      //   49: invokevirtual 40	java/net/URL:getHost	()Ljava/lang/String;
      //   52: astore 7
      //   54: new 33	java/net/URL
      //   57: dup
      //   58: new 42	java/lang/StringBuilder
      //   61: dup
      //   62: ldc 44
      //   64: invokespecial 45	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   67: aload 7
      //   69: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   72: ldc 51
      //   74: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   77: aload_1
      //   78: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   81: ldc 53
      //   83: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   86: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   89: invokespecial 36	java/net/URL:<init>	(Ljava/lang/String;)V
      //   92: invokevirtual 60	java/net/URL:openConnection	()Ljava/net/URLConnection;
      //   95: checkcast 62	java/net/HttpURLConnection
      //   98: astore_1
      //   99: aload_1
      //   100: sipush 5000
      //   103: invokevirtual 66	java/net/HttpURLConnection:setReadTimeout	(I)V
      //   106: aload_1
      //   107: sipush 5000
      //   110: invokevirtual 69	java/net/HttpURLConnection:setConnectTimeout	(I)V
      //   113: aload 6
      //   115: astore 5
      //   117: aload_1
      //   118: invokevirtual 73	java/net/HttpURLConnection:getResponseCode	()I
      //   121: sipush 200
      //   124: if_icmpne +118 -> 242
      //   127: new 75	java/io/BufferedReader
      //   130: dup
      //   131: new 77	java/io/InputStreamReader
      //   134: dup
      //   135: aload_1
      //   136: invokevirtual 81	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
      //   139: ldc 83
      //   141: invokespecial 86	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
      //   144: invokespecial 89	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
      //   147: astore 5
      //   149: new 42	java/lang/StringBuilder
      //   152: dup
      //   153: invokespecial 90	java/lang/StringBuilder:<init>	()V
      //   156: astore 7
      //   158: aload 5
      //   160: invokevirtual 93	java/io/BufferedReader:readLine	()Ljava/lang/String;
      //   163: astore 8
      //   165: aload 8
      //   167: ifnull +26 -> 193
      //   170: aload 7
      //   172: aload 8
      //   174: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   177: pop
      //   178: goto -20 -> 158
      //   181: astore 5
      //   183: aload_1
      //   184: ifnull +137 -> 321
      //   187: aload_1
      //   188: invokevirtual 96	java/net/HttpURLConnection:disconnect	()V
      //   191: aconst_null
      //   192: areturn
      //   193: aload 5
      //   195: invokevirtual 99	java/io/BufferedReader:close	()V
      //   198: new 101	org/json/JSONObject
      //   201: dup
      //   202: aload 7
      //   204: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   207: invokespecial 102	org/json/JSONObject:<init>	(Ljava/lang/String;)V
      //   210: astore 5
      //   212: aload 5
      //   214: ldc 104
      //   216: invokevirtual 108	org/json/JSONObject:getBoolean	(Ljava/lang/String;)Z
      //   219: istore_2
      //   220: aload 5
      //   222: ldc 110
      //   224: invokevirtual 114	org/json/JSONObject:getLong	(Ljava/lang/String;)J
      //   227: lstore_3
      //   228: aload 6
      //   230: astore 5
      //   232: iload_2
      //   233: ifeq +9 -> 242
      //   236: lload_3
      //   237: invokestatic 120	java/lang/Long:valueOf	(J)Ljava/lang/Long;
      //   240: astore 5
      //   242: aload_1
      //   243: ifnull +80 -> 323
      //   246: aload_1
      //   247: invokevirtual 96	java/net/HttpURLConnection:disconnect	()V
      //   250: aload 5
      //   252: areturn
      //   253: astore_1
      //   254: aload_1
      //   255: invokevirtual 125	java/lang/NumberFormatException:printStackTrace	()V
      //   258: goto -16 -> 242
      //   261: astore 5
      //   263: aload 5
      //   265: invokevirtual 126	org/json/JSONException:printStackTrace	()V
      //   268: aload 6
      //   270: astore 5
      //   272: goto -30 -> 242
      //   275: astore 5
      //   277: aload_1
      //   278: astore 6
      //   280: aload 5
      //   282: astore_1
      //   283: aload 6
      //   285: ifnull +8 -> 293
      //   288: aload 6
      //   290: invokevirtual 96	java/net/HttpURLConnection:disconnect	()V
      //   293: aload_1
      //   294: athrow
      //   295: astore_1
      //   296: aload 5
      //   298: areturn
      //   299: astore_1
      //   300: aconst_null
      //   301: areturn
      //   302: astore 5
      //   304: goto -11 -> 293
      //   307: astore_1
      //   308: aload 5
      //   310: astore 6
      //   312: goto -29 -> 283
      //   315: astore_1
      //   316: aconst_null
      //   317: astore_1
      //   318: goto -135 -> 183
      //   321: aconst_null
      //   322: areturn
      //   323: aload 5
      //   325: areturn
      // Exception table:
      //   from	to	target	type
      //   99	113	181	java/io/IOException
      //   117	158	181	java/io/IOException
      //   158	165	181	java/io/IOException
      //   170	178	181	java/io/IOException
      //   193	198	181	java/io/IOException
      //   198	228	181	java/io/IOException
      //   254	258	181	java/io/IOException
      //   263	268	181	java/io/IOException
      //   198	228	261	org/json/JSONException
      //   254	258	261	org/json/JSONException
      //   99	113	275	finally
      //   117	158	275	finally
      //   158	165	275	finally
      //   170	178	275	finally
      //   193	198	275	finally
      //   198	228	275	finally
      //   254	258	275	finally
      //   263	268	275	finally
      //   246	250	295	java/lang/Exception
      //   187	191	299	java/lang/Exception
      //   288	293	302	java/lang/Exception
      //   40	99	307	finally
      //   40	99	315	java/io/IOException
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.uri.UriHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */