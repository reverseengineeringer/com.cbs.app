package com.adobe.mobile;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class g$1
  extends BroadcastReceiver
{
  g$1(g paramg) {}
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    g.b(g.a(paramContext));
    if (g.f())
    {
      am.c("Analytics - Network status changed (reachable)", new Object[0]);
      g.e().a(false);
      return;
    }
    am.c("Analytics - Network status changed (unreachable)", new Object[0]);
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.g.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */