package com.cbs.app.view.fragments;

import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.NavigationActivity;

final class ScheduleFragment$1
  implements BackButtonListener
{
  ScheduleFragment$1(ScheduleFragment paramScheduleFragment) {}
  
  public final boolean c()
  {
    String str = ScheduleFragment.h;
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (ScheduleFragment.a(a) != null)
    {
      bool1 = bool2;
      if ((ScheduleFragment.b(a) instanceof NavigationActivity))
      {
        ((NavigationActivity)ScheduleFragment.c(a)).k();
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public final String getTag()
  {
    return ScheduleFragment.h;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.ScheduleFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */