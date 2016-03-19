package com.cbs.app.view;

import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;

final class SubscriptionActivity$3
  implements View.OnClickListener
{
  SubscriptionActivity$3(SubscriptionActivity paramSubscriptionActivity) {}
  
  public final void onClick(View paramView)
  {
    SubscriptionActivity.a();
    paramView = a.findViewById(2131689835);
    if ((paramView != null) && ((paramView instanceof WebView)))
    {
      paramView = (WebView)paramView;
      paramView.stopLoading();
      paramView.goBack();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SubscriptionActivity.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */