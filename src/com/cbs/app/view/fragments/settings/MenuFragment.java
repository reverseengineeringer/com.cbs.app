package com.cbs.app.view.fragments.settings;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.cbs.app.view.utils.Util;
import java.util.ArrayList;
import java.util.Iterator;

public class MenuFragment
  extends Fragment
{
  private static final String a = MenuFragment.class.getSimpleName();
  private View b;
  private MenuAdapter c;
  private AdapterView.OnItemClickListener d = new AdapterView.OnItemClickListener()
  {
    public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      MenuFragment.b();
      paramAnonymousAdapterView = getActivity().getSupportFragmentManager().findFragmentByTag("settings_fragment");
      if ((paramAnonymousAdapterView != null) && ((paramAnonymousAdapterView instanceof SettingsFragment)))
      {
        MenuFragment.b();
        ((SettingsFragment)paramAnonymousAdapterView).a(paramAnonymousInt);
        MenuFragment.a(MenuFragment.this).setSelected(paramAnonymousInt);
      }
    }
  };
  private AccountUIHelper.RefreshAccountListener e = new AccountUIHelper.RefreshAccountListener()
  {
    public final void a()
    {
      MenuFragment.this.a();
    }
  };
  
  public final void a()
  {
    c.notifyDataSetChanged();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getActivity().getWindow().setSoftInputMode(32);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    AccountUIHelper.a(e);
    b = paramLayoutInflater.inflate(2130903260, paramViewGroup, false);
    paramLayoutInflater = (AppCompatActivity)getActivity();
    c = new MenuAdapter(paramLayoutInflater);
    paramViewGroup = getActivity().getSupportFragmentManager().findFragmentByTag("settings_fragment");
    if ((paramViewGroup != null) && ((paramViewGroup instanceof SettingsFragment)))
    {
      paramViewGroup = ((SettingsFragment)paramViewGroup).getMenuItems();
      if (paramViewGroup != null)
      {
        paramViewGroup = paramViewGroup.iterator();
        while (paramViewGroup.hasNext())
        {
          paramBundle = (SettingsFragment.MenuHolder)paramViewGroup.next();
          c.add(paramBundle);
        }
      }
    }
    paramViewGroup = b.findViewById(2131690275);
    if ((paramViewGroup != null) && ((paramViewGroup instanceof ListView)))
    {
      paramViewGroup = (ListView)paramViewGroup;
      paramBundle = paramLayoutInflater.getLayoutInflater().inflate(2130903140, null, false);
      new StringBuilder("list view footer count:").append(paramViewGroup.getFooterViewsCount());
      if (paramViewGroup.getFooterViewsCount() == 0)
      {
        paramViewGroup.addFooterView(paramBundle);
        paramViewGroup.setFooterDividersEnabled(false);
      }
      paramViewGroup.setAdapter(c);
      paramViewGroup.setOnItemClickListener(d);
      if ((Util.i(paramLayoutInflater)) || (Util.j(paramLayoutInflater))) {
        c.setSelected(0);
      }
    }
    AccountUIHelper.setEmailCache("");
    AccountUIHelper.setPasswordCache("");
    return b;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    AccountUIHelper.b(e);
    b = null;
  }
  
  public void onDetach()
  {
    super.onDetach();
  }
  
  public void onResume()
  {
    super.onResume();
    c.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.MenuFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */