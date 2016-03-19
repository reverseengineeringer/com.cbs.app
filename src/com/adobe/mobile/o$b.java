package com.adobe.mobile;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.math.BigDecimal;
import java.util.HashMap;

final class o$b
  extends WebViewClient
{
  private o a;
  
  protected o$b(o paramo)
  {
    a = paramo;
  }
  
  private void a(WebView paramWebView)
  {
    if (a.n == null)
    {
      am.a("Messages - unable to get root view group from os", new Object[0]);
      return;
    }
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, 0.0F, a.n.getMeasuredHeight());
    localTranslateAnimation.setDuration(300L);
    localTranslateAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public final void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        o.b(o.b.a(o.b.this));
      }
      
      public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public final void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    paramWebView.setAnimation(localTranslateAnimation);
    a.n.removeView(paramWebView);
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (!paramString.startsWith("adbinapp")) {}
    int i;
    do
    {
      do
      {
        return true;
        if (paramString.contains("cancel"))
        {
          a.e();
          a(paramWebView);
          return true;
        }
      } while (!paramString.contains("confirm"));
      a.f();
      a(paramWebView);
      i = paramString.indexOf("url=");
    } while (i < 0);
    paramString = paramString.substring(i + 4);
    HashMap localHashMap = new HashMap();
    if (am.d() == null)
    {
      paramWebView = "";
      localHashMap.put("{userId}", paramWebView);
      if (am.n() != null) {
        break label213;
      }
    }
    label213:
    for (paramWebView = "";; paramWebView = am.n())
    {
      localHashMap.put("{trackingId}", paramWebView);
      localHashMap.put("{messageId}", a.a);
      localHashMap.put("{lifetimeValue}", e.a().toString());
      paramWebView = am.a(paramString, localHashMap);
      try
      {
        paramString = new Intent("android.intent.action.VIEW");
        paramString.setData(Uri.parse(paramWebView));
        a.m.startActivity(paramString);
        return true;
      }
      catch (Exception paramWebView)
      {
        am.c("Messages - unable to launch intent from full screen message (%s)", new Object[] { paramWebView.getMessage() });
        return true;
      }
      paramWebView = am.d();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.o.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */