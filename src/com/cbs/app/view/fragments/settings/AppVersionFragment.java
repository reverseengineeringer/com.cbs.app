package com.cbs.app.view.fragments.settings;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.cbs.app.view.utils.Util;

public class AppVersionFragment
  extends Fragment
{
  private static final String b = AppVersionFragment.class.getSimpleName();
  Context a;
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramBundle = paramLayoutInflater.inflate(2130903257, paramViewGroup, false);
    FragmentActivity localFragmentActivity;
    if (paramBundle != null)
    {
      localFragmentActivity = getActivity();
      a = localFragmentActivity.getApplicationContext();
      if (a == null) {}
    }
    try
    {
      if (a.getPackageManager() != null)
      {
        paramLayoutInflater = a.getPackageManager().getPackageInfo(a.getPackageName(), 0);
        paramViewGroup = versionName;
        int i = versionCode;
        paramLayoutInflater = paramBundle.findViewById(2131690217);
        if ((paramLayoutInflater != null) && ((paramLayoutInflater instanceof TextView)))
        {
          TextView localTextView = (TextView)paramLayoutInflater;
          paramLayoutInflater = paramViewGroup;
          if (Util.m(getActivity())) {
            paramLayoutInflater = paramViewGroup + " " + i;
          }
          localTextView.setText(paramLayoutInflater);
        }
      }
    }
    catch (PackageManager.NameNotFoundException paramLayoutInflater)
    {
      for (;;)
      {
        paramLayoutInflater.printStackTrace();
      }
      paramLayoutInflater.setEnabled(false);
      paramLayoutInflater.setAlpha(0.7F);
    }
    paramLayoutInflater = paramBundle.findViewById(2131690218);
    if ((paramLayoutInflater != null) && ((paramLayoutInflater instanceof Button)))
    {
      paramLayoutInflater = (Button)paramLayoutInflater;
      if (Util.s(localFragmentActivity))
      {
        paramLayoutInflater.setEnabled(true);
        paramLayoutInflater.setAlpha(1.0F);
        paramLayoutInflater.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            Util.J(a);
          }
        });
      }
    }
    else
    {
      return paramBundle;
    }
    return paramBundle;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AppVersionFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */