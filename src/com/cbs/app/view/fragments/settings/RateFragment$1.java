package com.cbs.app.view.fragments.settings;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

final class RateFragment$1
  implements View.OnClickListener
{
  RateFragment$1(RateFragment paramRateFragment) {}
  
  public final void onClick(final View paramView)
  {
    paramView = RateFragment.a;
    if (RateFragment.a(a) != null)
    {
      paramView = a.getActivity();
      paramView.runOnUiThread(new Runnable()
      {
        public final void run()
        {
          Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(RateFragment.a(a)));
          localIntent.addFlags(268435456);
          paramView.startActivity(localIntent);
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.RateFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */