package com.cbs.app.view.fragments;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.cbs.app.view.NavigationActivity;

final class ShowFragmentV2$10
  implements DialogInterface.OnClickListener
{
  ShowFragmentV2$10(ShowFragmentV2 paramShowFragmentV2) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if ((ShowFragmentV2.F(a) instanceof NavigationActivity)) {
      ((NavigationActivity)ShowFragmentV2.G(a)).k();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.ShowFragmentV2.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */