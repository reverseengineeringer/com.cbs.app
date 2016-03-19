package com.cbs.app.view.fragments.mycbs;

import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.widget.TabHost;

final class NewMyCBSFragment$2
  implements ViewPager.OnPageChangeListener
{
  NewMyCBSFragment$2(NewMyCBSFragment paramNewMyCBSFragment) {}
  
  public final void onPageScrollStateChanged(int paramInt) {}
  
  public final void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public final void onPageSelected(int paramInt)
  {
    NewMyCBSFragment.a();
    if ((a.i != null) && (a.j != null))
    {
      NewMyCBSFragment.a();
      a.i.setCurrentTab(paramInt);
      a.b(paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.NewMyCBSFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */