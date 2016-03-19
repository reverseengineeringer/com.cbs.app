package com.cbs.app.view;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.service.ButtonServiceHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper;

final class ShowSocialDialog$2
  implements View.OnClickListener
{
  ShowSocialDialog$2(Dialog paramDialog) {}
  
  public final void onClick(View paramView)
  {
    a.dismiss();
    AccountUIHelper.b(ButtonServiceHelper.f);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.ShowSocialDialog.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */