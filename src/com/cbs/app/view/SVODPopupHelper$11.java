package com.cbs.app.view;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;

final class SVODPopupHelper$11
  implements View.OnClickListener
{
  public final void onClick(View paramView)
  {
    SVODPopupHelper.d();
    SVODPopupHelper.k().dismiss();
    SVODPopupHelper.a = false;
    Preferences.a(SVODPopupHelper.e(), "upsell_dialog_seen");
    paramView = Preferences.b(SVODPopupHelper.e(), "svod_launch_upsell_product_id", null);
    if (paramView != null)
    {
      if (SVODPopupHelper.l())
      {
        Util.a(SVODPopupHelper.e(), paramView);
        return;
      }
      if (SVODPopupHelper.m())
      {
        AccountUIHelper.d(SVODPopupHelper.e(), paramView);
        return;
      }
      SVODPopupHelper.j();
      return;
    }
    Toast.makeText(SVODPopupHelper.e(), "product id not found", 1).show();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SVODPopupHelper.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */