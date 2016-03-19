package com.cbs.app.view.fragments;

import android.support.v4.view.ViewPager.OnPageChangeListener;
import com.cbs.app.adapter.HomeMarqueeFragmentAdapter;
import com.cbs.app.view.model.DeviceHome;

final class HomeFragment$6
  implements ViewPager.OnPageChangeListener
{
  HomeFragment$6(HomeFragment paramHomeFragment) {}
  
  public final void onPageScrollStateChanged(int paramInt) {}
  
  public final void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public final void onPageSelected(int paramInt)
  {
    int i = HomeFragment.c(a).getDeviceHomeCount();
    if (i != 0)
    {
      DeviceHome localDeviceHome = HomeFragment.c(a).a(paramInt);
      if (localDeviceHome != null) {
        a.a(paramInt % i, localDeviceHome);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.HomeFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */