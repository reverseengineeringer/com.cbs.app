package com.cbs.app.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.cbs.app.service.ButtonServiceHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper;

final class ShowSocialDialog$1
  implements DialogInterface.OnCancelListener
{
  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (paramDialogInterface != null) {
      paramDialogInterface.dismiss();
    }
    AccountUIHelper.b(ButtonServiceHelper.f);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.ShowSocialDialog.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */