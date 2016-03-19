package com.cbs.app.view;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;

final class SVODPopupHelper$6
  implements View.OnClickListener
{
  SVODPopupHelper$6(Dialog paramDialog) {}
  
  public final void onClick(View paramView)
  {
    SVODPopupHelper.a = false;
    SVODPopupHelper.b(false);
    a.dismiss();
    paramView = Preferences.b(SVODPopupHelper.e(), "svod_launch_upsell_product_id", null);
    if (paramView != null)
    {
      Util.a(SVODPopupHelper.e(), paramView);
      return;
    }
    Toast.makeText(SVODPopupHelper.e(), "product id not found", 1).show();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SVODPopupHelper.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */