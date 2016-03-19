package com.urbanairship.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.MotionEvent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.urbanairship.R.styleable;
import com.urbanairship.p;
import com.urbanairship.richpush.RichPushManager;
import com.urbanairship.richpush.c;
import com.urbanairship.richpush.e;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class UAWebView
  extends WebView
{
  private WebViewClient a;
  private String b;
  private c c;
  
  public UAWebView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public UAWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842885);
  }
  
  public UAWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (!isInEditMode()) {
      a(paramContext, paramAttributeSet, paramInt, 0);
    }
  }
  
  @TargetApi(21)
  public UAWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    if (!isInEditMode()) {
      a(paramContext, paramAttributeSet, paramInt1, paramInt2);
    }
  }
  
  private static String a(String paramString1, String paramString2)
  {
    paramString1 = paramString1 + ":" + paramString2;
    return "Basic " + Base64.encodeToString(paramString1.getBytes(), 2);
  }
  
  @SuppressLint({"NewApi", "SetJavaScriptEnabled"})
  private void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    WebSettings localWebSettings = getSettings();
    if (Build.VERSION.SDK_INT >= 7)
    {
      localWebSettings.setAppCacheEnabled(true);
      File localFile = new File(p.h().getCacheDir(), "urbanairship");
      if (!localFile.exists()) {
        localFile.mkdirs();
      }
      localWebSettings.setAppCachePath(localFile.getAbsolutePath());
      localWebSettings.setDomStorageEnabled(true);
    }
    if ((Build.VERSION.SDK_INT >= 21) && (paramAttributeSet != null)) {
      paramContext = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, R.styleable.UAWebView, paramInt1, paramInt2);
    }
    try
    {
      localWebSettings.setMixedContentMode(paramContext.getInteger(R.styleable.UAWebView_mixed_content_mode, 2));
      paramContext.recycle();
      localWebSettings.setAllowFileAccess(true);
      localWebSettings.setJavaScriptEnabled(true);
      localWebSettings.setCacheMode(-1);
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  private void a(String paramString1, String paramString2, String paramString3)
  {
    if (paramString1 == null) {}
    do
    {
      return;
      b = paramString1;
    } while ((a == null) || (!(a instanceof a)));
    ((a)a).a(Uri.parse(paramString1).getHost(), paramString2, paramString3);
  }
  
  @SuppressLint({"NewApi"})
  private void b()
  {
    c = null;
    if (a == null) {
      setWebViewClient(new a());
    }
    if ((b != null) && (a != null) && ((a instanceof a)))
    {
      ((a)a).a(b);
      b = null;
    }
  }
  
  public final c a()
  {
    return c;
  }
  
  @SuppressLint({"NewApi"})
  public final void a(c paramc)
  {
    if (paramc == null) {
      return;
    }
    e locale = p.a().n().b();
    if (Build.VERSION.SDK_INT >= 8)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("Authorization", a(locale.b(), locale.c()));
      loadUrl(paramc.b(), localHashMap);
    }
    for (;;)
    {
      c = paramc;
      a(paramc.b(), locale.b(), locale.c());
      return;
      loadUrl(paramc.b());
    }
  }
  
  public void loadData(String paramString1, String paramString2, String paramString3)
  {
    b();
    super.loadData(paramString1, paramString2, paramString3);
  }
  
  public void loadDataWithBaseURL(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    b();
    super.loadDataWithBaseURL(paramString1, paramString2, paramString3, paramString4, paramString5);
  }
  
  public void loadUrl(String paramString)
  {
    b();
    if ((paramString != null) && (paramString.startsWith(alg)))
    {
      com.urbanairship.a locala;
      if (Build.VERSION.SDK_INT >= 8)
      {
        locala = p.a().l();
        HashMap localHashMap = new HashMap();
        localHashMap.put("Authorization", a(locala.a(), locala.b()));
        super.loadUrl(paramString, localHashMap);
      }
      for (;;)
      {
        locala = p.a().l();
        a(paramString, locala.a(), locala.b());
        return;
        super.loadUrl(paramString);
      }
    }
    super.loadUrl(paramString);
  }
  
  public void loadUrl(String paramString, Map<String, String> paramMap)
  {
    b();
    super.loadUrl(paramString, paramMap);
    if ((paramString != null) && (paramString.startsWith(alg)))
    {
      paramMap = p.a().l();
      a(paramString, paramMap.a(), paramMap.b());
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      int i = getScrollY();
      int j = getScrollX();
      onScrollChanged(j, i, j, i);
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setWebViewClient(WebViewClient paramWebViewClient)
  {
    a = paramWebViewClient;
    super.setWebViewClient(paramWebViewClient);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.widget.UAWebView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */