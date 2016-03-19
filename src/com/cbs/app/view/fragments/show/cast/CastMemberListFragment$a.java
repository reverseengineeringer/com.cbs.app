package com.cbs.app.view.fragments.show.cast;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.cbs.app.adapter.DeviceCastAdapter;
import com.cbs.app.view.model.DeviceCast;

final class CastMemberListFragment$a
  implements AdapterView.OnItemClickListener
{
  CastMemberListFragment$a(CastMemberListFragment paramCastMemberListFragment) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (CastMemberListFragment.a(a) != null)
    {
      if (paramInt < CastMemberListFragment.a(a).getCount()) {
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
          CastMemberListFragment.a(a).setSelected(paramInt);
          paramAdapterView = (DeviceCast)CastMemberListFragment.a(a).getItem(paramInt);
        } while (paramAdapterView == null);
        paramView = CastMemberListFragment.b(a).getSupportFragmentManager().findFragmentByTag("fragment_show_home");
      } while (paramView == null);
      paramView = (CastFragment)paramView.getChildFragmentManager().findFragmentByTag("fragment_show_cast");
    } while (paramView == null);
    paramView.setDeviceCast(paramAdapterView);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.cast.CastMemberListFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */