package com.cbs.app.view.fragments.settings;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.impl.KochavaService;

final class DebugFragment$30
  implements View.OnClickListener
{
  DebugFragment$30(DebugFragment paramDebugFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = KochavaService.getAttributionData();
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.setType("text/plain");
    localIntent.putExtra("android.intent.extra.SUBJECT", "Data");
    localIntent.putExtra("android.intent.extra.TEXT", paramView);
    a.startActivity(Intent.createChooser(localIntent, "Share Kochava Device Id"));
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.30
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */