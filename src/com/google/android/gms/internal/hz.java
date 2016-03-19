package com.google.android.gms.internal;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.os.Message;
import android.view.View;
import android.view.WindowManager.BadTokenException;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebStorage.QuotaUpdater;
import android.webkit.WebView;
import android.webkit.WebView.WebViewTransport;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.overlay.c;
import com.google.android.gms.ads.internal.util.client.b;

@fs
public class hz
  extends WebChromeClient
{
  private final hs a;
  
  public hz(hs paramhs)
  {
    a = paramhs;
  }
  
  private static Context a(WebView paramWebView)
  {
    if (!(paramWebView instanceof hs)) {
      paramWebView = paramWebView.getContext();
    }
    hs localhs;
    Activity localActivity;
    do
    {
      return paramWebView;
      localhs = (hs)paramWebView;
      localActivity = localhs.e();
      paramWebView = localActivity;
    } while (localActivity != null);
    return localhs.getContext();
  }
  
  private static boolean a(Context paramContext, String paramString1, String paramString2, String paramString3, JsResult paramJsResult, JsPromptResult paramJsPromptResult, boolean paramBoolean)
  {
    try
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
      localBuilder.setTitle(paramString1);
      if (paramBoolean)
      {
        paramString1 = new LinearLayout(paramContext);
        paramString1.setOrientation(1);
        paramJsResult = new TextView(paramContext);
        paramJsResult.setText(paramString2);
        paramContext = new EditText(paramContext);
        paramContext.setText(paramString3);
        paramString1.addView(paramJsResult);
        paramString1.addView(paramContext);
        localBuilder.setView(paramString1).setPositiveButton(17039370, new hz.6(paramJsPromptResult, paramContext)).setNegativeButton(17039360, new hz.5(paramJsPromptResult)).setOnCancelListener(new hz.4(paramJsPromptResult)).create().show();
        return true;
      }
      localBuilder.setMessage(paramString2).setPositiveButton(17039370, new hz.3(paramJsResult)).setNegativeButton(17039360, new hz.2(paramJsResult)).setOnCancelListener(new hz.1(paramJsResult)).create().show();
      return true;
    }
    catch (WindowManager.BadTokenException paramContext)
    {
      b.a(5);
    }
    return true;
  }
  
  protected final void a(View paramView, int paramInt, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    c localc = a.h();
    if (localc == null)
    {
      b.a(5);
      paramCustomViewCallback.onCustomViewHidden();
      return;
    }
    localc.a(paramView, paramCustomViewCallback);
    localc.a(paramInt);
  }
  
  public final void onCloseWindow(WebView paramWebView)
  {
    if (!(paramWebView instanceof hs))
    {
      b.a(5);
      return;
    }
    paramWebView = ((hs)paramWebView).h();
    if (paramWebView == null)
    {
      b.a(5);
      return;
    }
    paramWebView.a();
  }
  
  public final boolean onConsoleMessage(ConsoleMessage paramConsoleMessage)
  {
    String str = "JS: " + paramConsoleMessage.message() + " (" + paramConsoleMessage.sourceId() + ":" + paramConsoleMessage.lineNumber() + ")";
    if (str.contains("Application Cache")) {
      return super.onConsoleMessage(paramConsoleMessage);
    }
    switch (hz.7.a[paramConsoleMessage.messageLevel().ordinal()])
    {
    default: 
      b.a(4);
    }
    for (;;)
    {
      return super.onConsoleMessage(paramConsoleMessage);
      b.a(str);
      continue;
      b.a(5);
      continue;
      b.a(4);
      continue;
      b.a(3);
    }
  }
  
  public final boolean onCreateWindow(WebView paramWebView, boolean paramBoolean1, boolean paramBoolean2, Message paramMessage)
  {
    WebView.WebViewTransport localWebViewTransport = (WebView.WebViewTransport)obj;
    paramWebView = new WebView(paramWebView.getContext());
    paramWebView.setWebViewClient(a.k());
    localWebViewTransport.setWebView(paramWebView);
    paramMessage.sendToTarget();
    return true;
  }
  
  public final void onExceededDatabaseQuota(String paramString1, String paramString2, long paramLong1, long paramLong2, long paramLong3, WebStorage.QuotaUpdater paramQuotaUpdater)
  {
    long l = 5242880L - paramLong3;
    if (l <= 0L)
    {
      paramQuotaUpdater.updateQuota(paramLong1);
      return;
    }
    if (paramLong1 == 0L)
    {
      if ((paramLong2 <= l) && (paramLong2 <= 1048576L)) {}
      for (;;)
      {
        paramQuotaUpdater.updateQuota(paramLong2);
        return;
        paramLong2 = 0L;
      }
    }
    if (paramLong2 == 0L) {
      paramLong3 = Math.min(Math.min(131072L, l) + paramLong1, 1048576L);
    }
    for (;;)
    {
      paramLong2 = paramLong3;
      break;
      paramLong3 = paramLong1;
      if (paramLong2 <= Math.min(1048576L - paramLong1, l)) {
        paramLong3 = paramLong1 + paramLong2;
      }
    }
  }
  
  public final void onGeolocationPermissionsShowPrompt(String paramString, GeolocationPermissions.Callback paramCallback)
  {
    if (paramCallback != null)
    {
      o.e();
      if (!gw.a(a.getContext().getPackageManager(), a.getContext().getPackageName(), "android.permission.ACCESS_FINE_LOCATION"))
      {
        o.e();
        if (!gw.a(a.getContext().getPackageManager(), a.getContext().getPackageName(), "android.permission.ACCESS_COARSE_LOCATION")) {
          break label90;
        }
      }
    }
    label90:
    for (boolean bool = true;; bool = false)
    {
      paramCallback.invoke(paramString, bool, true);
      return;
    }
  }
  
  public final void onHideCustomView()
  {
    c localc = a.h();
    if (localc == null)
    {
      b.a(5);
      return;
    }
    localc.b();
  }
  
  public final boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return a(a(paramWebView), paramString1, paramString2, null, paramJsResult, null, false);
  }
  
  public final boolean onJsBeforeUnload(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return a(a(paramWebView), paramString1, paramString2, null, paramJsResult, null, false);
  }
  
  public final boolean onJsConfirm(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return a(a(paramWebView), paramString1, paramString2, null, paramJsResult, null, false);
  }
  
  public final boolean onJsPrompt(WebView paramWebView, String paramString1, String paramString2, String paramString3, JsPromptResult paramJsPromptResult)
  {
    return a(a(paramWebView), paramString1, paramString2, paramString3, null, paramJsPromptResult, true);
  }
  
  public final void onReachedMaxAppCacheSize(long paramLong1, long paramLong2, WebStorage.QuotaUpdater paramQuotaUpdater)
  {
    paramLong1 = 131072L + paramLong1;
    if (5242880L - paramLong2 < paramLong1)
    {
      paramQuotaUpdater.updateQuota(0L);
      return;
    }
    paramQuotaUpdater.updateQuota(paramLong1);
  }
  
  public final void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    a(paramView, -1, paramCustomViewCallback);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */