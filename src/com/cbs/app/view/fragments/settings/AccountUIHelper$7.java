package com.cbs.app.view.fragments.settings;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;

final class AccountUIHelper$7
  implements View.OnClickListener
{
  AccountUIHelper$7(Context paramContext) {}
  
  public final void onClick(View paramView)
  {
    AccountUIHelper.j().setClickable(false);
    AccountUIHelper.j().setEnabled(false);
    AccountUIHelper.d();
    AccountUIHelper.setLoginIsShowing(false);
    AccountUIHelper.g().dismiss();
    AccountUIHelper.a(a, false);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */