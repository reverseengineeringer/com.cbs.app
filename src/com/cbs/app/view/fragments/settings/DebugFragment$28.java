package com.cbs.app.view.fragments.settings;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class DebugFragment$28
  implements View.OnClickListener
{
  DebugFragment$28(DebugFragment paramDebugFragment, String paramString) {}
  
  public final void onClick(View paramView)
  {
    paramView = new Intent("android.intent.action.SEND");
    paramView.setType("text/plain");
    paramView.putExtra("android.intent.extra.SUBJECT", "Channel Id");
    paramView.putExtra("android.intent.extra.TEXT", a);
    b.startActivity(Intent.createChooser(paramView, "Share Push Channel Id"));
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.28
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */