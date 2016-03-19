package com.cbs.app.view;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cbs.app.service.social.OAuthBuilder;
import com.cbs.app.service.social.TwitterOAuthImpl;
import com.cbs.app.service.social.TwitterOAuthResponse;
import com.cbs.app.service.social.TwitterOAuthTokens;
import com.cbs.app.view.utils.Util;
import java.util.HashMap;

public class TwitterWebOAuthActivity
  extends AbstractWebViewActivity
  implements TwitterOAuthResponse
{
  private TwitterOAuthImpl c;
  private OAuthBuilder d;
  private String e = "";
  
  private void a()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("message", "twitter_oauth_success");
    setResult(-1, localIntent);
    if (!isFinishing()) {
      finish();
    }
  }
  
  public final void a(String paramString, int paramInt)
  {
    paramString = paramString.split("&");
    HashMap localHashMap = new HashMap();
    int j = paramString.length;
    int i = 0;
    while (i < j)
    {
      String[] arrayOfString = paramString[i];
      if (arrayOfString.contains("="))
      {
        arrayOfString = arrayOfString.split("=");
        localHashMap.put(arrayOfString[0], arrayOfString[1]);
      }
      i += 1;
    }
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      e = OAuthBuilder.a((String)localHashMap.get("oauth_token"));
      b.setWebViewClient(new a((byte)0));
      b.loadUrl(e);
      return;
    }
    Util.a(this, localHashMap);
    a();
  }
  
  public final void b(String paramString, int paramInt)
  {
    Log.e(a, paramString);
    if (paramInt == 0) {
      new AlertDialog.Builder(new ContextThemeWrapper(this, 2131427561)).setTitle("CBS").setMessage("We are having issues connecting with Twitter. Sometimes this is associated with a bad time setting on your device. Please change your device settings  to \"Automatic Date and Time\" or you can correct the date manually.").setOnKeyListener(new DialogInterface.OnKeyListener()
      {
        public final boolean onKey(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
        {
          if (paramAnonymousInt == 4)
          {
            paramAnonymousDialogInterface.dismiss();
            finish();
          }
          return true;
        }
      }).setNegativeButton("Close", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
          finish();
        }
      }).setPositiveButton("Go to Settings", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
          finish();
          startActivity(new Intent("android.settings.DATE_SETTINGS"));
        }
      }).create().show();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    d = new OAuthBuilder(this);
    c = new TwitterOAuthImpl();
    c.setTwitterOAuthResponse(this);
  }
  
  protected void onDestroy()
  {
    c.a();
    b.loadUrl("about:blank");
    b.destroy();
    b = null;
    Util.a(this);
    super.onDestroy();
  }
  
  public void onStart()
  {
    super.onStart();
    TwitterOAuthTokens localTwitterOAuthTokens = Util.D(this);
    if ((localTwitterOAuthTokens == null) || (b == null) || (d == null) || (c == null))
    {
      c.a(d.a());
      return;
    }
    a();
  }
  
  private final class a
    extends WebViewClient
  {
    private a() {}
    
    public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      boolean bool = true;
      paramWebView = AbstractWebViewActivity.a;
      if (paramString != null) {
        if ((paramString.contains(TwitterWebOAuthActivity.a(TwitterWebOAuthActivity.this))) || (paramString.contains("signup"))) {
          bool = false;
        }
      }
      for (;;)
      {
        return bool;
        if (paramString.contains("denied"))
        {
          paramWebView = new Intent();
          setResult(0, paramWebView);
          finish();
        }
        else
        {
          paramString = Uri.parse(paramString);
          paramWebView = paramString.getQueryParameter("oauth_verifier");
          paramString = paramString.getQueryParameter("oauth_token");
          if ((paramWebView == null) || (paramString == null))
          {
            TwitterWebOAuthActivity.b(TwitterWebOAuthActivity.this);
            return false;
          }
          TwitterWebOAuthActivity.d(TwitterWebOAuthActivity.this).a(TwitterWebOAuthActivity.c(TwitterWebOAuthActivity.this).a(paramString, paramWebView));
          continue;
          bool = false;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.TwitterWebOAuthActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */