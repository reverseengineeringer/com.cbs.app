package com.cbs.app.view.fragments.mycbs;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.widget.TabHost;
import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.NavigationActivity;

final class NewMyCBSFragment$1
  implements BackButtonListener
{
  NewMyCBSFragment$1(NewMyCBSFragment paramNewMyCBSFragment) {}
  
  public final boolean c()
  {
    a.d();
    NewMyCBSFragment.a();
    if (a.i.getCurrentTab() == 0)
    {
      if ((NewMyCBSFragment.a(a) != null) && ((NewMyCBSFragment.b(a) instanceof NavigationActivity)))
      {
        ((NavigationActivity)NewMyCBSFragment.c(a)).k();
        return true;
      }
    }
    else if (a.i.getCurrentTab() == 1)
    {
      Fragment localFragment = a.getChildFragmentManager().findFragmentByTag("fragment_my_cbs");
      if ((localFragment != null) && ((localFragment instanceof NewMyCBSFragment)))
      {
        i.setCurrentTab(0);
        a.b(0);
        return true;
      }
    }
    return false;
  }
  
  public final String getTag()
  {
    return NewMyCBSFragment.a();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.NewMyCBSFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */