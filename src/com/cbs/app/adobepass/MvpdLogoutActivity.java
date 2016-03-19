package com.cbs.app.adobepass;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.adobe.adobepass.accessenabler.api.a;
import com.cbs.app.view.NavigationActivity;
import java.net.URLDecoder;

public class MvpdLogoutActivity
  extends AppCompatActivity
{
  private View a;
  private final WebViewClient b = new WebViewClient()
  {
    public final void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
    {
      super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
    }
    
    public final void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
    {
      super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
    }
    
    public final void onReceivedError(WebView paramAnonymousWebView, int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2)
    {
      super.onReceivedError(paramAnonymousWebView, paramAnonymousInt, paramAnonymousString1, paramAnonymousString2);
    }
    
    public final void onReceivedSslError(WebView paramAnonymousWebView, SslErrorHandler paramAnonymousSslErrorHandler, SslError paramAnonymousSslError)
    {
      paramAnonymousSslErrorHandler.proceed();
    }
    
    public final boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
    {
      if (paramAnonymousString.equals(URLDecoder.decode(a.a)))
      {
        Intent localIntent = new Intent(MvpdLogoutActivity.this, NavigationActivity.class);
        setResult(-1, localIntent);
        finish();
      }
      paramAnonymousWebView.loadUrl(paramAnonymousString);
      return false;
    }
  };
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent().getStringExtra("url");
    setContentView(2130903172);
    WebView localWebView = (WebView)findViewById(2131690023);
    localWebView.setWebViewClient(b);
    localWebView.setWebChromeClient(new a((byte)0));
    WebSettings localWebSettings = localWebView.getSettings();
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setJavaScriptCanOpenWindowsAutomatically(true);
    localWebView.loadUrl(paramBundle);
    paramBundle = getSupportActionBar();
    paramBundle.setLogo(2130837800);
    paramBundle.setDisplayShowTitleEnabled(false);
    paramBundle.setDisplayUseLogoEnabled(true);
    paramBundle.setDisplayShowHomeEnabled(true);
    paramBundle.setDisplayHomeAsUpEnabled(true);
    a = findViewById(2131690024);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    finish();
    return true;
  }
  
  private final class a
    extends WebChromeClient
  {
    private a() {}
    
    public final void onProgressChanged(WebView paramWebView, int paramInt)
    {
      super.onProgressChanged(paramWebView, paramInt);
      paramWebView = MvpdLogoutActivity.a(MvpdLogoutActivity.this);
      if ((paramInt > 0) && (paramInt < 100)) {}
      for (paramInt = 0;; paramInt = 8)
      {
        paramWebView.setVisibility(paramInt);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adobepass.MvpdLogoutActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */