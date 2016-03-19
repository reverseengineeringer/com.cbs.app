package com.cbs.app.view;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.utils.Preferences;

final class SVODPopupHelper$4
  implements View.OnClickListener
{
  SVODPopupHelper$4(Dialog paramDialog) {}
  
  public final void onClick(View paramView)
  {
    SVODPopupHelper.a = false;
    SVODPopupHelper.b(false);
    a.dismiss();
    paramView = Preferences.b(SVODPopupHelper.e(), "svod_launch_upsell_product_id", null);
    if (paramView != null)
    {
      AccountUIHelper.c(SVODPopupHelper.e(), paramView);
      return;
    }
    Toast.makeText(SVODPopupHelper.e(), "product id not found", 1).show();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SVODPopupHelper.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */