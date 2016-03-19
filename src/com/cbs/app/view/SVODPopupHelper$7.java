package com.cbs.app.view;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;

final class SVODPopupHelper$7
  implements View.OnClickListener
{
  SVODPopupHelper$7(Dialog paramDialog) {}
  
  public final void onClick(View paramView)
  {
    SVODPopupHelper.a(true);
    SVODPopupHelper.b(true);
    SVODPopupHelper.b(SVODPopupHelper.e());
    a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SVODPopupHelper.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */