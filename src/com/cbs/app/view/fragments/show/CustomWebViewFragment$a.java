package com.cbs.app.view.fragments.show;

import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.widget.FrameLayout;

final class CustomWebViewFragment$a
  extends WebChromeClient
{
  private CustomWebViewFragment$a(CustomWebViewFragment paramCustomWebViewFragment) {}
  
  public final void onHideCustomView()
  {
    CustomWebViewFragment.f();
    if (CustomWebViewFragment.a(a) != null)
    {
      CustomWebViewFragment.a(a).setVisibility(8);
      CustomWebViewFragment.d(a).removeView(CustomWebViewFragment.a(a));
      CustomWebViewFragment.a(a, null);
      CustomWebViewFragment.d(a).setVisibility(8);
      CustomWebViewFragment.f(a).onCustomViewHidden();
      CustomWebViewFragment.e(a).setVisibility(0);
    }
  }
  
  public final void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    CustomWebViewFragment.e();
    CustomWebViewFragment.a(a, paramCustomViewCallback);
    CustomWebViewFragment.a(a, paramView);
    CustomWebViewFragment.d(a).addView(CustomWebViewFragment.a(a));
    CustomWebViewFragment.e(a).setVisibility(8);
    CustomWebViewFragment.d(a).setVisibility(0);
    CustomWebViewFragment.d(a).bringToFront();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.CustomWebViewFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */