package com.cbs.app.adapter;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import com.cbs.app.view.fragments.HomeMarqueeFragment;
import com.cbs.app.view.model.DeviceHome;
import com.viewpagerindicator.a;

public class HomeMarqueeFragmentAdapter
  extends FragmentStatePagerAdapter
  implements a
{
  private DeviceHome[] a;
  
  public HomeMarqueeFragmentAdapter(FragmentManager paramFragmentManager, DeviceHome[] paramArrayOfDeviceHome)
  {
    super(paramFragmentManager);
    if (paramArrayOfDeviceHome != null) {
      a = ((DeviceHome[])paramArrayOfDeviceHome.clone());
    }
  }
  
  public final DeviceHome a(int paramInt)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (a != null)
    {
      localObject1 = localObject2;
      if (a.length != 0) {
        localObject1 = a[(paramInt % a.length)];
      }
    }
    return (DeviceHome)localObject1;
  }
  
  public int getCount()
  {
    if ((a == null) || (a.length == 0)) {
      return 0;
    }
    return Integer.MAX_VALUE;
  }
  
  public int getDeviceHomeCount()
  {
    int j = 0;
    int i = j;
    if (a != null)
    {
      i = j;
      if (a.length != 0) {
        i = a.length;
      }
    }
    return i;
  }
  
  public final int getIconResId$134621()
  {
    return 0;
  }
  
  public Fragment getItem(int paramInt)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (a != null)
    {
      localObject1 = localObject2;
      if (a.length != 0)
      {
        localObject1 = HomeMarqueeFragment.a(a[(paramInt % a.length)]);
        ((HomeMarqueeFragment)localObject1).setPosition(paramInt % a.length);
      }
    }
    return (Fragment)localObject1;
  }
  
  public CharSequence getPageTitle(int paramInt)
  {
    String str2 = "";
    String str1 = str2;
    if (a != null)
    {
      str1 = str2;
      if (a.length > 0) {
        str1 = a[(paramInt % a.length)].getType();
      }
    }
    return str1;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.HomeMarqueeFragmentAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */