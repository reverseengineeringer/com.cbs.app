package com.urbanairship.actions;

import android.content.Intent;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.urbanairship.j;
import com.urbanairship.widget.UAWebView;
import com.urbanairship.widget.a;

final class LandingPageActivity$1
  extends a
{
  LandingPageActivity$1(LandingPageActivity paramLandingPageActivity, ProgressBar paramProgressBar) {}
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    if (LandingPageActivity.a(b) != null)
    {
      switch (LandingPageActivity.a(b).intValue())
      {
      default: 
        LandingPageActivity.a(b, null);
        LandingPageActivity.b(b).loadData("", "text/html", null);
        return;
      }
      b.a(20000L);
      return;
    }
    if (LandingPageActivity.c(b) != -1) {
      LandingPageActivity.b(b).setBackgroundColor(LandingPageActivity.c(b));
    }
    LandingPageActivity.a(b, LandingPageActivity.b(b), a);
  }
  
  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (paramString2.equals(b.getIntent().getDataString())))
    {
      j.a("LandingPageActivity - Failed to load page " + paramString2 + " with error " + paramInt + " " + paramString1);
      LandingPageActivity.a(b, Integer.valueOf(paramInt));
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.LandingPageActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */