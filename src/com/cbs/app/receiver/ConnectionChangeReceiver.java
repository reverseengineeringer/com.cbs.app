package com.cbs.app.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.PopupActivity;

public class ConnectionChangeReceiver
  extends BroadcastReceiver
{
  private static final String a = ConnectionChangeReceiver.class.getSimpleName();
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramIntent = (ConnectivityManager)paramContext.getSystemService("connectivity");
    NetworkInfo localNetworkInfo = paramIntent.getActiveNetworkInfo();
    paramIntent.getNetworkInfo(0);
    int i;
    if (localNetworkInfo != null)
    {
      i = 1;
      new StringBuilder("Network info available:").append(localNetworkInfo.getTypeName());
    }
    for (;;)
    {
      if ((i == 0) && (MainApplication.a()))
      {
        paramIntent = new Intent(paramContext, PopupActivity.class);
        paramIntent.addFlags(268435456);
        paramIntent.addFlags(67108864);
        paramContext.startActivity(paramIntent);
      }
      return;
      i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.receiver.ConnectionChangeReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */