package com.cbs.app.view.fragments.settings;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.view.Window;
import com.cbs.app.visualon.player.CBSPlayer;

final class AccountUIHelper$47
  implements DialogInterface.OnCancelListener
{
  public final void onCancel(DialogInterface paramDialogInterface)
  {
    AccountUIHelper.d();
    AccountUIHelper.g().getWindow().setSoftInputMode(48);
    if (!CBSPlayer.a()) {
      AccountUIHelper.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.47
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */