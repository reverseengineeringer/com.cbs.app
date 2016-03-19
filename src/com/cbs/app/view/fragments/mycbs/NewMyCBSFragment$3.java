package com.cbs.app.view.fragments.mycbs;

import android.support.v4.view.ViewPager;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;

final class NewMyCBSFragment$3
  implements TabHost.OnTabChangeListener
{
  NewMyCBSFragment$3(NewMyCBSFragment paramNewMyCBSFragment) {}
  
  public final void onTabChanged(String paramString)
  {
    NewMyCBSFragment.a();
    if ((a.i != null) && (a.j != null))
    {
      NewMyCBSFragment.a();
      int i = a.i.getCurrentTab();
      a.j.setCurrentItem(i);
      a.a(i);
      paramString = a;
      if (i != 0) {
        break label75;
      }
    }
    label75:
    for (boolean bool = true;; bool = false)
    {
      paramString.a(bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.NewMyCBSFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */