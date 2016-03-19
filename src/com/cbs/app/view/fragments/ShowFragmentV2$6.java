package com.cbs.app.view.fragments;

import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.NavigationActivity;

final class ShowFragmentV2$6
  implements BackButtonListener
{
  ShowFragmentV2$6(ShowFragmentV2 paramShowFragmentV2) {}
  
  public final boolean c()
  {
    String str = ShowFragmentV2.h;
    if (ShowFragmentV2.r(a))
    {
      ShowFragmentV2.s(a);
      return true;
    }
    ShowFragmentV2.t(a);
    if ((ShowFragmentV2.u(a) instanceof NavigationActivity))
    {
      ((NavigationActivity)ShowFragmentV2.v(a)).g();
      return true;
    }
    return false;
  }
  
  public final String getTag()
  {
    return ShowFragmentV2.h;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.ShowFragmentV2.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */