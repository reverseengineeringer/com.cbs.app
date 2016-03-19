package com.cbs.app.view;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.view.fragments.settings.AccountUIHelper;

final class SVODPopupHelper$5
  implements View.OnClickListener
{
  SVODPopupHelper$5(Dialog paramDialog) {}
  
  public final void onClick(View paramView)
  {
    SVODPopupHelper.a = true;
    SVODPopupHelper.b(false);
    a.dismiss();
    AccountUIHelper.setFrom("");
    AccountUIHelper.b(SVODPopupHelper.e(), "CBS ALL ACCESS Sign In");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SVODPopupHelper.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */