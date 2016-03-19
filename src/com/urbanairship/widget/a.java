package com.urbanairship.widget;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.HttpAuthHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.urbanairship.actions.ActionValue;
import com.urbanairship.actions.f;
import com.urbanairship.actions.g;
import com.urbanairship.c.b;
import com.urbanairship.d.h;
import com.urbanairship.j;
import com.urbanairship.json.JsonValue;
import com.urbanairship.richpush.RichPushManager;
import com.urbanairship.richpush.e;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import org.json.JSONObject;

public class a
  extends WebViewClient
{
  private static SimpleDateFormat d;
  private final Map<String, a.a> a = new HashMap();
  private com.urbanairship.actions.c b;
  private final g c;
  
  public a()
  {
    this(new g());
  }
  
  private a(g paramg)
  {
    c = paramg;
  }
  
  private static com.urbanairship.richpush.c a(WebView paramWebView)
  {
    if ((paramWebView instanceof UAWebView)) {
      return ((UAWebView)paramWebView).a();
    }
    return null;
  }
  
  private static String a(String paramString1, String paramString2)
  {
    if (paramString2 == null) {}
    for (paramString2 = "null";; paramString2 = JSONObject.quote(paramString2)) {
      return String.format(Locale.US, "_UAirship.%s = function(){return %s;};", new Object[] { paramString1, paramString2 });
    }
  }
  
  private static Map<String, List<ActionValue>> a(Uri paramUri, boolean paramBoolean)
  {
    HashMap localHashMap1 = new HashMap();
    paramUri = paramUri.getEncodedQuery();
    Object localObject2;
    Object localObject1;
    if (!h.a(paramUri))
    {
      localObject2 = paramUri.split("&");
      int j = localObject2.length;
      int i = 0;
      if (i < j)
      {
        localObject1 = localObject2[i].split("=");
        if (localObject1.length > 0)
        {
          paramUri = Uri.decode(localObject1[0]);
          label65:
          if (localObject1.length < 2) {
            break label146;
          }
        }
        label146:
        for (localObject1 = Uri.decode(localObject1[1]);; localObject1 = null)
        {
          if (!h.a(paramUri))
          {
            if (!localHashMap1.containsKey(paramUri)) {
              localHashMap1.put(paramUri, new ArrayList());
            }
            ((List)localHashMap1.get(paramUri)).add(localObject1);
          }
          i += 1;
          break;
          paramUri = null;
          break label65;
        }
      }
    }
    HashMap localHashMap2 = new HashMap();
    Iterator localIterator1 = localHashMap1.keySet().iterator();
    if (localIterator1.hasNext())
    {
      localObject1 = (String)localIterator1.next();
      localArrayList = new ArrayList();
      if (localHashMap1.get(localObject1) != null) {}
    }
    while (localHashMap2.isEmpty())
    {
      ArrayList localArrayList;
      return null;
      Iterator localIterator2 = ((List)localHashMap1.get(localObject1)).iterator();
      if (localIterator2.hasNext())
      {
        localObject2 = (String)localIterator2.next();
        if (paramBoolean) {}
        for (;;)
        {
          try
          {
            paramUri = JsonValue.c((String)localObject2);
            localArrayList.add(new ActionValue(paramUri));
          }
          catch (com.urbanairship.json.a paramUri)
          {
            new StringBuilder("Invalid json. Unable to create action argument ").append((String)localObject1).append(" with args: ").append((String)localObject2);
            return null;
          }
          paramUri = JsonValue.b((String)localObject2);
        }
      }
      localHashMap2.put(localObject1, localArrayList);
      break;
    }
    return localHashMap2;
  }
  
  private void a(WebView paramWebView, Map<String, List<ActionValue>> paramMap)
  {
    if (paramMap == null) {
      return;
    }
    Bundle localBundle = new Bundle();
    paramWebView = a(paramWebView);
    if (paramWebView != null) {
      localBundle.putString("com.urbanairship.RICH_PUSH_ID_METADATA", paramWebView.a());
    }
    paramWebView = paramMap.keySet().iterator();
    while (paramWebView.hasNext())
    {
      String str = (String)paramWebView.next();
      Iterator localIterator = ((List)paramMap.get(str)).iterator();
      while (localIterator.hasNext())
      {
        ActionValue localActionValue = (ActionValue)localIterator.next();
        f.a(str).a(localActionValue).a(localBundle).a(com.urbanairship.actions.p.d).a(new a.1(this));
      }
    }
  }
  
  private boolean a(WebView paramWebView, String paramString)
  {
    if ((paramWebView == null) || (paramString == null)) {
      return false;
    }
    Object localObject1 = Uri.parse(paramString);
    if ((((Uri)localObject1).getHost() == null) || (!((Uri)localObject1).getScheme().equals("uairship")) || (!b(paramWebView.getUrl()))) {
      return false;
    }
    Object localObject2 = ((Uri)localObject1).getHost();
    int i = -1;
    switch (((String)localObject2).hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        new StringBuilder("Unrecognized command: ").append(((Uri)localObject1).getHost()).append(" for URL: ").append(paramString);
        return false;
        if (((String)localObject2).equals("run-basic-actions"))
        {
          i = 0;
          continue;
          if (((String)localObject2).equals("run-actions"))
          {
            i = 1;
            continue;
            if (((String)localObject2).equals("android-run-action-cb"))
            {
              i = 2;
              continue;
              if (((String)localObject2).equals("close")) {
                i = 3;
              }
            }
          }
        }
        break;
      }
    }
    a(paramWebView, a((Uri)localObject1, true));
    return true;
    a(paramWebView, a((Uri)localObject1, false));
    return true;
    localObject1 = ((Uri)localObject1).getPathSegments();
    if (((List)localObject1).size() == 3)
    {
      new StringBuilder("Action: ").append((String)((List)localObject1).get(0)).append(", Args: ").append((String)((List)localObject1).get(1)).append(", Callback: ").append((String)((List)localObject1).get(2));
      paramString = (String)((List)localObject1).get(0);
      localObject2 = (String)((List)localObject1).get(1);
      localObject1 = (String)((List)localObject1).get(2);
    }
    for (;;)
    {
      try
      {
        localObject2 = new ActionValue(JsonValue.b((String)localObject2));
        Bundle localBundle = new Bundle();
        com.urbanairship.richpush.c localc = a(paramWebView);
        if (localc != null) {
          localBundle.putString("com.urbanairship.RICH_PUSH_ID_METADATA", localc.a());
        }
        f.a(paramString).a(localBundle).a((ActionValue)localObject2).a(com.urbanairship.actions.p.d).a(new a.2(this, paramString, paramWebView, (String)localObject1));
      }
      catch (com.urbanairship.json.a paramString)
      {
        b(paramWebView, "Unable to decode arguments payload", new ActionValue(), (String)localObject1);
        continue;
      }
      return true;
      j.a("Unable to run action, invalid number of arguments.");
    }
    paramWebView.getRootView().dispatchKeyEvent(new KeyEvent(0, 4));
    paramWebView.getRootView().dispatchKeyEvent(new KeyEvent(1, 4));
    return true;
  }
  
  @SuppressLint({"NewAPI"})
  private static void b(WebView paramWebView, String paramString1, ActionValue paramActionValue, String paramString2)
  {
    paramString2 = String.format("'%s'", new Object[] { paramString2 });
    if (paramString1 == null) {}
    for (paramString1 = "null";; paramString1 = String.format(Locale.US, "new Error(%s)", new Object[] { JSONObject.quote(paramString1) }))
    {
      paramActionValue = paramActionValue.toString();
      paramString1 = String.format(Locale.US, "UAirship.finishAction(%s, %s, %s);", new Object[] { paramString1, paramActionValue, paramString2 });
      if (Build.VERSION.SDK_INT < 19) {
        break;
      }
      paramWebView.evaluateJavascript(paramString1, null);
      return;
    }
    paramWebView.loadUrl("javascript:" + paramString1);
  }
  
  private static boolean b(String paramString)
  {
    return com.urbanairship.p.a().s().a(paramString);
  }
  
  final void a(String paramString)
  {
    a.remove(paramString);
  }
  
  final void a(String paramString1, String paramString2, String paramString3)
  {
    a.put(paramString1, new a.a(paramString2, paramString3));
  }
  
  public void onLoadResource(WebView paramWebView, String paramString)
  {
    a(paramWebView, paramString);
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    if (paramWebView == null) {
      return;
    }
    if (!b(paramString))
    {
      new StringBuilder("UAWebViewClient - ").append(paramString).append(" is not a white listed URL. Urban Airship Javascript interface will not be accessible.");
      return;
    }
    com.urbanairship.richpush.c localc = a(paramWebView);
    if (d == null)
    {
      paramString = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSSZ", Locale.US);
      d = paramString;
      paramString.setTimeZone(TimeZone.getTimeZone("UTC"));
    }
    StringBuilder localStringBuilder1 = new StringBuilder("var _UAirship = {};");
    StringBuilder localStringBuilder2 = localStringBuilder1.append(a("getDeviceModel", Build.MODEL));
    if (localc != null)
    {
      paramString = localc.a();
      localStringBuilder2 = localStringBuilder2.append(a("getMessageId", paramString));
      if (localc == null) {
        break label280;
      }
      paramString = localc.c();
      label138:
      localStringBuilder2 = localStringBuilder2.append(a("getMessageTitle", paramString));
      if (localc == null) {
        break label285;
      }
      paramString = d.format(localc.d());
      label169:
      paramString = localStringBuilder2.append(a("getMessageSentDate", paramString));
      if (localc == null) {
        break label290;
      }
    }
    label280:
    label285:
    label290:
    for (long l = localc.e();; l = -1L)
    {
      paramString.append(String.format(Locale.US, "_UAirship.%s = function(){return %d;};", new Object[] { "getMessageSentDateMS", Long.valueOf(l) })).append(a("getUserId", com.urbanairship.p.a().n().b().b()));
      localStringBuilder1.append(com.urbanairship.c.a.a());
      paramString = localStringBuilder1.toString();
      if (Build.VERSION.SDK_INT < 19) {
        break label297;
      }
      paramWebView.evaluateJavascript(paramString, null);
      return;
      paramString = null;
      break;
      paramString = null;
      break label138;
      paramString = null;
      break label169;
    }
    label297:
    paramWebView.loadUrl("javascript:" + paramString);
  }
  
  public void onReceivedHttpAuthRequest(WebView paramWebView, HttpAuthHandler paramHttpAuthHandler, String paramString1, String paramString2)
  {
    paramWebView = (a.a)a.get(paramString1);
    if (paramWebView != null) {
      paramHttpAuthHandler.proceed(a, b);
    }
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    return a(paramWebView, paramString);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.widget.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */