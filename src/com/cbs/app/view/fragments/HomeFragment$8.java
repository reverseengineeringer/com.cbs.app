package com.cbs.app.view.fragments;

import android.os.Handler;
import android.support.v4.view.ViewPager;

final class HomeFragment$8
  implements Runnable
{
  HomeFragment$8(HomeFragment paramHomeFragment) {}
  
  public final void run()
  {
    if ((HomeFragment.f(a)) && (HomeFragment.g(a) != null) && (HomeFragment.h(a) != null))
    {
      HomeFragment.h(a).setCurrentItem(HomeFragment.h(a).getCurrentItem() + 1, true);
      HomeFragment.e(a).postDelayed(HomeFragment.d(a), 4000L);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.HomeFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */