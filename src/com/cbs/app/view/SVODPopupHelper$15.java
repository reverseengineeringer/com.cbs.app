package com.cbs.app.view;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;
import com.cbs.app.GlobalConstants;
import com.cbs.app.view.utils.Preferences;

final class SVODPopupHelper$15
  implements DialogInterface.OnKeyListener
{
  SVODPopupHelper$15(boolean paramBoolean) {}
  
  public final boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (GlobalConstants.c) {
        break label57;
      }
      SVODPopupHelper.a = false;
      SVODPopupHelper.k().dismiss();
      if ((!SVODPopupHelper.h()) || (a)) {
        break label50;
      }
      SVODPopupHelper.c(SVODPopupHelper.e());
    }
    for (;;)
    {
      Preferences.a(SVODPopupHelper.e(), "upsell_dialog_seen");
      return true;
      label50:
      SVODPopupHelper.j();
      continue;
      label57:
      GlobalConstants.c = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SVODPopupHelper.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */