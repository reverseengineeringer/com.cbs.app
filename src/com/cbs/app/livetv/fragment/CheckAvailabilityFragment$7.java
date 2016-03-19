package com.cbs.app.livetv.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.widget.Toast;
import com.cbs.app.view.utils.Util;

final class CheckAvailabilityFragment$7
  implements DialogInterface.OnClickListener
{
  CheckAvailabilityFragment$7(CheckAvailabilityFragment paramCheckAvailabilityFragment, Context paramContext) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
    if (Util.a(a, paramDialogInterface))
    {
      a.startActivity(paramDialogInterface);
      return;
    }
    Toast.makeText(a, b.getString(2131231092), 1).show();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.CheckAvailabilityFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */