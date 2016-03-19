package com.adobe.mobile;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.io.File;
import java.math.BigDecimal;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class o
  extends m
{
  protected String k;
  protected String l;
  protected Activity m;
  protected ViewGroup n;
  private WebView o;
  
  protected final boolean b(JSONObject paramJSONObject)
  {
    if ((paramJSONObject == null) || (paramJSONObject.length() <= 0)) {}
    while (!super.b(paramJSONObject)) {
      return false;
    }
    try
    {
      paramJSONObject = paramJSONObject.getJSONObject("payload");
      if (paramJSONObject.length() <= 0)
      {
        am.c("Messages - Unable to create fullscreen message \"%s\", payload is empty", new Object[] { a });
        return false;
      }
    }
    catch (JSONException paramJSONObject)
    {
      am.c("Messages - Unable to create fullscreen message \"%s\", payload is required", new Object[] { a });
      return false;
    }
    try
    {
      k = paramJSONObject.getString("html");
      if (k.length() <= 0)
      {
        am.c("Messages - Unable to create fullscreen message \"%s\", html is empty", new Object[] { a });
        return false;
      }
    }
    catch (JSONException paramJSONObject)
    {
      am.c("Messages - Unable to create fullscreen message \"%s\", html is required", new Object[] { a });
      return false;
    }
    try
    {
      paramJSONObject = paramJSONObject.getJSONArray("assets");
      if ((paramJSONObject != null) && (paramJSONObject.length() > 0))
      {
        h = new ArrayList();
        int i1 = paramJSONObject.length();
        int i = 0;
        while (i < i1)
        {
          JSONArray localJSONArray = paramJSONObject.getJSONArray(i);
          if ((localJSONArray != null) && (localJSONArray.length() > 0))
          {
            ArrayList localArrayList = new ArrayList();
            int i2 = localJSONArray.length();
            int j = 0;
            while (j < i2)
            {
              localArrayList.add(localJSONArray.getString(j));
              j += 1;
            }
            h.add(localArrayList);
          }
          i += 1;
        }
      }
      return true;
    }
    catch (JSONException paramJSONObject)
    {
      am.c("Messages - No assets found for fullscreen message \"%s\"", new Object[] { a });
    }
  }
  
  protected final void d()
  {
    for (;;)
    {
      Activity localActivity;
      HashMap localHashMap;
      try
      {
        localActivity = am.u();
        super.d();
        ae.a(this);
        localHashMap = new HashMap();
        if ((h == null) || (h.size() <= 0)) {
          break label196;
        }
        Iterator localIterator = h.iterator();
        if (!localIterator.hasNext()) {
          break label196;
        }
        Object localObject3 = (ArrayList)localIterator.next();
        int i = ((ArrayList)localObject3).size();
        if (i <= 0) {
          continue;
        }
        String str = (String)((ArrayList)localObject3).get(0);
        Object localObject1 = ((ArrayList)localObject3).iterator();
        if (!((Iterator)localObject1).hasNext()) {
          break label266;
        }
        File localFile = aj.a((String)((Iterator)localObject1).next(), "messageImages");
        if (localFile == null) {
          continue;
        }
        localObject1 = localFile.toURI().toString();
        if (localObject1 != null) {
          break label263;
        }
        localObject3 = (String)((ArrayList)localObject3).get(i - 1);
        if (!aj.a((String)localObject3))
        {
          i = 1;
          if (i == 0) {
            break label263;
          }
          localObject1 = localObject3;
          if (localObject1 == null) {
            continue;
          }
          localHashMap.put(str, localObject1);
          continue;
        }
        i = 0;
      }
      catch (am.a locala)
      {
        am.a(locala.getMessage(), new Object[0]);
        return;
      }
      continue;
      label196:
      l = am.a(k, localHashMap);
      try
      {
        Intent localIntent = new Intent(localActivity.getApplicationContext(), MessageFullScreenActivity.class);
        localIntent.addFlags(65536);
        localActivity.startActivity(localIntent);
        localActivity.overridePendingTransition(0, 0);
        return;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        am.b("Messages - Must declare MessageFullScreenActivity in AndroidManifest.xml in order to show full screen messages (%s)", new Object[] { localActivityNotFoundException.getMessage() });
        return;
      }
      label263:
      continue;
      label266:
      Object localObject2 = null;
    }
  }
  
  protected final void h()
  {
    int i = am.v();
    if ((f) && (g == i)) {
      return;
    }
    g = i;
    new Handler(Looper.getMainLooper()).post(new a(this));
  }
  
  private static final class a
    implements Runnable
  {
    private o a;
    
    protected a(o paramo)
    {
      a = paramo;
    }
    
    public final void run()
    {
      int i;
      int j;
      try
      {
        o.a(a, new WebView(a.m));
        o.a(a).setVerticalScrollBarEnabled(false);
        o.a(a).setHorizontalScrollBarEnabled(false);
        o.a(a).setBackgroundColor(0);
        o.a(a).setWebViewClient(new o.b(a));
        WebSettings localWebSettings = o.a(a).getSettings();
        localWebSettings.setJavaScriptEnabled(true);
        localWebSettings.setAllowFileAccess(true);
        localWebSettings.setDefaultTextEncodingName("UTF-8");
        o.a(a).loadDataWithBaseURL("file:///android_asset/", a.l, "text/html", "UTF-8", null);
        if (a.n == null)
        {
          am.a("Messages - unable to get root view group from os", new Object[0]);
          o.b(a);
          return;
        }
        i = a.n.getMeasuredWidth();
        j = a.n.getMeasuredHeight();
        if ((i == 0) || (j == 0))
        {
          am.a("Messages - root view hasn't been measured, cannot show message", new Object[0]);
          o.b(a);
          return;
        }
      }
      catch (Exception localException)
      {
        am.c("Messages - Failed to show full screen message (%s)", new Object[] { localException.getMessage() });
        return;
      }
      if (a.f) {
        a.n.addView(o.a(a), i, j);
      }
      for (;;)
      {
        a.f = true;
        return;
        TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, j, 0.0F);
        localTranslateAnimation.setDuration(300L);
        o.a(a).setAnimation(localTranslateAnimation);
        a.n.addView(o.a(a), i, j);
      }
    }
  }
  
  private static final class b
    extends WebViewClient
  {
    private o a;
    
    protected b(o paramo)
    {
      a = paramo;
    }
    
    private void a(WebView paramWebView)
    {
      if (a.n == null)
      {
        am.a("Messages - unable to get root view group from os", new Object[0]);
        return;
      }
      TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, 0.0F, a.n.getMeasuredHeight());
      localTranslateAnimation.setDuration(300L);
      localTranslateAnimation.setAnimationListener(new Animation.AnimationListener()
      {
        public final void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          o.b(o.this);
        }
        
        public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public final void onAnimationStart(Animation paramAnonymousAnimation) {}
      });
      paramWebView.setAnimation(localTranslateAnimation);
      a.n.removeView(paramWebView);
    }
    
    public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      if (!paramString.startsWith("adbinapp")) {}
      int i;
      do
      {
        do
        {
          return true;
          if (paramString.contains("cancel"))
          {
            a.e();
            a(paramWebView);
            return true;
          }
        } while (!paramString.contains("confirm"));
        a.f();
        a(paramWebView);
        i = paramString.indexOf("url=");
      } while (i < 0);
      paramString = paramString.substring(i + 4);
      HashMap localHashMap = new HashMap();
      if (am.d() == null)
      {
        paramWebView = "";
        localHashMap.put("{userId}", paramWebView);
        if (am.n() != null) {
          break label213;
        }
      }
      label213:
      for (paramWebView = "";; paramWebView = am.n())
      {
        localHashMap.put("{trackingId}", paramWebView);
        localHashMap.put("{messageId}", a.a);
        localHashMap.put("{lifetimeValue}", e.a().toString());
        paramWebView = am.a(paramString, localHashMap);
        try
        {
          paramString = new Intent("android.intent.action.VIEW");
          paramString.setData(Uri.parse(paramWebView));
          a.m.startActivity(paramString);
          return true;
        }
        catch (Exception paramWebView)
        {
          am.c("Messages - unable to launch intent from full screen message (%s)", new Object[] { paramWebView.getMessage() });
          return true;
        }
        paramWebView = am.d();
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */