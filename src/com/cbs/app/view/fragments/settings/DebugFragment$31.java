package com.cbs.app.view.fragments.settings;

import android.content.Intent;
import android.provider.Settings.Secure;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;

final class DebugFragment$31
  implements View.OnClickListener
{
  DebugFragment$31(DebugFragment paramDebugFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = Settings.Secure.getString(a.getActivity().getContentResolver(), "android_id");
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.setType("text/plain");
    localIntent.putExtra("android.intent.extra.SUBJECT", "Data");
    localIntent.putExtra("android.intent.extra.TEXT", paramView);
    a.startActivity(Intent.createChooser(localIntent, "Share androidId"));
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.31
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */