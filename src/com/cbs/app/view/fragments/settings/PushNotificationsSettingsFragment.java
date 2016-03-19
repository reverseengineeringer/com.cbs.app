package com.cbs.app.view.fragments.settings;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.Switch;
import com.urbanairship.p;
import com.urbanairship.push.j;

public class PushNotificationsSettingsFragment
  extends Fragment
{
  private static final String a = PushNotificationsSettingsFragment.class.getSimpleName();
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903179, paramViewGroup, false);
    paramViewGroup = (Switch)paramLayoutInflater.findViewById(2131690048);
    paramViewGroup.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        if ((paramAnonymousBoolean) && (!p.a().m().c())) {
          p.a().m().b();
        }
        p.a().m().a(paramAnonymousBoolean);
      }
    });
    paramViewGroup.setChecked(p.a().m().d());
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.PushNotificationsSettingsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */