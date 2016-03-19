package com.cbs.app.view.fragments.show.cast;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.cbs.app.analytics.Action;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.model.DeviceCast;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.utils.Util;

public class CastMemberComboFragment
  extends AbstractAsyncFragment
{
  private static final String h = CastMemberComboFragment.class.getSimpleName();
  private View i = null;
  private DeviceCast j = null;
  private boolean k = true;
  private Show l;
  private boolean m = false;
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    m = true;
    i = paramLayoutInflater.inflate(2130903084, paramViewGroup, false);
    paramLayoutInflater = getArguments();
    k = paramLayoutInflater.getBoolean("showImage", true);
    l = ((Show)paramLayoutInflater.getParcelable("show"));
    paramLayoutInflater = paramLayoutInflater.getParcelable("deviceCast");
    if (paramLayoutInflater != null)
    {
      j = ((DeviceCast)paramLayoutInflater);
      if ((m) && (i != null) && (j != null))
      {
        paramLayoutInflater = i.findViewById(2131689707);
        if ((i.findViewById(2131689708) != null) && (paramLayoutInflater != null))
        {
          paramLayoutInflater = new Bundle();
          paramLayoutInflater.putParcelable("deviceCast", j);
          paramViewGroup = getChildFragmentManager().beginTransaction();
          if (!k) {
            break label210;
          }
          i.findViewById(2131689707).setVisibility(0);
          paramBundle = new CastMemberImageFragment();
          paramBundle.setArguments(paramLayoutInflater);
          paramViewGroup.replace(2131689707, paramBundle);
        }
      }
    }
    for (;;)
    {
      paramBundle = new CastMemberBioFragment();
      paramBundle.setArguments(paramLayoutInflater);
      paramViewGroup.replace(2131689708, paramBundle);
      paramViewGroup.commitAllowingStateLoss();
      return i;
      label210:
      i.findViewById(2131689707).setVisibility(8);
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    i = null;
  }
  
  public void onPause()
  {
    super.onPause();
    m = false;
  }
  
  public void onResume()
  {
    if ((Util.g(getActivity())) || (Util.f(getActivity())))
    {
      d = Action.D;
      if (l != null)
      {
        e = l.getTitle();
        f = Long.valueOf(l.getId()).toString();
      }
    }
    super.onResume();
    m = true;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.cast.CastMemberComboFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */