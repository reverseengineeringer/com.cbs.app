package com.cbs.app.view.fragments.mycbs;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.cbs.app.view.NavigationActivity;

final class MyShowVideoFragment$5
  implements DialogInterface.OnClickListener
{
  MyShowVideoFragment$5(MyShowVideoFragment paramMyShowVideoFragment) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if ((MyShowVideoFragment.N(a) != null) && ((MyShowVideoFragment.O(a) instanceof NavigationActivity))) {
      ((NavigationActivity)MyShowVideoFragment.P(a)).k();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.MyShowVideoFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */