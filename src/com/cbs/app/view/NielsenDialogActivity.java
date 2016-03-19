package com.cbs.app.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import java.util.HashMap;

public class NielsenDialogActivity
  extends Activity
{
  private static final String c = NielsenDialogActivity.class.getSimpleName();
  Context a;
  ProgressBar b;
  
  public final void a(String paramString1, String paramString2, String paramString3)
  {
    final Dialog localDialog = new Dialog(a);
    localDialog.requestWindowFeature(1);
    localDialog.setContentView(2130903232);
    b = ((ProgressBar)localDialog.findViewById(2131690177));
    ((TextView)localDialog.findViewById(2131689840)).setText(paramString1);
    ((Button)localDialog.findViewById(2131689841)).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        localDialog.dismiss();
      }
    });
    paramString1 = (WebView)localDialog.findViewById(2131690176);
    paramString1.setWebViewClient(new a((byte)0));
    paramString1.getSettings().setBuiltInZoomControls(false);
    paramString1.getSettings().setJavaScriptEnabled(true);
    paramString1.loadUrl(paramString2);
    localDialog.show();
    paramString1 = Action.r;
    paramString2 = new HashMap();
    paramString2.put(paramString3, paramString3);
    AnalyticsManager.a(a, paramString1, paramString2);
  }
  
  public void onBackPressed()
  {
    if (!isFinishing())
    {
      setResult(0);
      finish();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903233);
    a = this;
    setFinishOnTouchOutside(false);
    findViewById(2131690183).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        NielsenDialogActivity.a();
        if (!isFinishing())
        {
          setResult(-1);
          finish();
        }
      }
    });
    findViewById(2131690179).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = getString(2131231157);
        String str = getString(2131231321);
        a(paramAnonymousView, str, "Terms of Service");
      }
    });
    findViewById(2131690180).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = getString(2131231152);
        String str = getString(2131231104);
        a(paramAnonymousView, str, "Mobile User Agreement");
      }
    });
    findViewById(2131690181).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = getString(2131231154);
        String str = getString(2131231203);
        a(paramAnonymousView, str, "Privacy Policy");
      }
    });
    findViewById(2131690182).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = getString(2131231160);
        String str = getString(2131231369);
        a(paramAnonymousView, str, "Video Service");
      }
    });
    paramBundle = new HashMap();
    AnalyticsManager.a(a, Action.r, paramBundle);
    setResult(0);
  }
  
  private final class a
    extends WebViewClient
  {
    private boolean b = false;
    
    private a() {}
    
    public final void onPageFinished(WebView paramWebView, String paramString)
    {
      NielsenDialogActivity.a();
    }
    
    public final void onPageStarted(final WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      NielsenDialogActivity.a();
      if (!b)
      {
        new Handler().postDelayed(new Runnable()
        {
          public final void run()
          {
            paramWebView.setVisibility(0);
            b.setVisibility(8);
          }
        }, 5000L);
        b = true;
      }
    }
    
    public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      NielsenDialogActivity.a();
      return super.shouldOverrideUrlLoading(paramWebView, paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.NielsenDialogActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */