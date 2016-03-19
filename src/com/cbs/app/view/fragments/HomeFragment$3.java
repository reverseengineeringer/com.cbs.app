package com.cbs.app.view.fragments;

import android.content.Intent;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import com.cbs.app.adapter.HomeMarqueeFragmentAdapter;
import com.cbs.app.view.fragments.settings.AccountUIHelper.RefreshAccountListener;
import com.cbs.app.view.model.DeviceHome;
import com.cbs.app.view.utils.Util;

final class HomeFragment$3
  implements AccountUIHelper.RefreshAccountListener
{
  HomeFragment$3(HomeFragment paramHomeFragment) {}
  
  public final void a()
  {
    HomeFragment.f();
    Util.a(a.getActivity());
    Parcelable[] arrayOfParcelable = a.getActivity().getIntent().getParcelableArrayExtra("homeMarquee");
    if (arrayOfParcelable != null)
    {
      HomeFragment.a(a, new DeviceHome[arrayOfParcelable.length]);
      int k = arrayOfParcelable.length;
      int i = 0;
      int j = 0;
      while (i < k)
      {
        Parcelable localParcelable = arrayOfParcelable[i];
        HomeFragment.b(a)[j] = ((DeviceHome)localParcelable);
        j += 1;
        i += 1;
      }
      HomeFragment.a(a, new HomeMarqueeFragmentAdapter(a.getChildFragmentManager(), HomeFragment.b(a)));
    }
    a.e();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.HomeFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */