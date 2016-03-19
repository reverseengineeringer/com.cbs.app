package com.cbs.app.view.fragments.settings;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;

final class RateFragment$1$1
  implements Runnable
{
  RateFragment$1$1(RateFragment.1 param1, Activity paramActivity) {}
  
  public final void run()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(RateFragment.a(b.a)));
    localIntent.addFlags(268435456);
    a.startActivity(localIntent);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.RateFragment.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */