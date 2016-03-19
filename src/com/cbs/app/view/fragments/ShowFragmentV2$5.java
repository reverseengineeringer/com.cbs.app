package com.cbs.app.view.fragments;

import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper.RefreshAccountListener;
import com.cbs.app.visualon.player.CBSPlayer;

final class ShowFragmentV2$5
  implements AccountUIHelper.RefreshAccountListener
{
  ShowFragmentV2$5(ShowFragmentV2 paramShowFragmentV2) {}
  
  public final void a()
  {
    String str = ShowFragmentV2.h;
    ShowFragmentV2.a(a, false);
    ShowFragmentV2.d(a, false);
    ShowFragmentV2.c(a, false);
    ShowFragmentV2.b(a, false);
    if (CBSPlayer.a())
    {
      AccountUIHelper.setIsPlayerActive(true);
      ShowFragmentV2.q(a);
    }
    a.getShowData();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.ShowFragmentV2.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */