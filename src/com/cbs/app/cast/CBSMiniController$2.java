package com.cbs.app.cast;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;

final class CBSMiniController$2
  implements View.OnClickListener
{
  CBSMiniController$2(CBSMiniController paramCBSMiniController) {}
  
  public final void onClick(View paramView)
  {
    paramView = ((FragmentActivity)a.getContext()).getSupportFragmentManager();
    new VolumeDialogFragment().show(paramView, "fragment_volume");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.CBSMiniController.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */