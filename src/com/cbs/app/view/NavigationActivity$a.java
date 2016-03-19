package com.cbs.app.view;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.utils.Util;
import com.cbs.app.visualon.player.CBSPlayer;

final class NavigationActivity$a
  implements AdapterView.OnItemClickListener
{
  private NavigationActivity$a(NavigationActivity paramNavigationActivity) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt == 0)
    {
      if (Util.u(a) == null)
      {
        a.m();
        if (CBSPlayer.a()) {
          AccountUIHelper.setIsPlayerActive(true);
        }
        SVODPopupHelper.setWeWantToSeeVideo(null);
        SVODPopupHelper.setWeWantToSeeShow(null);
        SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(false);
        AccountUIHelper.b(a);
      }
      return;
    }
    NavigationActivity.a(a, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.NavigationActivity.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */