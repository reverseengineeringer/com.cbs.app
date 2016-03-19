package com.adobe.mobile;

import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.webkit.WebSettings;
import android.webkit.WebView;

final class o$a
  implements Runnable
{
  private o a;
  
  protected o$a(o paramo)
  {
    a = paramo;
  }
  
  public final void run()
  {
    int i;
    int j;
    try
    {
      o.a(a, new WebView(a.m));
      o.a(a).setVerticalScrollBarEnabled(false);
      o.a(a).setHorizontalScrollBarEnabled(false);
      o.a(a).setBackgroundColor(0);
      o.a(a).setWebViewClient(new o.b(a));
      WebSettings localWebSettings = o.a(a).getSettings();
      localWebSettings.setJavaScriptEnabled(true);
      localWebSettings.setAllowFileAccess(true);
      localWebSettings.setDefaultTextEncodingName("UTF-8");
      o.a(a).loadDataWithBaseURL("file:///android_asset/", a.l, "text/html", "UTF-8", null);
      if (a.n == null)
      {
        am.a("Messages - unable to get root view group from os", new Object[0]);
        o.b(a);
        return;
      }
      i = a.n.getMeasuredWidth();
      j = a.n.getMeasuredHeight();
      if ((i == 0) || (j == 0))
      {
        am.a("Messages - root view hasn't been measured, cannot show message", new Object[0]);
        o.b(a);
        return;
      }
    }
    catch (Exception localException)
    {
      am.c("Messages - Failed to show full screen message (%s)", new Object[] { localException.getMessage() });
      return;
    }
    if (a.f) {
      a.n.addView(o.a(a), i, j);
    }
    for (;;)
    {
      a.f = true;
      return;
      TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, j, 0.0F);
      localTranslateAnimation.setDuration(300L);
      o.a(a).setAnimation(localTranslateAnimation);
      a.n.addView(o.a(a), i, j);
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.o.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */