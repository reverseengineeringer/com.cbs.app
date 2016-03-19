package com.cbs.app.view.utils;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnShowListener;
import android.widget.Button;

final class Util$2
  implements DialogInterface.OnShowListener
{
  Util$2(AlertDialog paramAlertDialog) {}
  
  public final void onShow(DialogInterface paramDialogInterface)
  {
    if (a != null)
    {
      a.getButton(-1).setTypeface(null, 1);
      a.getButton(-1).setTextSize(2, 16.0F);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.utils.Util.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */