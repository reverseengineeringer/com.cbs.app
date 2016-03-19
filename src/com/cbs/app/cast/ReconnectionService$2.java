package com.cbs.app.cast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import com.google.android.libraries.cast.companionlibrary.a.d;

final class ReconnectionService$2
  extends BroadcastReceiver
{
  ReconnectionService$2(ReconnectionService paramReconnectionService) {}
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    boolean bool;
    if (paramIntent.getAction().equals("android.net.wifi.STATE_CHANGE"))
    {
      bool = ((NetworkInfo)paramIntent.getParcelableExtra("networkInfo")).isConnected();
      if (!bool) {
        break label44;
      }
    }
    label44:
    for (paramContext = d.a(paramContext);; paramContext = null)
    {
      a.a(bool, paramContext);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.ReconnectionService.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */