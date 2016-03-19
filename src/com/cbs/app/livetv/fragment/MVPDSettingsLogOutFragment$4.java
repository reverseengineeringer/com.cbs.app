package com.cbs.app.livetv.fragment;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.cbs.app.livetv.controllers.MVPDController;

final class MVPDSettingsLogOutFragment$4
  implements DialogInterface.OnClickListener
{
  MVPDSettingsLogOutFragment$4(MVPDSettingsLogOutFragment paramMVPDSettingsLogOutFragment) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    MVPDController.getInstance().e();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.MVPDSettingsLogOutFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */