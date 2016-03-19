package com.cbs.app.view.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnShowListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.format.DateUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import com.cbs.app.GlobalConstants;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.DataManager;
import com.cbs.app.androiddata.DataManagerConfiguration;
import com.cbs.app.androiddata.RequestHelper;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.androiddata.ServerRequestTask;
import com.cbs.app.inappbilling.IABActivity;
import com.cbs.app.service.LocationService;
import com.cbs.app.service.LocationServiceImpl;
import com.cbs.app.service.social.TwitterOAuthTokens;
import com.cbs.app.view.DeepLinkActivity;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.fragments.ShowFragmentV2;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.Episode;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.ShowConfig;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.registration.PackageInfo;
import com.cbs.app.view.model.registration.UserStatus;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DateFormatSymbols;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

public class Util
{
  public static final String a = Util.class.getSimpleName();
  
  public static String A(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getString("lastName", null);
  }
  
  public static String B(Context paramContext)
  {
    String str = null;
    if (paramContext != null) {
      str = PreferenceManager.getDefaultSharedPreferences(paramContext).getString("cbs_base_uri", "");
    }
    return str;
  }
  
  public static void C(Context paramContext)
  {
    paramContext.getSharedPreferences("TwitterConnectPreference", 0).edit().clear().commit();
  }
  
  public static TwitterOAuthTokens D(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("TwitterConnectPreference", 0);
    String str = paramContext.getString("oauth_token", null);
    if (str == null) {
      return null;
    }
    return new TwitterOAuthTokens(str, paramContext.getString("oauth_token_secret", null), paramContext.getString("user_id", null), paramContext.getString("screen_name", null));
  }
  
  public static String E(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getString("facebook_token", null);
  }
  
  public static String F(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getString("google_token", null);
  }
  
  public static boolean G(Context paramContext)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    Object localObject;
    if (paramContext != null)
    {
      localObject = paramContext.getPackageManager();
      bool1 = bool2;
      if (localObject != null)
      {
        localObject = ((PackageManager)localObject).getInstallerPackageName("com.cbs.app");
        paramContext = x(paramContext);
        if (paramContext == null) {
          break label56;
        }
      }
    }
    for (;;)
    {
      bool1 = bool2;
      if (paramContext != null)
      {
        bool1 = bool2;
        if (paramContext.contains("com.amazon.venezia")) {
          bool1 = true;
        }
      }
      return bool1;
      label56:
      paramContext = (Context)localObject;
    }
  }
  
  public static boolean H(Context paramContext)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    Object localObject;
    if (paramContext != null)
    {
      localObject = paramContext.getPackageManager();
      bool1 = bool2;
      if (localObject != null)
      {
        localObject = ((PackageManager)localObject).getInstallerPackageName("com.cbs.app");
        paramContext = x(paramContext);
        if (paramContext == null) {
          break label56;
        }
      }
    }
    for (;;)
    {
      bool1 = bool2;
      if (paramContext != null)
      {
        bool1 = bool2;
        if (paramContext.contains("com.android.vending")) {
          bool1 = true;
        }
      }
      return bool1;
      label56:
      paramContext = (Context)localObject;
    }
  }
  
  public static String I(Context paramContext)
  {
    if (paramContext != null)
    {
      paramContext = paramContext.getPackageManager();
      if (paramContext != null)
      {
        paramContext = paramContext.getInstallerPackageName("com.cbs.app");
        if (paramContext != null) {
          return paramContext;
        }
      }
    }
    return "none";
  }
  
  public static void J(Context paramContext)
  {
    Object localObject = "https://play.google.com/store/apps/details?id=com.cbs.app";
    if (G(paramContext)) {
      localObject = "http://www.amazon.com/gp/mas/dl/android?p=com.cbs.app";
    }
    localObject = new Intent("android.intent.action.VIEW", Uri.parse((String)localObject));
    ((Intent)localObject).addFlags(268435456);
    paramContext.startActivity((Intent)localObject);
  }
  
  public static int K(Context paramContext)
  {
    switch (R(paramContext))
    {
    default: 
      return 0;
    case -1: 
      return -1;
    }
    return 1;
  }
  
  public static boolean L(Context paramContext)
  {
    return R(paramContext) != -1;
  }
  
  public static void M(Context paramContext)
  {
    if (paramContext != null) {
      Preferences.a(paramContext, "previousSeasonSelection", 0);
    }
  }
  
  public static Location N(Context paramContext)
  {
    String str1 = null;
    LocationServiceImpl localLocationServiceImpl = new LocationServiceImpl();
    Activity localActivity = (Activity)paramContext;
    paramContext = str1;
    if (localActivity != null)
    {
      paramContext = str1;
      if (!localActivity.isFinishing())
      {
        paramContext = PreferenceManager.getDefaultSharedPreferences(localActivity);
        str1 = paramContext.getString("cbsDebugUserLocationLatitude", "");
        String str2 = paramContext.getString("cbsDebugUserLocationLongitude", "");
        if ((str1.equals("")) || (str2.equals(""))) {
          break label119;
        }
        paramContext = new Location("");
        paramContext.setAccuracy(5.0F);
        paramContext.setTime(5L);
        paramContext.setLatitude(Double.parseDouble(str1));
        paramContext.setLongitude(Double.parseDouble(str2));
      }
    }
    return paramContext;
    label119:
    return localLocationServiceImpl.a(localActivity);
  }
  
  public static void O(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, DeepLinkActivity.class);
    localIntent.putExtra("mustfinish", true);
    localIntent.setFlags(268468224);
    paramContext.startActivity(localIntent);
  }
  
  public static String P(Context paramContext)
  {
    if ((a()) && (e(paramContext))) {
      return "cbs_amazon_phone_app";
    }
    if ((a()) && (h(paramContext))) {
      return "cbs_amazon_tablet_app";
    }
    if (h(paramContext)) {
      return "cbs_android_tablet_app";
    }
    return "cbs_android_phone_app";
  }
  
  public static String Q(Context paramContext)
  {
    return ((MainApplication)paramContext.getApplicationContext()).getDeviceType();
  }
  
  private static int R(Context paramContext)
  {
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((paramContext != null) && (paramContext.isAvailable()) && (paramContext.isConnectedOrConnecting())) {
      return paramContext.getType();
    }
    return -1;
  }
  
  public static int a(Context paramContext)
  {
    int i = 160;
    if (paramContext != null) {
      i = getResourcesgetDisplayMetricsdensityDpi;
    }
    return i;
  }
  
  public static int a(Context paramContext, double paramDouble)
  {
    int i = (int)Math.round(paramDouble);
    if (paramContext != null) {
      i = (int)(getResourcesgetDisplayMetricsdensity * paramDouble + 0.5D);
    }
    return i;
  }
  
  public static int a(Context paramContext, int paramInt)
  {
    int i = paramInt;
    if (paramContext != null)
    {
      paramContext = paramContext.getResources().getDisplayMetrics();
      i = (int)(paramInt / density + 0.5D);
    }
    return i;
  }
  
  public static ResponseModel a(Context paramContext, boolean paramBoolean1, String paramString, ResponseModelListener paramResponseModelListener, Class<? extends ResponseModel> paramClass, boolean paramBoolean2, long paramLong, boolean paramBoolean3)
  {
    DataManagerConfiguration localDataManagerConfiguration = DataManager.getInstance().getConfiguration();
    paramContext = new RequestHelper(paramContext, paramClass, paramResponseModelListener);
    paramContext.setIsCbsEndpont(paramBoolean1);
    if (paramBoolean1) {
      paramContext.setCbsAppSecret(localDataManagerConfiguration.getCbsAppSecret());
    }
    for (;;)
    {
      paramContext.setStaleOk(true);
      paramContext.setTtl(3600L);
      paramContext.setUseCache(paramBoolean2);
      paramContext.setShouldWeLogThisRequest(true);
      paramResponseModelListener = new ArrayList();
      paramResponseModelListener.add("GET");
      paramResponseModelListener.add(paramString);
      paramResponseModelListener.add(null);
      paramResponseModelListener.add(null);
      return paramContext.a((String[])paramResponseModelListener.toArray(new String[paramResponseModelListener.size()]));
      paramResponseModelListener = DataManager.getInstance().getDeviceData();
      paramContext.setSyncbakKey(localDataManagerConfiguration.getSyncbakAppKey());
      paramContext.setSyncbakSecret(localDataManagerConfiguration.getSyncbakAppSecret());
      paramContext.setSyncbakDeviceData(paramResponseModelListener);
    }
  }
  
  public static String a(long paramLong)
  {
    long l1 = paramLong % 60L;
    long l2 = (paramLong - l1) / 60L;
    paramLong = l2 % 60L;
    l2 = (l2 - paramLong) / 60L;
    return c(l2) + ":" + c(paramLong) + ":" + c(l1);
  }
  
  /* Error */
  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 400	java/lang/StringBuilder
    //   3: dup
    //   4: ldc_w 418
    //   7: invokespecial 419	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   10: aload_1
    //   11: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   14: ldc_w 421
    //   17: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: aload_2
    //   21: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: pop
    //   25: aconst_null
    //   26: astore 6
    //   28: aconst_null
    //   29: astore 7
    //   31: aconst_null
    //   32: astore 5
    //   34: aload 6
    //   36: astore 4
    //   38: aload_0
    //   39: ifnull +249 -> 288
    //   42: aload_1
    //   43: astore_3
    //   44: aload_1
    //   45: ldc_w 423
    //   48: invokevirtual 427	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   51: ifne +24 -> 75
    //   54: new 400	java/lang/StringBuilder
    //   57: dup
    //   58: invokespecial 401	java/lang/StringBuilder:<init>	()V
    //   61: aload_1
    //   62: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: ldc_w 423
    //   68: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 413	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: astore_3
    //   75: aload_0
    //   76: invokevirtual 252	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   79: checkcast 254	com/cbs/app/view/MainApplication
    //   82: invokevirtual 431	com/cbs/app/view/MainApplication:getCookieStore	()Lcom/cbs/app/androiddata/PersistentCookieStore;
    //   85: astore_0
    //   86: aload 7
    //   88: astore_1
    //   89: aload_0
    //   90: new 433	java/net/URI
    //   93: dup
    //   94: aload_3
    //   95: invokespecial 434	java/net/URI:<init>	(Ljava/lang/String;)V
    //   98: invokevirtual 440	com/cbs/app/androiddata/PersistentCookieStore:get	(Ljava/net/URI;)Ljava/util/List;
    //   101: astore_0
    //   102: aload_0
    //   103: ifnull +147 -> 250
    //   106: aload 7
    //   108: astore_1
    //   109: aload_0
    //   110: invokeinterface 364 1 0
    //   115: ifle +135 -> 250
    //   118: aload 7
    //   120: astore_1
    //   121: new 400	java/lang/StringBuilder
    //   124: dup
    //   125: ldc_w 442
    //   128: invokespecial 419	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   131: aload_0
    //   132: invokeinterface 364 1 0
    //   137: invokevirtual 445	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   140: pop
    //   141: aload 7
    //   143: astore_1
    //   144: aload_0
    //   145: invokeinterface 449 1 0
    //   150: astore 6
    //   152: aload 5
    //   154: astore_0
    //   155: aload_0
    //   156: astore 4
    //   158: aload_0
    //   159: astore_1
    //   160: aload 6
    //   162: invokeinterface 454 1 0
    //   167: ifeq +121 -> 288
    //   170: aload_0
    //   171: astore_1
    //   172: aload 6
    //   174: invokeinterface 458 1 0
    //   179: checkcast 460	java/net/HttpCookie
    //   182: astore 4
    //   184: aload_0
    //   185: astore_1
    //   186: aload 4
    //   188: invokevirtual 463	java/net/HttpCookie:getName	()Ljava/lang/String;
    //   191: aload_2
    //   192: invokevirtual 181	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   195: ifeq +111 -> 306
    //   198: aload_0
    //   199: astore_1
    //   200: aload 4
    //   202: invokevirtual 466	java/net/HttpCookie:getValue	()Ljava/lang/String;
    //   205: astore_0
    //   206: new 400	java/lang/StringBuilder
    //   209: dup
    //   210: ldc_w 418
    //   213: invokespecial 419	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   216: aload_3
    //   217: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   220: ldc_w 421
    //   223: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: aload_2
    //   227: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: ldc_w 468
    //   233: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: aload_0
    //   237: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: ldc_w 470
    //   243: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   246: pop
    //   247: goto -92 -> 155
    //   250: aload 7
    //   252: astore_1
    //   253: new 400	java/lang/StringBuilder
    //   256: dup
    //   257: ldc_w 418
    //   260: invokespecial 419	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   263: aload_3
    //   264: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   267: ldc_w 421
    //   270: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   273: aload_2
    //   274: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   277: ldc_w 472
    //   280: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   283: pop
    //   284: aload 6
    //   286: astore 4
    //   288: aload 4
    //   290: areturn
    //   291: astore_2
    //   292: aload_1
    //   293: astore_0
    //   294: aload_2
    //   295: astore_1
    //   296: aload_1
    //   297: invokevirtual 475	java/net/URISyntaxException:printStackTrace	()V
    //   300: aload_0
    //   301: areturn
    //   302: astore_1
    //   303: goto -7 -> 296
    //   306: goto -59 -> 247
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	309	0	paramContext	Context
    //   0	309	1	paramString1	String
    //   0	309	2	paramString2	String
    //   43	221	3	str	String
    //   36	253	4	localObject1	Object
    //   32	121	5	localObject2	Object
    //   26	259	6	localIterator	java.util.Iterator
    //   29	222	7	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   89	102	291	java/net/URISyntaxException
    //   109	118	291	java/net/URISyntaxException
    //   121	141	291	java/net/URISyntaxException
    //   144	152	291	java/net/URISyntaxException
    //   160	170	291	java/net/URISyntaxException
    //   172	184	291	java/net/URISyntaxException
    //   186	198	291	java/net/URISyntaxException
    //   200	206	291	java/net/URISyntaxException
    //   253	284	291	java/net/URISyntaxException
    //   206	247	302	java/net/URISyntaxException
  }
  
  public static String a(Show paramShow, Episode paramEpisode)
  {
    String str = "";
    if ((paramShow != null) && (paramEpisode != null)) {
      paramShow = "Don't Miss " + paramShow.getTitle() + ": " + paramEpisode.getEpisodeTitle() + " on " + paramEpisode.getAirDateString() + " at " + paramEpisode.getDisplay_airdate() + "<br/><br/>" + paramShow.getLink();
    }
    do
    {
      return paramShow;
      if (paramShow != null) {
        return "Watch " + paramShow.getTitle() + " on CBS!<br/><br/>" + paramShow.getLink();
      }
      paramShow = str;
    } while (paramEpisode == null);
    return "Don't Miss " + paramEpisode.getShowTitle() + ": " + paramEpisode.getEpisodeTitle() + " on " + paramEpisode.getAirDateString() + " at " + paramEpisode.getDisplay_airdate();
  }
  
  public static String a(Show paramShow, ShowConfig paramShowConfig)
  {
    int m = 0;
    int i = 0;
    int k = 1;
    int j = 1;
    StringBuilder localStringBuilder = new StringBuilder();
    String str1;
    String str2;
    String str3;
    if ((paramShow != null) && (paramShowConfig != null))
    {
      str1 = paramShow.getTitle();
      paramShow = paramShow.getLink();
      str2 = a(paramShowConfig);
      str3 = paramShowConfig.getFacebookLink();
      String str4 = paramShowConfig.getTwitterLink();
      paramShowConfig = paramShowConfig.getGooglePlusOne();
      localStringBuilder.append("Watch ");
      localStringBuilder.append(str1);
      localStringBuilder.append(" on CBS!");
      if (paramShow != null)
      {
        localStringBuilder.append("<br/><br/>");
        localStringBuilder.append(paramShow);
      }
      if (str2 != null)
      {
        localStringBuilder.append("<br/><br/>Buy ");
        localStringBuilder.append(str1);
        localStringBuilder.append("!<br/><br/>");
        localStringBuilder.append(str2);
      }
      if ((str3 != null) || (str4 != null) || (paramShowConfig != null))
      {
        localStringBuilder.append("<br/><br/>");
        localStringBuilder.append("See ");
        localStringBuilder.append(str1);
        localStringBuilder.append(" on social platforms!<br/><br/>");
        if (str3 != null)
        {
          localStringBuilder.append("<br/><br/>");
          localStringBuilder.append(str3);
          i = 1;
        }
        if (str4 == null) {
          break label591;
        }
        if (i == 0) {
          break label277;
        }
        localStringBuilder.append("<br/>");
        localStringBuilder.append(str4);
        i = j;
      }
    }
    label264:
    label277:
    label289:
    label526:
    label589:
    label591:
    for (;;)
    {
      if (paramShowConfig != null)
      {
        if (i == 0) {
          break label289;
        }
        localStringBuilder.append("<br/>");
        localStringBuilder.append(paramShowConfig);
      }
      for (;;)
      {
        return localStringBuilder.toString();
        localStringBuilder.append("<br/><br/>");
        break;
        localStringBuilder.append("<br/><br/>");
        break label264;
        if (paramShow != null)
        {
          paramShowConfig = paramShow.getTitle();
          paramShow = paramShow.getLink();
          localStringBuilder.append(" Watch ");
          localStringBuilder.append(paramShowConfig);
          localStringBuilder.append(" on CBS!");
          if (paramShow != null)
          {
            localStringBuilder.append("<br/><br/>");
            localStringBuilder.append(paramShow);
          }
        }
        else if (paramShowConfig != null)
        {
          paramShow = paramShowConfig.getTitle();
          str1 = a(paramShowConfig);
          str2 = paramShowConfig.getFacebookLink();
          str3 = paramShowConfig.getTwitterLink();
          paramShowConfig = paramShowConfig.getGooglePlusOne();
          if (str1 != null)
          {
            localStringBuilder.append("<br/><br/>Buy ");
            localStringBuilder.append(paramShow);
            localStringBuilder.append("!<br/><br/>");
            localStringBuilder.append(str1);
          }
          if ((str2 != null) || (str3 != null) || (paramShowConfig != null))
          {
            localStringBuilder.append("<br/><br/>");
            localStringBuilder.append("See ");
            localStringBuilder.append(paramShow);
            localStringBuilder.append(" on social platforms!<br/><br/>");
            i = m;
            if (str2 != null)
            {
              localStringBuilder.append("<br/><br/>");
              localStringBuilder.append(str2);
              i = 1;
            }
            if (str3 != null) {
              if (i != 0)
              {
                localStringBuilder.append("<br/>");
                localStringBuilder.append(str3);
                i = k;
              }
            }
            for (;;)
            {
              if (paramShowConfig == null) {
                break label589;
              }
              if (i != 0) {
                localStringBuilder.append("<br/>");
              }
              for (;;)
              {
                localStringBuilder.append(paramShowConfig);
                break;
                localStringBuilder.append("<br/><br/>");
                break label526;
                localStringBuilder.append("<br/><br/>");
              }
            }
          }
        }
      }
    }
  }
  
  private static String a(ShowConfig paramShowConfig)
  {
    String str1 = paramShowConfig.getAmazonBuyLink();
    String str2 = paramShowConfig.getVuduBuyLink();
    paramShowConfig = paramShowConfig.getItunesBuyLink();
    if ((str1 != null) && (!str1.equals("null"))) {
      return str1;
    }
    if ((str2 != null) && (!str2.equals("null"))) {
      return str2;
    }
    if ((paramShowConfig != null) && (!paramShowConfig.equals("null"))) {
      return paramShowConfig;
    }
    return null;
  }
  
  public static String a(VideoData paramVideoData)
  {
    Object localObject = "";
    if (paramVideoData != null)
    {
      localObject = "" + "Watch ";
      String str2 = (String)localObject + paramVideoData.getTitle();
      String str1 = b(paramVideoData);
      localObject = str1;
      if (str1 != null)
      {
        localObject = str1;
        if (!str1.equals("")) {
          localObject = " (" + str1 + ")";
        }
      }
      localObject = str2 + (String)localObject + "!<br/><br/>";
      localObject = (String)localObject + paramVideoData.getUrl();
    }
    return (String)localObject;
  }
  
  public static String a(AuthStatusEndpointResponse paramAuthStatusEndpointResponse)
  {
    String str2 = "0";
    String str1 = str2;
    UserStatus localUserStatus;
    if (paramAuthStatusEndpointResponse != null)
    {
      localUserStatus = paramAuthStatusEndpointResponse.getUserStatus();
      str1 = str2;
      if (localUserStatus == null) {}
    }
    switch (localUserStatus.getType())
    {
    default: 
      str1 = "0";
    case 1: 
    case 2: 
      do
      {
        do
        {
          return str1;
          return "2";
          str2 = "1";
          paramAuthStatusEndpointResponse = paramAuthStatusEndpointResponse.getPackageInfo();
          str1 = str2;
        } while (paramAuthStatusEndpointResponse == null);
        str1 = str2;
      } while (paramAuthStatusEndpointResponse.size() <= 0);
      if (!((PackageInfo)paramAuthStatusEndpointResponse.get(0)).getPackageStatus().equals("TRIAL")) {
        break;
      }
    }
    for (paramAuthStatusEndpointResponse = "5";; paramAuthStatusEndpointResponse = "1")
    {
      return paramAuthStatusEndpointResponse;
      return "3";
      return "4";
    }
  }
  
  public static String a(Long paramLong)
  {
    paramLong = new Date(paramLong.longValue() * 1000L);
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("MM/dd/yy", Locale.US);
    localSimpleDateFormat.setTimeZone(TimeZone.getDefault());
    paramLong = localSimpleDateFormat.format(paramLong);
    return "Posted " + paramLong;
  }
  
  public static String a(String paramString)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("MM/dd/yyyy", Locale.US);
    Calendar localCalendar = Calendar.getInstance();
    try
    {
      localCalendar.setTime(localSimpleDateFormat.parse(paramString));
      localCalendar.add(5, 1);
      return localSimpleDateFormat.format(localCalendar.getTime());
    }
    catch (ParseException paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
      }
    }
  }
  
  /* Error */
  public static String a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 619	java/text/SimpleDateFormat
    //   3: dup
    //   4: aload_0
    //   5: getstatic 627	java/util/Locale:US	Ljava/util/Locale;
    //   8: invokespecial 630	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;Ljava/util/Locale;)V
    //   11: astore_0
    //   12: aload_0
    //   13: invokestatic 636	java/util/TimeZone:getDefault	()Ljava/util/TimeZone;
    //   16: invokevirtual 640	java/text/SimpleDateFormat:setTimeZone	(Ljava/util/TimeZone;)V
    //   19: aload_0
    //   20: aload_1
    //   21: invokevirtual 658	java/text/SimpleDateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   24: invokevirtual 671	java/util/Date:getTime	()J
    //   27: invokestatic 677	android/text/format/DateUtils:getRelativeTimeSpanString	(J)Ljava/lang/CharSequence;
    //   30: invokeinterface 680 1 0
    //   35: astore_0
    //   36: aload_0
    //   37: astore_1
    //   38: aload_0
    //   39: ldc_w 682
    //   42: invokevirtual 181	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   45: ifeq +7 -> 52
    //   48: ldc_w 684
    //   51: astore_1
    //   52: aload_1
    //   53: areturn
    //   54: astore_0
    //   55: aload_0
    //   56: astore_2
    //   57: aload_1
    //   58: astore_0
    //   59: aload_2
    //   60: invokevirtual 669	java/text/ParseException:printStackTrace	()V
    //   63: aload_0
    //   64: areturn
    //   65: astore_2
    //   66: goto -7 -> 59
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	paramString1	String
    //   0	69	1	paramString2	String
    //   56	4	2	str	String
    //   65	1	2	localParseException	ParseException
    // Exception table:
    //   from	to	target	type
    //   0	36	54	java/text/ParseException
    //   38	48	65	java/text/ParseException
  }
  
  public static String a(boolean paramBoolean, String paramString1, String paramString2, String paramString3)
  {
    Object localObject2 = null;
    paramString1 = new Date(paramString1);
    Object localObject1 = Calendar.getInstance();
    ((Calendar)localObject1).setTime(paramString1);
    int i = ((Calendar)localObject1).get(2);
    int j = ((Calendar)localObject1).get(5);
    paramString1 = new DateFormatSymbols().getMonths();
    localObject1 = localObject2;
    if (i >= 0)
    {
      localObject1 = localObject2;
      if (i <= 11) {
        localObject1 = paramString1[i];
      }
    }
    paramString3 = paramString3.substring(0, paramString3.length() - 3);
    paramString1 = paramString3;
    if (paramString3.equalsIgnoreCase("Wednes")) {
      paramString1 = "Wed";
    }
    paramString3 = paramString1;
    if (paramString1.equalsIgnoreCase("Satur")) {
      paramString3 = "Sat";
    }
    paramString1 = new HashMap();
    paramString1.put("January", "Jan");
    paramString1.put("February", "Feb");
    paramString1.put("March", "March");
    paramString1.put("April", "April");
    paramString1.put("May", "May");
    paramString1.put("June", "June");
    paramString1.put("July", "July");
    paramString1.put("August", "Aug");
    paramString1.put("September", "Sept");
    paramString1.put("October", "Oct");
    paramString1.put("November", "Nov");
    paramString1.put("December", "Dec");
    paramString1 = (String)paramString1.get(localObject1);
    if (paramBoolean) {
      return "Tonight at " + paramString2 + " on CBS";
    }
    return paramString3 + ". " + paramString1 + ". " + j + ", " + paramString2 + " on CBS";
  }
  
  public static void a(Activity paramActivity, Context paramContext)
  {
    if (paramActivity != null)
    {
      String str = paramContext.getResources().getString(2131230997);
      paramActivity = new AlertDialog.Builder(new ContextThemeWrapper(paramActivity, 2131427561));
      paramActivity.setView(((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903133, null));
      paramActivity.setPositiveButton(str, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
        }
      });
      paramActivity = paramActivity.create();
      paramActivity.setCancelable(true);
      paramActivity.setOnShowListener(new DialogInterface.OnShowListener()
      {
        public final void onShow(DialogInterface paramAnonymousDialogInterface)
        {
          if (a != null)
          {
            a.getButton(-1).setTypeface(null, 1);
            a.getButton(-1).setTextSize(2, 16.0F);
          }
        }
      });
      paramActivity.show();
    }
  }
  
  public static void a(Context paramContext, String paramString)
  {
    Object localObject = Action.cj;
    HashMap localHashMap = new HashMap();
    localHashMap.put("events", "event19");
    AnalyticsManager.a(paramContext, (Action)localObject, localHashMap);
    localObject = (Activity)paramContext;
    paramContext = new Intent(paramContext, IABActivity.class);
    paramContext.putExtra("sku_intent", paramString);
    ((Activity)localObject).startActivityForResult(paramContext, 777);
  }
  
  public static void a(Context paramContext, HashMap<String, String> paramHashMap)
  {
    paramContext = paramContext.getSharedPreferences("TwitterConnectPreference", 0).edit();
    paramContext.putString("oauth_token", (String)paramHashMap.get("oauth_token"));
    paramContext.putString("oauth_token_secret", (String)paramHashMap.get("oauth_token_secret"));
    paramContext.putString("screen_name", (String)paramHashMap.get("screen_name"));
    paramContext.putString("user_id", (String)paramHashMap.get("user_id"));
    paramContext.commit();
  }
  
  public static void a(Context paramContext, boolean paramBoolean)
  {
    if (paramContext != null)
    {
      paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
      paramContext.putBoolean("upgradable", paramBoolean);
      paramContext.commit();
    }
  }
  
  public static void a(Context paramContext, boolean paramBoolean1, String paramString1, String paramString2, String paramString3, String paramString4, ResponseModelListener paramResponseModelListener, Class<? extends ResponseModel> paramClass, boolean paramBoolean2, long paramLong, boolean paramBoolean3)
  {
    DataManagerConfiguration localDataManagerConfiguration = DataManager.getInstance().getConfiguration();
    paramContext = new ServerRequestTask(paramContext, paramClass, paramResponseModelListener);
    paramContext.setIsCbsEndpont(paramBoolean1);
    if (paramBoolean1) {
      paramContext.setCbsAppSecret(localDataManagerConfiguration.getCbsAppSecret());
    }
    for (;;)
    {
      paramContext.setTtl(paramLong);
      paramContext.setStaleOk(paramBoolean3);
      paramContext.setUseCache(paramBoolean2);
      paramContext.setShouldWeLogThisRequest(true);
      if (!localDataManagerConfiguration.c()) {
        break;
      }
      paramContext.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[] { paramString1, paramString2, paramString3, paramString4 });
      return;
      paramResponseModelListener = DataManager.getInstance().getDeviceData();
      paramContext.setSyncbakKey(localDataManagerConfiguration.getSyncbakAppKey());
      paramContext.setSyncbakSecret(localDataManagerConfiguration.getSyncbakAppSecret());
      paramContext.setSyncbakDeviceData(paramResponseModelListener);
    }
    paramContext.execute(new String[] { paramString1, paramString2, paramString3, paramString4 });
  }
  
  public static void a(NavigationActivity paramNavigationActivity, ShowItem paramShowItem, VideoData paramVideoData)
  {
    ShowFragmentV2 localShowFragmentV2 = new ShowFragmentV2();
    localShowFragmentV2.setShowItem(paramShowItem);
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("isClassic", category.equals("Classic"));
    localBundle.putParcelable("selectedVideo", paramVideoData);
    localBundle.putBoolean("dontShowPlayer", true);
    localShowFragmentV2.setArguments(localBundle);
    paramNavigationActivity.a(localShowFragmentV2, "fragment_show_home");
    paramNavigationActivity.e();
  }
  
  public static boolean a()
  {
    boolean bool2 = false;
    String str = Build.MANUFACTURER;
    boolean bool1 = bool2;
    if (str != null)
    {
      bool1 = bool2;
      if (str.contains("Amazon")) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static boolean a(Activity paramActivity)
  {
    if (paramActivity != null)
    {
      InputMethodManager localInputMethodManager = (InputMethodManager)paramActivity.getSystemService("input_method");
      if (localInputMethodManager != null)
      {
        paramActivity = paramActivity.getCurrentFocus();
        if ((paramActivity != null) && (paramActivity.getWindowToken() != null))
        {
          localInputMethodManager.hideSoftInputFromWindow(paramActivity.getWindowToken(), 0);
          return true;
        }
      }
    }
    return false;
  }
  
  public static boolean a(Context paramContext, Intent paramIntent)
  {
    return paramContext.getPackageManager().queryIntentActivities(paramIntent, 65536).size() > 0;
  }
  
  public static boolean a(Configuration paramConfiguration)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramConfiguration != null)
    {
      bool1 = bool2;
      if ((screenLayout & 0xF) == 3) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private static byte[] a(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte.length];
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int j = GlobalConstants.a.length;
      int k = paramArrayOfByte[i];
      arrayOfByte[i] = ((byte)(GlobalConstants.a[(i % j)] ^ k));
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static int b(Context paramContext)
  {
    if (paramContext != null)
    {
      paramContext = paramContext.getApplicationContext();
      if ((paramContext != null) && ((paramContext instanceof MainApplication))) {
        return getResourcesgetDisplayMetricswidthPixels;
      }
    }
    return 0;
  }
  
  public static String b(long paramLong)
  {
    return DateUtils.getRelativeTimeSpanString(new Date(paramLong).getTime()).toString();
  }
  
  public static String b(VideoData paramVideoData)
  {
    String str = "";
    if (paramVideoData != null)
    {
      int i = paramVideoData.getSeasonNum();
      if (paramVideoData.getSeasonNum() == 0) {
        break label104;
      }
      str = "S" + i;
      paramVideoData = paramVideoData.getEpisodeNum();
      if ((paramVideoData == null) || (paramVideoData.equals("")) || (paramVideoData.equals("0"))) {
        break label110;
      }
    }
    label104:
    label110:
    for (paramVideoData = " E" + paramVideoData;; paramVideoData = "")
    {
      str = str + paramVideoData;
      return str;
      str = "";
      break;
    }
  }
  
  public static String b(String paramString)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("MM/dd/yyyy", Locale.US);
    Calendar localCalendar = Calendar.getInstance();
    try
    {
      localCalendar.setTime(localSimpleDateFormat.parse(paramString));
      localCalendar.add(5, 1);
      return new SimpleDateFormat("EEEE", Locale.US).format(localCalendar.getTime());
    }
    catch (ParseException paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
      }
    }
  }
  
  public static void b(Context paramContext, String paramString)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putString("ab_type", paramString);
    paramContext.commit();
  }
  
  public static boolean b(Configuration paramConfiguration)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramConfiguration != null)
    {
      bool1 = bool2;
      if ((screenLayout & 0xF) == 4) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static int c(Context paramContext)
  {
    if (paramContext != null)
    {
      paramContext = paramContext.getApplicationContext();
      if ((paramContext != null) && ((paramContext instanceof MainApplication))) {
        return getResourcesgetDisplayMetricsheightPixels;
      }
    }
    return 0;
  }
  
  private static String c(long paramLong)
  {
    String str = String.valueOf(paramLong);
    return ("00" + str).substring(str.length());
  }
  
  public static String c(VideoData paramVideoData)
  {
    Object localObject = new Date(paramVideoData.getAirDate());
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("MM/dd/yy", Locale.US);
    localSimpleDateFormat.setTimeZone(TimeZone.getDefault());
    localObject = localSimpleDateFormat.format((Date)localObject);
    if (paramVideoData.getFullEpisode()) {
      return "Aired " + (String)localObject;
    }
    return "Posted " + (String)localObject;
  }
  
  public static String c(String paramString)
  {
    String str = null;
    if ((paramString.equals("fragment_cbs_home")) || (paramString.equals("Home"))) {
      str = Action.d.getName();
    }
    do
    {
      return str;
      if (paramString.equals("fragment_show_browse_search")) {
        return Action.n.getName();
      }
      if (paramString.equals("ShowBrowse")) {
        return Action.m.getName();
      }
      if ((paramString.equals("fragment_show_home")) || (paramString.equals("Shows"))) {
        return Action.j.getName();
      }
      if (paramString.equals("fragment_show_videos")) {
        return Action.j.getName();
      }
      if (paramString.equals("fragment_show_photos")) {
        return Action.k.getName();
      }
      if (paramString.equals("fragment_show_cast")) {
        return Action.l.getName();
      }
      if (paramString.equals("fragment_show_connect")) {
        return Action.bu.getName();
      }
      if (paramString.equals("fragment_live_tv")) {
        return Action.A.getName();
      }
      if ((paramString.equals("fragment_schedule")) || (paramString.equals("Schedule"))) {
        return Action.v.getName();
      }
      if ((paramString.equals("fragment_my_cbs")) || (paramString.equals("My CBS"))) {
        return Action.z.getName();
      }
      if (paramString.equals("fragment_my_shows_cbs")) {
        return Action.y.getName();
      }
      if (paramString.equals("recently_watched_fragment")) {
        return Action.x.getName();
      }
    } while ((!paramString.equals("settings_fragment")) && (!paramString.equals("Settings")));
    return Action.p.getName();
  }
  
  public static void c(Context paramContext, String paramString)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putString("liveFyreToken", paramString);
    paramContext.commit();
  }
  
  public static boolean c(Configuration paramConfiguration)
  {
    return (paramConfiguration != null) && (orientation == 1);
  }
  
  public static String d(String paramString)
  {
    String str = paramString;
    if (paramString.contains("http/"))
    {
      str = paramString;
      if (paramString.contains("fg=1")) {
        str = paramString.replace("http/", "http:/");
      }
    }
    return str;
  }
  
  public static void d(Context paramContext)
  {
    if (paramContext != null)
    {
      Object localObject1 = paramContext.getApplicationContext();
      if ((localObject1 != null) && ((localObject1 instanceof MainApplication)))
      {
        new StringBuilder("manufacturer: ").append(Build.MANUFACTURER);
        new StringBuilder("release: ").append(Build.VERSION.RELEASE);
        new StringBuilder("codename: ").append(Build.VERSION.CODENAME);
        new StringBuilder("model: ").append(Build.MODEL);
        new StringBuilder("product: ").append(Build.PRODUCT);
        Object localObject2 = ((MainApplication)localObject1).getResources();
        localObject1 = ((Resources)localObject2).getDisplayMetrics();
        localObject2 = ((Resources)localObject2).getConfiguration();
        new StringBuilder("density: ").append(density);
        int i = widthPixels;
        int j = heightPixels;
        int k = densityDpi;
        a(paramContext, i);
        a(paramContext, j);
        i = screenLayout;
        i = screenLayout;
        i = orientation;
      }
    }
  }
  
  public static void d(Context paramContext, String paramString)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putString("cbs_id", paramString);
    paramContext.commit();
  }
  
  public static String e(String paramString)
  {
    return new String(a(Base64.decode(paramString, 2)));
  }
  
  public static void e(Context paramContext, String paramString)
  {
    if (paramContext != null)
    {
      paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
      paramContext.putString("installer_override", paramString);
      paramContext.commit();
    }
  }
  
  public static boolean e(Context paramContext)
  {
    return (f(paramContext)) || (g(paramContext));
  }
  
  public static void f(Context paramContext, String paramString)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putString("cbs_token", paramString);
    paramContext.commit();
  }
  
  public static boolean f(Context paramContext)
  {
    return (paramContext != null) && ((getResourcesgetConfigurationscreenLayout & 0xF) == 1);
  }
  
  public static void g(Context paramContext, String paramString)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putString("firstName", paramString);
    paramContext.commit();
  }
  
  public static boolean g(Context paramContext)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramContext != null)
    {
      bool1 = bool2;
      if ((getResourcesgetConfigurationscreenLayout & 0xF) == 2) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static String getCurrentDateString()
  {
    return new SimpleDateFormat("MM/dd/yyyy", Locale.US).format(Calendar.getInstance().getTime());
  }
  
  public static void h(Context paramContext, String paramString)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putString("lastName", paramString);
    paramContext.commit();
  }
  
  public static boolean h(Context paramContext)
  {
    return (i(paramContext)) || (j(paramContext));
  }
  
  public static void i(Context paramContext, String paramString)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putString("facebook_token", paramString);
    paramContext.commit();
  }
  
  public static boolean i(Context paramContext)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramContext != null)
    {
      bool1 = bool2;
      if ((getResourcesgetConfigurationscreenLayout & 0xF) == 3) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static void j(Context paramContext, String paramString)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putString("google_token", paramString);
    paramContext.commit();
  }
  
  public static boolean j(Context paramContext)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramContext != null)
    {
      bool1 = bool2;
      if ((getResourcesgetConfigurationscreenLayout & 0xF) == 4) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static String k(Context paramContext, String paramString)
  {
    Object localObject = paramString;
    if (paramContext != null)
    {
      paramContext = Preferences.b(paramContext, "cbs_base_uri", "");
      localObject = paramString;
      if (paramString != null)
      {
        localObject = paramString;
        if ((!paramString.contains(paramContext)) && (!paramString.contains("http"))) {
          break label95;
        }
      }
    }
    try
    {
      localObject = new URL(paramString);
      paramContext = new URL(paramContext);
      localObject = new URL(((URL)localObject).getProtocol(), paramContext.getHost(), ((URL)localObject).getPort(), ((URL)localObject).getFile()).toString();
      return (String)localObject;
    }
    catch (MalformedURLException paramContext)
    {
      paramContext.printStackTrace();
      return paramString;
    }
    label95:
    return paramContext + paramString;
  }
  
  public static boolean k(Context paramContext)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramContext != null)
    {
      bool1 = bool2;
      if (getResourcesgetConfigurationorientation == 2) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static boolean l(Context paramContext)
  {
    return (paramContext != null) && (getResourcesgetConfigurationorientation == 1);
  }
  
  public static boolean m(Context paramContext)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramContext != null)
    {
      bool1 = bool2;
      if (paramContext.getString(2131230842).equals("debug")) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static boolean n(Context paramContext)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramContext != null)
    {
      bool1 = bool2;
      if (paramContext.getString(2131230842).equals("release")) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static boolean o(Context paramContext)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramContext != null)
    {
      paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).getString("ab_type", "A");
      bool1 = bool2;
      if (paramContext != null)
      {
        bool1 = bool2;
        if (paramContext.equals("B")) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public static void p(Context paramContext)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putLong("last_soft_start", System.currentTimeMillis());
    paramContext.commit();
  }
  
  public static long q(Context paramContext)
  {
    long l = 0L;
    if (paramContext != null) {
      l = PreferenceManager.getDefaultSharedPreferences(paramContext).getLong("last_soft_start", 0L);
    }
    return l;
  }
  
  public static boolean r(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean("mycbs_exported", false);
  }
  
  public static boolean s(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean("upgradable", false);
  }
  
  public static void setMyCBSExported(Context paramContext)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putBoolean("mycbs_exported", true);
    paramContext.commit();
  }
  
  public static void setNielsonDialogShownParam(Context paramContext)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putBoolean("nielson_dialog_already_shown", true);
    paramContext.commit();
  }
  
  public static void setUserHasSeenDialog(Context paramContext)
  {
    String str = u(paramContext);
    if (str != null)
    {
      paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
      paramContext.putBoolean("has_seen_dialog_" + str, true);
      paramContext.commit();
    }
  }
  
  public static String t(Context paramContext)
  {
    String str = null;
    if (a(paramContext, B(paramContext), "CBS_COM") != null) {
      str = PreferenceManager.getDefaultSharedPreferences(paramContext).getString("liveFyreToken", null);
    }
    return str;
  }
  
  public static String u(Context paramContext)
  {
    String str = null;
    if (a(paramContext, B(paramContext), "CBS_COM") != null) {
      str = PreferenceManager.getDefaultSharedPreferences(paramContext).getString("cbs_id", null);
    }
    return str;
  }
  
  public static boolean v(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean("nielson_dialog_already_shown", false);
  }
  
  public static boolean w(Context paramContext)
  {
    boolean bool = false;
    String str = u(paramContext);
    if (str != null) {
      bool = PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean("has_seen_dialog_" + str, false);
    }
    return bool;
  }
  
  public static String x(Context paramContext)
  {
    String str = null;
    if (paramContext != null) {
      str = PreferenceManager.getDefaultSharedPreferences(paramContext).getString("installer_override", null);
    }
    return str;
  }
  
  public static String y(Context paramContext)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramContext != null)
    {
      localObject1 = localObject2;
      if (a(paramContext, B(paramContext), "CBS_COM") != null) {
        localObject1 = PreferenceManager.getDefaultSharedPreferences(paramContext).getString("cbs_token", null);
      }
    }
    return (String)localObject1;
  }
  
  public static String z(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getString("firstName", null);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.utils.Util
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */