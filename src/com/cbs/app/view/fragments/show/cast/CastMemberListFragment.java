package com.cbs.app.view.fragments.show.cast;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.cbs.app.adapter.DeviceCastAdapter;
import com.cbs.app.view.model.DeviceCast;
import com.cbs.app.view.utils.Util;
import com.cbs.app.widget.HorizontalListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CastMemberListFragment
  extends Fragment
{
  private static final String a = CastMemberListFragment.class.getSimpleName();
  private AppCompatActivity b = null;
  private View c = null;
  private List<DeviceCast> d = new ArrayList();
  private List<DeviceCast> e = new ArrayList();
  private DeviceCastAdapter f = null;
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    b = ((AppCompatActivity)paramActivity);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    c = paramLayoutInflater.inflate(2130903086, paramViewGroup, false);
    paramLayoutInflater = getArguments();
    paramViewGroup = paramLayoutInflater.getParcelableArrayList("deviceHostList");
    if (paramViewGroup != null)
    {
      paramViewGroup = paramViewGroup.iterator();
      while (paramViewGroup.hasNext())
      {
        paramBundle = (Parcelable)paramViewGroup.next();
        e.add((DeviceCast)paramBundle);
      }
    }
    paramLayoutInflater = paramLayoutInflater.getParcelableArrayList("deviceCastList");
    if (paramLayoutInflater != null)
    {
      paramLayoutInflater = paramLayoutInflater.iterator();
      while (paramLayoutInflater.hasNext())
      {
        paramViewGroup = (Parcelable)paramLayoutInflater.next();
        d.add((DeviceCast)paramViewGroup);
      }
    }
    if ((b != null) && (c != null))
    {
      f = new DeviceCastAdapter(b);
      paramLayoutInflater = e.iterator();
      while (paramLayoutInflater.hasNext())
      {
        paramViewGroup = (DeviceCast)paramLayoutInflater.next();
        f.add(paramViewGroup);
      }
      paramLayoutInflater = d.iterator();
      while (paramLayoutInflater.hasNext())
      {
        paramViewGroup = (DeviceCast)paramLayoutInflater.next();
        f.add(paramViewGroup);
      }
      paramLayoutInflater = new a();
      paramViewGroup = getActivity().getResources().getConfiguration();
      if (((!Util.a(paramViewGroup)) && (!Util.b(paramViewGroup))) || (!Util.c(paramViewGroup))) {
        break label310;
      }
      paramViewGroup = (HorizontalListView)c.findViewById(2131689710);
      paramViewGroup.setOnItemClickListener(paramLayoutInflater);
      paramViewGroup.setAdapter(f);
    }
    for (;;)
    {
      return c;
      label310:
      paramViewGroup = (ListView)c.findViewById(2131689709);
      paramBundle = b.getLayoutInflater().inflate(2130903140, null, false);
      new StringBuilder("list view footer count:").append(paramViewGroup.getFooterViewsCount());
      if (paramViewGroup.getFooterViewsCount() == 0)
      {
        paramViewGroup.addFooterView(paramBundle);
        paramViewGroup.setFooterDividersEnabled(false);
      }
      paramViewGroup.setOnItemClickListener(paramLayoutInflater);
      paramViewGroup.setAdapter(f);
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    c = null;
  }
  
  final class a
    implements AdapterView.OnItemClickListener
  {
    a() {}
    
    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      if (CastMemberListFragment.a(CastMemberListFragment.this) != null)
      {
        if (paramInt < CastMemberListFragment.a(CastMemberListFragment.this).getCount()) {
          break label29;
        }
        CastMemberListFragment.a();
      }
      label29:
      do
      {
        do
        {
          do
          {
            return;
            CastMemberListFragment.a(CastMemberListFragment.this).setSelected(paramInt);
            paramAdapterView = (DeviceCast)CastMemberListFragment.a(CastMemberListFragment.this).getItem(paramInt);
          } while (paramAdapterView == null);
          paramView = CastMemberListFragment.b(CastMemberListFragment.this).getSupportFragmentManager().findFragmentByTag("fragment_show_home");
        } while (paramView == null);
        paramView = (CastFragment)paramView.getChildFragmentManager().findFragmentByTag("fragment_show_cast");
      } while (paramView == null);
      paramView.setDeviceCast(paramAdapterView);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.cast.CastMemberListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */