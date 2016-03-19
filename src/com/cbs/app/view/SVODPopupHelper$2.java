package com.cbs.app.view;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.view.fragments.settings.AccountUIHelper;

final class SVODPopupHelper$2
  implements View.OnClickListener
{
  SVODPopupHelper$2(Context paramContext) {}
  
  public final void onClick(View paramView)
  {
    SVODPopupHelper.a = false;
    AccountUIHelper.setFrom("");
    AccountUIHelper.b(a, "CBS ALL ACCESS Sign In");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SVODPopupHelper.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */