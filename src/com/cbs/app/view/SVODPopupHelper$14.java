package com.cbs.app.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.cbs.app.view.utils.Preferences;

final class SVODPopupHelper$14
  implements DialogInterface.OnCancelListener
{
  SVODPopupHelper$14(boolean paramBoolean) {}
  
  public final void onCancel(DialogInterface paramDialogInterface)
  {
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
 * Qualified Name:     com.cbs.app.view.SVODPopupHelper.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */