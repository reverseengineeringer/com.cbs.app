package com.cbs.app.view.fragments.settings;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;

final class AccountUIHelper$8
  implements View.OnClickListener
{
  AccountUIHelper$8(Context paramContext) {}
  
  public final void onClick(View paramView)
  {
    AccountUIHelper.g().dismiss();
    AccountUIHelper.setLoginIsShowing(false);
    AccountUIHelper.a(a);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */