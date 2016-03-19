package com.cbs.app.view.fragments.settings;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class MenuFragment$1
  implements AdapterView.OnItemClickListener
{
  MenuFragment$1(MenuFragment paramMenuFragment) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    MenuFragment.b();
    paramAdapterView = a.getActivity().getSupportFragmentManager().findFragmentByTag("settings_fragment");
    if ((paramAdapterView != null) && ((paramAdapterView instanceof SettingsFragment)))
    {
      MenuFragment.b();
      ((SettingsFragment)paramAdapterView).a(paramInt);
      MenuFragment.a(a).setSelected(paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.MenuFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */