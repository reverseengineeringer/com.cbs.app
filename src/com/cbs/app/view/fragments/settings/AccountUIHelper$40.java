package com.cbs.app.view.fragments.settings;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.view.SVODPopupHelper;

final class AccountUIHelper$40
  implements View.OnClickListener
{
  AccountUIHelper$40(Context paramContext) {}
  
  public final void onClick(View paramView)
  {
    AccountUIHelper.d();
    AccountUIHelper.setLoginIsShowing(false);
    SVODPopupHelper.setWeWantToSeeVideo(null);
    SVODPopupHelper.setWeWantToSeeShow(null);
    SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(false);
    AccountUIHelper.a(a, true);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.40
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */