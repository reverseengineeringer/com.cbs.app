package com.cbs.app.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnClickListener;

final class UnableToConnectDialogHelper$1
  implements View.OnClickListener
{
  UnableToConnectDialogHelper$1(Dialog paramDialog, Context paramContext, DialogInterface.OnClickListener paramOnClickListener) {}
  
  public final void onClick(View paramView)
  {
    UnableToConnectDialogHelper.a();
    if ((a.isShowing()) && (!((Activity)b).isFinishing()))
    {
      a.dismiss();
      c.onClick(a, 1);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.UnableToConnectDialogHelper.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */