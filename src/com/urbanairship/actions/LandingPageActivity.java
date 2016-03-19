package com.urbanairship.actions;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.view.MenuItem;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ProgressBar;
import com.urbanairship.d.d;
import com.urbanairship.j;
import com.urbanairship.p;
import com.urbanairship.richpush.RichPushManager;
import com.urbanairship.richpush.b;
import com.urbanairship.widget.UAWebView;
import com.urbanairship.widget.a;

public class LandingPageActivity
  extends Activity
{
  private UAWebView a;
  private Integer b = null;
  private int c = -1;
  private Handler d;
  private Uri e;
  
  @SuppressLint({"NewApi"})
  protected final void a(long paramLong)
  {
    if (a == null) {
      return;
    }
    a.stopLoading();
    if (paramLong > 0L)
    {
      d.postAtTime(new Runnable()
      {
        public final void run()
        {
          a(0L);
        }
      }, e, SystemClock.uptimeMillis() + paramLong);
      return;
    }
    new StringBuilder("Loading landing page: ").append(e);
    if (c != -1) {
      a.setBackgroundColor(c);
    }
    if (Build.VERSION.SDK_INT >= 11) {
      a.setLayerType(1, null);
    }
    b = null;
    if (e.getScheme().equalsIgnoreCase("message"))
    {
      String str = e.getSchemeSpecificPart();
      com.urbanairship.richpush.c localc = p.a().n().c().a(str);
      if (localc != null)
      {
        a.a(localc);
        localc.f();
        return;
      }
      j.a("Message " + str + " not found.");
      finish();
      return;
    }
    a.loadUrl(e.toString());
  }
  
  public void onCloseButtonClick(View paramView)
  {
    finish();
  }
  
  @SuppressLint({"NewApi"})
  public final void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    com.urbanairship.c.a(getApplication());
    Object localObject = getIntent();
    if (localObject == null)
    {
      finish();
      return;
    }
    paramBundle = d.b(getClass());
    if ((paramBundle == null) || (metaData == null)) {}
    for (paramBundle = new Bundle();; paramBundle = metaData)
    {
      c = paramBundle.getInt("com.urbanairship.LANDING_PAGE_BACKGROUND_COLOR", -1);
      d = new Handler();
      e = ((Intent)localObject).getData();
      if (e != null) {
        break;
      }
      finish();
      return;
    }
    int i = paramBundle.getInt("com.urbanairship.action.LANDING_PAGE_VIEW", -1);
    if (i != -1)
    {
      setContentView(i);
      if (Build.VERSION.SDK_INT >= 11)
      {
        paramBundle = getActionBar();
        if (paramBundle != null) {
          paramBundle.setDisplayOptions(4, 4);
        }
      }
      a = ((UAWebView)findViewById(16908300));
      paramBundle = (ProgressBar)findViewById(16908301);
      if (a == null) {
        break label322;
      }
      if (Build.VERSION.SDK_INT < 12) {
        break label311;
      }
      a.setAlpha(0.0F);
    }
    for (;;)
    {
      a.setWebViewClient(new a()
      {
        public final void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
        {
          super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
          if (LandingPageActivity.a(LandingPageActivity.this) != null)
          {
            switch (LandingPageActivity.a(LandingPageActivity.this).intValue())
            {
            default: 
              LandingPageActivity.a(LandingPageActivity.this, null);
              LandingPageActivity.b(LandingPageActivity.this).loadData("", "text/html", null);
              return;
            }
            a(20000L);
            return;
          }
          if (LandingPageActivity.c(LandingPageActivity.this) != -1) {
            LandingPageActivity.b(LandingPageActivity.this).setBackgroundColor(LandingPageActivity.c(LandingPageActivity.this));
          }
          LandingPageActivity.a(LandingPageActivity.this, LandingPageActivity.b(LandingPageActivity.this), paramBundle);
        }
        
        public final void onReceivedError(WebView paramAnonymousWebView, int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2)
        {
          if ((paramAnonymousString2 != null) && (paramAnonymousString2.equals(getIntent().getDataString())))
          {
            j.a("LandingPageActivity - Failed to load page " + paramAnonymousString2 + " with error " + paramAnonymousInt + " " + paramAnonymousString1);
            LandingPageActivity.a(LandingPageActivity.this, Integer.valueOf(paramAnonymousInt));
          }
        }
      });
      return;
      paramBundle = new FrameLayout(this);
      localObject = new UAWebView(this);
      ((UAWebView)localObject).setId(16908300);
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
      gravity = 17;
      paramBundle.addView((View)localObject, localLayoutParams);
      localObject = new ProgressBar(this);
      ((ProgressBar)localObject).setIndeterminate(true);
      ((ProgressBar)localObject).setId(16908301);
      localLayoutParams = new FrameLayout.LayoutParams(-2, -2);
      gravity = 17;
      paramBundle.addView((View)localObject, localLayoutParams);
      setContentView(paramBundle);
      break;
      label311:
      a.setVisibility(4);
    }
    label322:
    j.a("LandingPageActivity - A UAWebView with id android.R.id.primary is not defined in the custom layout.  Unable to show the landing page.");
    finish();
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    Object localObject = paramIntent.getData();
    paramIntent = paramIntent.getExtras();
    finish();
    localObject = new Intent().setClass(this, getClass()).setData((Uri)localObject).setFlags(268435456);
    if (paramIntent != null) {
      ((Intent)localObject).putExtras(paramIntent);
    }
    startActivity((Intent)localObject);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      finish();
      return true;
    }
    return false;
  }
  
  @SuppressLint({"NewApi"})
  public void onPause()
  {
    super.onPause();
    if (Build.VERSION.SDK_INT >= 11) {
      a.onPause();
    }
    a.stopLoading();
    d.removeCallbacksAndMessages(e);
  }
  
  @SuppressLint({"NewApi"})
  public void onResume()
  {
    super.onResume();
    if (Build.VERSION.SDK_INT >= 11) {
      a.onResume();
    }
    a(0L);
  }
  
  protected void onStart()
  {
    super.onStart();
    com.urbanairship.analytics.c.a(this);
  }
  
  protected void onStop()
  {
    super.onStop();
    com.urbanairship.analytics.c.b(this);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.LandingPageActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */