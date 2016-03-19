package com.cbs.app.analytics.impl;

import android.app.Application;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.cbs.app.analytics.Action;
import com.cbs.app.uri.UriHandler;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kochava.android.tracker.b;
import java.util.HashMap;
import org.json.JSONObject;

public final class KochavaService
{
  private static final String a = KochavaService.class.getSimpleName();
  private static b b = null;
  private static String c = null;
  
  public static void a()
  {
    if (b != null) {
      b.c();
    }
  }
  
  public static void a(Application paramApplication)
  {
    b(paramApplication);
  }
  
  public static void a(Context paramContext)
  {
    b(paramContext);
    b.b();
    if (Util.m(paramContext))
    {
      b.a(false);
      b.b(false);
    }
  }
  
  public static void a(Context paramContext, Action paramAction, HashMap<String, Object> paramHashMap)
  {
    String str = paramAction.getName();
    b(paramContext);
    paramAction = "{}";
    paramContext = paramAction;
    if (paramHashMap != null) {}
    try
    {
      paramContext = new ObjectMapper().writeValueAsString(paramHashMap);
      b.a(str, paramContext);
      return;
    }
    catch (JsonProcessingException paramContext)
    {
      for (;;)
      {
        Log.e(a, "processing exception", paramContext);
        paramContext = paramAction;
      }
    }
  }
  
  private static b b(Context paramContext)
  {
    HashMap localHashMap;
    if (b == null)
    {
      localHashMap = new HashMap();
      if (!Util.m(paramContext)) {
        break label99;
      }
      if (!Util.G(paramContext)) {
        break label87;
      }
      localHashMap.put("kochava_app_id", "kocbs-video-amazon-dev55fb483bd06f2");
    }
    for (;;)
    {
      b.a(new a(paramContext));
      localHashMap.put("flush_rate", Integer.valueOf(10));
      localHashMap.put("request_attribution", Boolean.valueOf(true));
      b = new b(paramContext, localHashMap);
      return b;
      label87:
      localHashMap.put("kochava_app_id", "kocbs-video-android-dev55fb4942b4eb4");
      continue;
      label99:
      if (Util.G(paramContext)) {
        localHashMap.put("kochava_app_id", "kocbs-kindle53beedea5da14");
      } else {
        localHashMap.put("kochava_app_id", "kocbsandroid87551e6d35e072ae");
      }
    }
  }
  
  private static String c(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString).getJSONObject("click").getString("deeplink");
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.getMessage();
    }
    return null;
  }
  
  public static String getAttributionData()
  {
    return c;
  }
  
  private static final class a
    extends Handler
  {
    private Context a;
    
    public a(Context paramContext)
    {
      a = paramContext;
    }
    
    public final void handleMessage(final Message paramMessage)
    {
      KochavaService.a(paramMessage.getData().getString("attributionData"));
      new StringBuilder("attribution string2 : ").append(KochavaService.b());
      paramMessage = KochavaService.b(KochavaService.b());
      if (paramMessage != null)
      {
        if (Util.v(a)) {
          new Handler(a.getMainLooper()).post(new Runnable()
          {
            public final void run()
            {
              UriHandler.a(KochavaService.a.a(KochavaService.a.this), Uri.parse(paramMessage));
            }
          });
        }
      }
      else {
        return;
      }
      Preferences.b(a, paramMessage);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.analytics.impl.KochavaService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */