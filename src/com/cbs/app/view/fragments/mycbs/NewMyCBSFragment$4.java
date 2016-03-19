package com.cbs.app.view.fragments.mycbs;

import android.widget.TabHost;
import com.cbs.app.view.menu.DrawerStatusListener;

final class NewMyCBSFragment$4
  implements DrawerStatusListener
{
  NewMyCBSFragment$4(NewMyCBSFragment paramNewMyCBSFragment) {}
  
  public final void a()
  {
    NewMyCBSFragment.a();
  }
  
  public final void b()
  {
    NewMyCBSFragment.a();
    NewMyCBSFragment localNewMyCBSFragment;
    if (NewMyCBSFragment.d(a) != null)
    {
      int i = a.i.getCurrentTab();
      localNewMyCBSFragment = a;
      if (i != 0) {
        break label42;
      }
    }
    label42:
    for (boolean bool = true;; bool = false)
    {
      localNewMyCBSFragment.a(bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.NewMyCBSFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */