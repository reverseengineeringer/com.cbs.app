package com.cbs.app.view.fragments.settings;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import com.cbs.app.view.utils.Util;

public class RateFragment
  extends Fragment
{
  protected static final String a = null;
  private String b = null;
  private Context c;
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    int i = 0;
    paramViewGroup = paramLayoutInflater.inflate(2130903264, paramViewGroup, false);
    c = getActivity().getApplicationContext();
    if (paramViewGroup != null)
    {
      if (Util.G(getActivity())) {
        i = 1;
      }
      if (i == 0) {
        break label88;
      }
    }
    label88:
    for (paramLayoutInflater = "http://www.amazon.com/gp/mas/dl/android?p=com.cbs.app";; paramLayoutInflater = "https://play.google.com/store/apps/details?id=com.cbs.app")
    {
      b = paramLayoutInflater;
      paramLayoutInflater = paramViewGroup.findViewById(2131690280);
      if ((paramLayoutInflater != null) && ((paramLayoutInflater instanceof Button))) {
        ((Button)paramLayoutInflater).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(final View paramAnonymousView)
          {
            paramAnonymousView = RateFragment.a;
            if (RateFragment.a(RateFragment.this) != null)
            {
              paramAnonymousView = getActivity();
              paramAnonymousView.runOnUiThread(new Runnable()
              {
                public final void run()
                {
                  Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(RateFragment.a(RateFragment.this)));
                  localIntent.addFlags(268435456);
                  paramAnonymousView.startActivity(localIntent);
                }
              });
            }
          }
        });
      }
      return paramViewGroup;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.RateFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */