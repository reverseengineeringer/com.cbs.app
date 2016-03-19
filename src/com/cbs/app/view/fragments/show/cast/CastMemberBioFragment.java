package com.cbs.app.view.fragments.show.cast;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.cbs.app.view.model.DeviceCast;
import com.cbs.app.view.utils.Util;

public class CastMemberBioFragment
  extends Fragment
{
  private static final String a = CastMemberBioFragment.class.getSimpleName();
  private AppCompatActivity b = null;
  private View c = null;
  private DeviceCast d = null;
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    b = ((AppCompatActivity)paramActivity);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    c = paramLayoutInflater.inflate(2130903083, paramViewGroup, false);
    paramLayoutInflater = getArguments().getParcelable("deviceCast");
    if (paramLayoutInflater != null)
    {
      d = ((DeviceCast)paramLayoutInflater);
      if (d != null)
      {
        paramLayoutInflater = (TextView)c.findViewById(2131689692);
        if (paramLayoutInflater != null) {
          paramLayoutInflater.setText(d.getTitle());
        }
        paramLayoutInflater = (TextView)c.findViewById(2131689693);
        paramViewGroup = d.getCharacterName();
        if (paramLayoutInflater != null)
        {
          if ((paramViewGroup == null) || (paramViewGroup.equals("")) || (paramViewGroup.equals("null"))) {
            break label265;
          }
          paramLayoutInflater.setText("As " + paramViewGroup);
        }
      }
    }
    for (;;)
    {
      paramLayoutInflater = (TextView)c.findViewById(2131689705);
      if (paramLayoutInflater != null) {
        paramLayoutInflater.setText(d.getBio());
      }
      if ((Util.g(b)) || (Util.f(b)))
      {
        paramViewGroup = d.getTwitterScreenName();
        paramLayoutInflater = paramViewGroup;
        if (paramViewGroup != null) {
          paramLayoutInflater = paramViewGroup.replace(" ", "");
        }
        if ((paramLayoutInflater != null) && (!paramLayoutInflater.equals("")) && (!paramLayoutInflater.equals("null")))
        {
          paramLayoutInflater = c.findViewById(2131689704);
          if (paramLayoutInflater != null)
          {
            paramLayoutInflater.setVisibility(0);
            paramLayoutInflater.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                paramAnonymousView = CastMemberBioFragment.a(CastMemberBioFragment.this).getSupportFragmentManager().findFragmentByTag("fragment_show_home");
                if (paramAnonymousView != null)
                {
                  paramAnonymousView = (CastFragment)paramAnonymousView.getChildFragmentManager().findFragmentByTag("fragment_show_cast");
                  if (paramAnonymousView != null) {
                    paramAnonymousView.e();
                  }
                }
              }
            });
          }
        }
      }
      return c;
      label265:
      paramLayoutInflater.setVisibility(8);
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    c = null;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.cast.CastMemberBioFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */