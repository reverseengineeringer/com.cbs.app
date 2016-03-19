package com.cbs.app.view.fragments.mycbs;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import java.util.List;

public class FragmentsPagerAdapter
  extends FragmentPagerAdapter
{
  private List<Fragment> a;
  
  public FragmentsPagerAdapter(FragmentManager paramFragmentManager, List<Fragment> paramList)
  {
    super(paramFragmentManager);
    a = paramList;
  }
  
  public int getCount()
  {
    return a.size();
  }
  
  public Fragment getItem(int paramInt)
  {
    return (Fragment)a.get(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.FragmentsPagerAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */