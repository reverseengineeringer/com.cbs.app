package com.cbs.app.view;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.view.utils.Preferences;

final class SVODPopupHelper$8
  implements View.OnClickListener
{
  SVODPopupHelper$8(boolean paramBoolean) {}
  
  public final void onClick(View paramView)
  {
    SVODPopupHelper.d();
    SVODPopupHelper.k().dismiss();
    SVODPopupHelper.a = false;
    Preferences.a(SVODPopupHelper.e(), "upsell_dialog_seen");
    if ((SVODPopupHelper.h()) && (!a))
    {
      SVODPopupHelper.c(SVODPopupHelper.e());
      return;
    }
    SVODPopupHelper.j();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SVODPopupHelper.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */