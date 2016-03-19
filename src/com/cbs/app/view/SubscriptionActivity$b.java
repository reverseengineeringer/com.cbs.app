package com.cbs.app.view;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.service.AuthService;
import com.cbs.app.service.AuthServiceImpl;
import com.cbs.app.service.ShowService;
import com.cbs.app.service.ShowServiceImpl;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.settings.DoneListener;
import com.cbs.app.view.utils.Util;

final class SubscriptionActivity$b
  extends WebViewClient
{
  boolean a = false;
  boolean b = false;
  private Context d = null;
  
  public SubscriptionActivity$b(SubscriptionActivity paramSubscriptionActivity, Context paramContext)
  {
    d = paramContext;
  }
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    c.b = true;
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
    c.b = false;
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

/* Location:
 * Qualified Name:     com.cbs.app.view.SubscriptionActivity.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */