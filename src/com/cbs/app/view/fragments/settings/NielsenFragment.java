package com.cbs.app.view.fragments.settings;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.utils.Preferences;
import com.nielsen.app.sdk.l;
import com.nielsen.app.sdk.n;
import java.util.HashMap;

public class NielsenFragment
  extends AbstractAsyncFragment
{
  protected static final String h = NielsenFragment.class.getSimpleName();
  private l i;
  private WebView j;
  private String k = null;
  private String l = "{\"appName\" : \"CBS\", \"appVersion\" : \"2.9.0\", \"sfcode\" : \"us\", \"appId\" : \"P1576C728-1641-4B4C-AE19-343CF249BCA8\",  \"nol_devDebug\": \"true\" }";
  
  private void f()
  {
    k = Preferences.b(getActivity(), "nielsen_settings_url", null);
    if ((k != null) && (!TextUtils.isEmpty(k)))
    {
      new StringBuilder("nielsen urlStr nielsenSdk is not null: ").append(k);
      j.loadUrl(k);
      return;
    }
    d();
    a();
  }
  
  public final void a()
  {
    Object localObject = new AlertDialog.Builder(new ContextThemeWrapper(g, 2131427561));
    ((AlertDialog.Builder)localObject).setMessage("The Nielsen site is unreachable at this time. Please try again later.").setTitle("CBS").setPositiveButton("Ok", new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
        e();
      }
    });
    localObject = ((AlertDialog.Builder)localObject).create();
    ((Dialog)localObject).setCancelable(false);
    ((Dialog)localObject).show();
  }
  
  public final void e()
  {
    ((SettingsFragment)g.getSupportFragmentManager().findFragmentByTag("settings_fragment")).e();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903263, paramViewGroup, false);
    j = ((WebView)paramLayoutInflater.findViewById(2131690277));
    j.setWebViewClient(new a((byte)0));
    j.setInitialScale(90);
    paramViewGroup = j.getSettings();
    paramViewGroup.setBuiltInZoomControls(true);
    paramViewGroup.setDisplayZoomControls(false);
    paramViewGroup.setSupportZoom(true);
    paramViewGroup.setJavaScriptEnabled(true);
    i = getApplicationContext().getNielsenSdk();
    b();
    if (l.b())
    {
      f();
      return paramLayoutInflater;
    }
    l.a(getActivity(), l, new n()
    {
      public final void onAppSdkEvent(long paramAnonymousLong, int paramAnonymousInt, String paramAnonymousString)
      {
        paramAnonymousString = NielsenFragment.h;
      }
    });
    new Handler().postDelayed(new Runnable()
    {
      public final void run()
      {
        NielsenFragment.a(NielsenFragment.this);
      }
    }, 1000L);
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    Object localObject = getView();
    if (localObject != null)
    {
      localObject = (WebView)((View)localObject).findViewById(2131690277);
      if (localObject != null)
      {
        ((WebView)localObject).loadUrl("about:blank");
        ((WebView)localObject).destroy();
      }
    }
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
  }
  
  public void onResume()
  {
    super.onResume();
    d = Action.q;
    HashMap localHashMap = new HashMap();
    localHashMap.put("appState", "cbscom:Settings Page");
    localHashMap.put("eVar2", "us");
    localHashMap.put("eVar3", "native app");
    localHashMap.put("eVar5", "cbsicsapp");
    localHashMap.put("rsid", "cbsicsapp");
    AnalyticsManager.a(g, d, localHashMap);
  }
  
  private final class a
    extends WebViewClient
  {
    private a() {}
    
    public final void onPageFinished(WebView paramWebView, String paramString)
    {
      paramWebView = NielsenFragment.h;
      paramWebView = NielsenFragment.h;
      new StringBuilder("comparing ").append(paramString).append(" to ").append(NielsenFragment.c(NielsenFragment.this));
      if ((NielsenFragment.c(NielsenFragment.this) != null) && (paramString.equals(NielsenFragment.c(NielsenFragment.this))))
      {
        paramWebView = NielsenFragment.h;
        d();
        NielsenFragment.a(NielsenFragment.this, Action.s);
        paramWebView = new HashMap();
        paramWebView.put("appState", "cbscom:Settings Page");
        paramWebView.put("eVar2", "us");
        paramWebView.put("eVar3", "native app");
        paramWebView.put("eVar5", "cbsicsapp");
        paramWebView.put("rsid", "cbsicsapp");
        AnalyticsManager.a(NielsenFragment.e(NielsenFragment.this), NielsenFragment.f(NielsenFragment.this), paramWebView);
      }
    }
    
    public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      paramWebView = NielsenFragment.h;
    }
    
    public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
    {
      super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
      paramWebView = NielsenFragment.h;
      d();
      a();
    }
    
    public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
    {
      super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
      paramWebView = NielsenFragment.h;
      new StringBuilder("onReceivedSslError: ").append(paramSslError.getPrimaryError());
      d();
      a();
    }
    
    public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      paramWebView = NielsenFragment.h;
      if (paramString.contains("close"))
      {
        paramWebView = NielsenFragment.h;
        e();
      }
      for (;;)
      {
        return true;
        if (NielsenFragment.b(NielsenFragment.this) != null)
        {
          paramWebView = NielsenFragment.h;
          NielsenFragment.b(NielsenFragment.this);
          l.d(paramString);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.NielsenFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */