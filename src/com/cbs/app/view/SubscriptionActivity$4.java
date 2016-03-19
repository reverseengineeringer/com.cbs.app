package com.cbs.app.view;

import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;

final class SubscriptionActivity$4
  implements View.OnClickListener
{
  SubscriptionActivity$4(SubscriptionActivity paramSubscriptionActivity) {}
  
  public final void onClick(View paramView)
  {
    SubscriptionActivity.a();
    paramView = a.findViewById(2131689835);
    if ((paramView instanceof WebView)) {
      ((WebView)paramView).reload();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SubscriptionActivity.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */