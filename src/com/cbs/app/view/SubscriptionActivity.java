package com.cbs.app.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.ConsoleMessage.MessageLevel;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.cbs.app.GlobalConstants;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.service.AuthService;
import com.cbs.app.service.AuthServiceImpl;
import com.cbs.app.service.ShowService;
import com.cbs.app.service.ShowServiceImpl;
import com.cbs.app.uri.UriHandler;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.settings.DoneListener;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import java.util.List;

public class SubscriptionActivity
  extends Activity
{
  public static String a = null;
  private static final String c = SubscriptionActivity.class.getSimpleName();
  public boolean b = false;
  private WebView d;
  
  public static void a(Context paramContext, ResponseModel paramResponseModel)
  {
    if ((paramResponseModel instanceof VideoEndpointResponse))
    {
      paramResponseModel = ((VideoEndpointResponse)paramResponseModel).getItemList();
      if ((paramResponseModel != null) && (paramResponseModel.size() > 0)) {
        VideoUtil.a(paramContext, (VideoData)paramResponseModel.get(0));
      }
    }
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903120);
    if (Util.e(this)) {}
    Object localObject2;
    Object localObject3;
    String str;
    final Object localObject1;
    switch (getResourcesgetConfigurationorientation)
    {
    default: 
      a = Util.a(this, Util.B(this), "CBS_COM");
      paramBundle = getIntent().getExtras();
      localObject2 = paramBundle.getString("url");
      localObject3 = paramBundle.getString("cid");
      paramBundle = "";
      if (localObject3 != null)
      {
        str = AuthStatusManager.getUserStatusDescription();
        localObject1 = "CIAaca721d";
        if (Util.e(this))
        {
          paramBundle = (Bundle)localObject1;
          if (str != null)
          {
            paramBundle = (Bundle)localObject1;
            if (str.equals("exsubscriber")) {
              paramBundle = "CIA05f12b7";
            }
          }
          label137:
          paramBundle = (String)localObject3 + "/?intcid=" + paramBundle;
        }
      }
      else
      {
        paramBundle = (String)localObject2 + paramBundle;
        localObject1 = UriHandler.a(this);
        if (localObject1 == null) {
          break label732;
        }
        if (!paramBundle.contains("?")) {
          break label683;
        }
        paramBundle = paramBundle + "&";
        label222:
        paramBundle = paramBundle + "ftag=" + (String)localObject1;
      }
      break;
    }
    label683:
    label706:
    label732:
    for (;;)
    {
      int i;
      if (paramBundle != null)
      {
        d = ((WebView)findViewById(2131689835));
        i = Util.b(this);
        int j = Util.c(this);
        localObject1 = d.getSettings().getUserAgentString() + " CBSWebView";
        if (Math.min(i, j) >= 980) {
          break label706;
        }
      }
      for (localObject1 = (String)localObject1 + " (small)";; localObject1 = (String)localObject1 + " (big)")
      {
        d.getSettings().setJavaScriptEnabled(true);
        d.getSettings().setUserAgentString((String)localObject1);
        d.setWebChromeClient(new a(this));
        d.setWebViewClient(new b(this));
        d.addJavascriptInterface(new b(this), "Android");
        d.loadUrl(paramBundle);
        i = Util.b(this);
        localObject1 = findViewById(2131689832);
        if ((localObject1 instanceof Button))
        {
          localObject1 = (Button)localObject1;
          ((Button)localObject1).setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              SubscriptionActivity.a();
              paramAnonymousView = findViewById(2131689835);
              if ((paramAnonymousView != null) && ((paramAnonymousView instanceof WebView)))
              {
                SubscriptionActivity.a();
                paramAnonymousView = (WebView)paramAnonymousView;
                Object localObject = findViewById(2131689831);
                if ((localObject instanceof EditText))
                {
                  localObject = ((EditText)localObject).getText().toString();
                  SubscriptionActivity.a();
                  paramAnonymousView.loadUrl((String)localObject);
                }
              }
            }
          });
          localObject2 = findViewById(2131689831);
          if ((localObject2 instanceof EditText))
          {
            localObject2 = (EditText)localObject2;
            localObject3 = new RelativeLayout.LayoutParams(i - Util.a(this, 150.0D), -2);
            ((RelativeLayout.LayoutParams)localObject3).addRule(9);
            ((EditText)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
            ((EditText)localObject2).setText(paramBundle);
            ((EditText)localObject2).setOnEditorActionListener(new TextView.OnEditorActionListener()
            {
              public final boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
              {
                if (paramAnonymousInt == 4)
                {
                  localObject1.performClick();
                  return true;
                }
                return false;
              }
            });
          }
        }
        paramBundle = findViewById(2131689833);
        if ((paramBundle instanceof Button)) {
          ((Button)paramBundle).setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              SubscriptionActivity.a();
              paramAnonymousView = findViewById(2131689835);
              if ((paramAnonymousView != null) && ((paramAnonymousView instanceof WebView)))
              {
                paramAnonymousView = (WebView)paramAnonymousView;
                paramAnonymousView.stopLoading();
                paramAnonymousView.goBack();
              }
            }
          });
        }
        paramBundle = findViewById(2131689834);
        if ((paramBundle instanceof Button)) {
          ((Button)paramBundle).setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              SubscriptionActivity.a();
              paramAnonymousView = findViewById(2131689835);
              if ((paramAnonymousView instanceof WebView)) {
                ((WebView)paramAnonymousView).reload();
              }
            }
          });
        }
        return;
        if (Build.VERSION.SDK_INT >= 8)
        {
          i = getWindowManager().getDefaultDisplay().getRotation();
          if ((i == 1) || (i == 2))
          {
            setRequestedOrientation(9);
            break;
          }
          setRequestedOrientation(1);
          break;
        }
        setRequestedOrientation(1);
        break;
        if ((str != null) && (str.equals("exsubscriber")))
        {
          paramBundle = "CIA47166c6";
          break label137;
        }
        paramBundle = "CIAb215627";
        break label137;
        paramBundle = paramBundle + "?";
        break label222;
      }
    }
  }
  
  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramKeyEvent.getAction() == 0) {}
    switch (paramInt)
    {
    default: 
      bool = super.onKeyDown(paramInt, paramKeyEvent);
      return bool;
    }
    if (d.canGoBack()) {
      d.goBack();
    }
    for (;;)
    {
      return true;
      if ((GlobalConstants.b) && (!isFinishing()))
      {
        setResult(0);
        Util.O(this);
        finish();
        return false;
      }
      setResult(0, new Intent());
      finish();
    }
  }
  
  public final void onPause()
  {
    super.onPause();
    MainApplication.c();
  }
  
  public final void onResume()
  {
    super.onResume();
    MainApplication.b();
  }
  
  protected void onStart()
  {
    super.onStart();
  }
  
  protected void onStop()
  {
    super.onStop();
    AnalyticsManager.b(this);
  }
  
  private final class a
    extends WebChromeClient
  {
    private Context b = null;
    
    public a(Context paramContext)
    {
      b = paramContext;
    }
    
    public final boolean onConsoleMessage(ConsoleMessage paramConsoleMessage)
    {
      SubscriptionActivity.a();
      new StringBuilder("onConsoleMessage: ").append(paramConsoleMessage.message());
      String str = paramConsoleMessage.message();
      if ((b instanceof Activity))
      {
        Object localObject = ((Activity)b).findViewById(2131689837);
        if ((localObject instanceof LinearLayout))
        {
          localObject = (LinearLayout)localObject;
          LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
          TextView localTextView = new TextView(b);
          if (paramConsoleMessage.messageLevel().equals(ConsoleMessage.MessageLevel.ERROR)) {
            localTextView.setTextColor(getResources().getColor(17170455));
          }
          localTextView.setText(paramConsoleMessage.sourceId() + " > " + paramConsoleMessage.lineNumber() + ":" + str);
          ((LinearLayout)localObject).addView(localTextView, 0, localLayoutParams);
        }
      }
      return super.onConsoleMessage(paramConsoleMessage);
    }
  }
  
  private final class b
    extends WebViewClient
  {
    boolean a = false;
    boolean b = false;
    private Context d = null;
    
    public b(Context paramContext)
    {
      d = paramContext;
    }
    
    public final void onPageFinished(WebView paramWebView, String paramString)
    {
      super.onPageFinished(paramWebView, paramString);
      b = true;
      SubscriptionActivity.a();
    }
    
    @JavascriptInterface
    public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      super.onPageStarted(paramWebView, paramString, paramBitmap);
      SubscriptionActivity.a();
      paramWebView = paramWebView.findViewById(2131689831);
      if ((paramWebView instanceof EditText)) {
        ((EditText)paramWebView).setText(paramString);
      }
      b = false;
    }
    
    public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
    {
      super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
      SubscriptionActivity.a();
      new StringBuilder("onReceivedError: ").append(paramString2).append(" errorCode: ").append(paramInt).append(" descr: ").append(paramString1);
      paramWebView.clearSslPreferences();
      a = true;
    }
    
    public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
    {
      super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
      SubscriptionActivity.a();
      new StringBuilder("onReceivedSslError:  errorCode: ").append(paramSslError.toString()).append("handler: ").append(paramSslErrorHandler.toString());
      a = true;
    }
    
    @JavascriptInterface
    public final boolean shouldOverrideUrlLoading(final WebView paramWebView, final String paramString)
    {
      super.shouldOverrideUrlLoading(paramWebView, paramString);
      SubscriptionActivity.a();
      paramWebView = Uri.parse(paramString);
      a = false;
      Object localObject;
      if (!b)
      {
        SubscriptionActivity.a();
        if ((!paramWebView.getScheme().equals("cbs-svod")) || (!paramWebView.getHost().equals("done"))) {
          break label281;
        }
        SubscriptionActivity.a();
        localObject = Util.a(d, Util.B(d), "CBS_COM");
        if (localObject == null) {
          break label183;
        }
        if (!((String)localObject).equals(SubscriptionActivity.a))
        {
          SubscriptionActivity.a();
          new AuthServiceImpl().b(d);
        }
        AccountUIHelper.a(d, false, new DoneListener()
        {
          public final void a(String paramAnonymousString)
          {
            SubscriptionActivity.a();
            new StringBuilder("urlObj: ").append(paramWebView.toString());
            if ((SubscriptionActivity.b.a(SubscriptionActivity.b.this) instanceof Activity))
            {
              SubscriptionActivity.a();
              if (!paramString.contains("demoContentId")) {
                break label102;
              }
              SubscriptionActivity.a();
              paramAnonymousString = paramWebView.getQueryParameter("demoContentId");
              localObject = new ShowServiceImpl();
              if (paramAnonymousString != null) {
                ((ShowService)localObject).g(SubscriptionActivity.b.a(SubscriptionActivity.b.this), paramAnonymousString, new ResponseModelListener()
                {
                  public final void a() {}
                  
                  public final void a(ResponseModel paramAnonymous2ResponseModel)
                  {
                    SubscriptionActivity.a();
                    SubscriptionActivity.a(SubscriptionActivity.b.a(SubscriptionActivity.b.this), paramAnonymous2ResponseModel);
                  }
                });
              }
            }
            label102:
            do
            {
              return;
              SubscriptionActivity.a();
            } while (!(SubscriptionActivity.b.a(SubscriptionActivity.b.this) instanceof Activity));
            paramAnonymousString = (Activity)SubscriptionActivity.b.a(SubscriptionActivity.b.this);
            Object localObject = new Intent();
            ((Intent)localObject).putExtra("url", paramWebView.toString());
            paramAnonymousString.setResult(-1, (Intent)localObject);
            paramAnonymousString.finish();
          }
        }, null, null);
      }
      for (;;)
      {
        b = true;
        SubscriptionActivity.a();
        new StringBuilder("Returning value : ").append(b);
        SubscriptionActivity.a();
        new StringBuilder("**** retVal: ").append(b);
        return b;
        label183:
        SubscriptionActivity.a();
        if (!paramString.contains("demoContentId"))
        {
          paramString = (Activity)d;
          localObject = new Intent();
          ((Intent)localObject).putExtra("url", paramWebView.toString());
          paramString.setResult(-1, (Intent)localObject);
          paramString.finish();
        }
        else
        {
          SubscriptionActivity.a();
          paramWebView = paramWebView.getQueryParameter("demoContentId");
          paramString = new ShowServiceImpl();
          if (paramWebView != null) {
            paramString.g(d, paramWebView, new ResponseModelListener()
            {
              public final void a() {}
              
              public final void a(ResponseModel paramAnonymousResponseModel)
              {
                SubscriptionActivity.a();
                SubscriptionActivity.a(SubscriptionActivity.b.a(SubscriptionActivity.b.this), paramAnonymousResponseModel);
              }
            });
          }
        }
      }
      label281:
      if ((paramWebView.getScheme().equals("cbs-svod")) && (paramWebView.getHost().equals("tos")))
      {
        paramString = new Intent();
        paramString.putExtra("url", paramWebView.toString());
        paramWebView = (Activity)d;
        paramWebView.setResult(-1, paramString);
        paramWebView.finish();
      }
      for (;;)
      {
        b = true;
        break;
        if (!paramWebView.getScheme().equals("cbs")) {
          break;
        }
        SubscriptionActivity.a();
        if ((d instanceof Activity))
        {
          paramWebView = (Activity)d;
          localObject = new Intent();
          ((Intent)localObject).putExtra("url", paramString);
          paramWebView.setResult(-1, (Intent)localObject);
          paramWebView.finish();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SubscriptionActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */