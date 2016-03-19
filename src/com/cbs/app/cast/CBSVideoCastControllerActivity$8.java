package com.cbs.app.cast;

import android.view.View;
import android.view.View.OnClickListener;

final class CBSVideoCastControllerActivity$8
  implements View.OnClickListener
{
  CBSVideoCastControllerActivity$8(CBSVideoCastControllerActivity paramCBSVideoCastControllerActivity) {}
  
  public final void onClick(View paramView)
  {
    CBSVideoCastControllerActivity.c();
    paramView = a.getSupportFragmentManager();
    new VolumeDialogFragment().show(paramView, "fragment_volume");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.CBSVideoCastControllerActivity.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */