package com.cbs.app.view;

import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;
import android.widget.EditText;

final class SubscriptionActivity$1
  implements View.OnClickListener
{
  SubscriptionActivity$1(SubscriptionActivity paramSubscriptionActivity) {}
  
  public final void onClick(View paramView)
  {
    SubscriptionActivity.a();
    paramView = a.findViewById(2131689835);
    if ((paramView != null) && ((paramView instanceof WebView)))
    {
      SubscriptionActivity.a();
      paramView = (WebView)paramView;
      Object localObject = a.findViewById(2131689831);
      if ((localObject instanceof EditText))
      {
        localObject = ((EditText)localObject).getText().toString();
        SubscriptionActivity.a();
        paramView.loadUrl((String)localObject);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SubscriptionActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */