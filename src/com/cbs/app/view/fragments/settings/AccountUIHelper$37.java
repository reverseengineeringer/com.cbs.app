package com.cbs.app.view.fragments.settings;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

final class AccountUIHelper$37
  implements View.OnClickListener
{
  AccountUIHelper$37(TextView paramTextView, Context paramContext) {}
  
  public final void onClick(View paramView)
  {
    AccountUIHelper.d();
    a.setEnabled(false);
    a.setClickable(false);
    AccountUIHelper.setLoginIsShowing(false);
    AccountUIHelper.a(b);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.37
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */