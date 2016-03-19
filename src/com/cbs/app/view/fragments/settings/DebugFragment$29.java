package com.cbs.app.view.fragments.settings;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.kochava.android.tracker.b;

final class DebugFragment$29
  implements View.OnClickListener
{
  DebugFragment$29(DebugFragment paramDebugFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = b.a();
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.setType("text/plain");
    localIntent.putExtra("android.intent.extra.SUBJECT", "Data");
    localIntent.putExtra("android.intent.extra.TEXT", paramView);
    a.startActivity(Intent.createChooser(localIntent, "Share Attribution Data"));
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.29
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */