package com.cbs.app.view.fragments;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.utils.Util;

final class ShowFragmentV2$13
  implements View.OnClickListener
{
  ShowFragmentV2$13(ShowFragmentV2 paramShowFragmentV2) {}
  
  public final void onClick(View paramView)
  {
    if (Util.G(ShowFragmentV2.H(a)))
    {
      SVODPopupHelper.a(ShowFragmentV2.I(a));
      return;
    }
    SVODPopupHelper.setWeWantToSeeVideo(null);
    SVODPopupHelper.setWeWantToSeeShow(null);
    SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(true);
    SVODPopupHelper.c(ShowFragmentV2.J(a));
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.ShowFragmentV2.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */