package com.cbs.app.view.fragments.settings;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnShowListener;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.utils.Util;

public class FeedbackFragment
  extends AbstractAsyncFragment
{
  protected static final String h = FeedbackFragment.class.getSimpleName();
  Context i;
  
  @SuppressLint({"SetJavaScriptEnabled"})
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, final Bundle paramBundle)
  {
    i = getActivity().getApplicationContext();
    if (i != null) {}
    for (;;)
    {
      int k;
      try
      {
        if (i.getPackageManager() == null) {
          break label388;
        }
        paramBundle = i.getPackageManager().getPackageInfo(i.getPackageName(), 0);
        localObject2 = versionName;
      }
      catch (PackageManager.NameNotFoundException paramBundle)
      {
        String str;
        j = 0;
        localObject1 = null;
      }
      try
      {
        k = versionCode;
      }
      catch (PackageManager.NameNotFoundException paramBundle)
      {
        for (;;)
        {
          j = 0;
          localObject1 = localObject2;
        }
      }
      try
      {
        str = Util.u(i);
        paramBundle = str;
        j = k;
        localObject1 = localObject2;
        if (str == null)
        {
          paramBundle = "None";
          localObject1 = localObject2;
          j = k;
        }
        localObject2 = new Intent("android.intent.action.SENDTO", Uri.fromParts("mailto", new String[] { "support.cbs.android@cbsinteractive.com" }[0], null));
        ((Intent)localObject2).putExtra("android.intent.extra.SUBJECT", "CBS Android app Feedback");
        ((Intent)localObject2).putExtra("android.intent.extra.TEXT", "\n\n\n\n\n\n\nApp Version: " + (String)localObject1 + " #" + Integer.toString(j) + '\n' + "OS Version: " + Build.VERSION.RELEASE + '\n' + "Device: " + Build.MODEL + '\n' + "Account: " + paramBundle);
      }
      catch (PackageManager.NameNotFoundException paramBundle)
      {
        j = k;
        localObject1 = localObject2;
        break label270;
      }
      try
      {
        startActivity((Intent)localObject2);
        paramBundle = getActivity().getSupportFragmentManager().findFragmentByTag("settings_fragment");
        if ((paramBundle != null) && ((paramBundle instanceof SettingsFragment))) {
          ((SettingsFragment)paramBundle).e();
        }
      }
      catch (ActivityNotFoundException paramBundle)
      {
        paramBundle = new AlertDialog.Builder(new ContextThemeWrapper(i, 2131427561));
        paramBundle.setTitle("Need Email Client");
        paramBundle.setMessage("You must have an email account enabled to use this feature");
        paramBundle.setCancelable(true);
        paramBundle.setPositiveButton("OK", new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            paramAnonymousDialogInterface.dismiss();
          }
        });
        paramBundle = paramBundle.create();
        if (paramBundle == null) {
          continue;
        }
        paramBundle.setOnShowListener(new DialogInterface.OnShowListener()
        {
          public final void onShow(DialogInterface paramAnonymousDialogInterface)
          {
            paramBundle.getButton(-1).setTypeface(null, 1);
            paramBundle.getButton(-1).setTextSize(2, 12.0F);
          }
        });
        continue;
      }
      return paramLayoutInflater.inflate(2130903259, paramViewGroup, false);
      label270:
      Object localObject2 = null;
      paramBundle.printStackTrace();
      paramBundle = (Bundle)localObject2;
      continue;
      label388:
      paramBundle = null;
      int j = 0;
      Object localObject1 = null;
    }
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.FeedbackFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */