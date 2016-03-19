package com.cbs.app.cast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.libraries.cast.companionlibrary.a.b;

final class ReconnectionService$1
  extends BroadcastReceiver
{
  ReconnectionService$1(ReconnectionService paramReconnectionService) {}
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    ReconnectionService.a();
    b.a("ScreenOnOffBroadcastReceiver: onReceive(): " + paramIntent.getAction());
    if (ReconnectionService.a(a) < 500L) {
      ReconnectionService.b(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.ReconnectionService.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */