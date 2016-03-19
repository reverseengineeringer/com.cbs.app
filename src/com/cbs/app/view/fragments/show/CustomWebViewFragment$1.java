package com.cbs.app.view.fragments.show;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

final class CustomWebViewFragment$1
  implements View.OnKeyListener
{
  CustomWebViewFragment$1(CustomWebViewFragment paramCustomWebViewFragment) {}
  
  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    CustomWebViewFragment.a();
    if (paramInt == 4)
    {
      if (CustomWebViewFragment.a(a) != null)
      {
        CustomWebViewFragment.b(a).onHideCustomView();
        return true;
      }
      if ((CustomWebViewFragment.c(a) != null) && (CustomWebViewFragment.c(a).canGoBack()))
      {
        CustomWebViewFragment.c(a).goBack();
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.CustomWebViewFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */