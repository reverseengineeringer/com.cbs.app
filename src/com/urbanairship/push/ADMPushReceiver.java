package com.urbanairship.push;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.support.v4.content.WakefulBroadcastReceiver;
import com.urbanairship.c;
import com.urbanairship.j;

public class ADMPushReceiver
  extends WakefulBroadcastReceiver
{
  @SuppressLint({"NewApi"})
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    c.a(paramContext);
    if ((paramIntent == null) || (paramIntent.getAction() == null)) {
      return;
    }
    new StringBuilder("ADMPushReceiver - Received intent: ").append(paramIntent.getAction());
    if (Build.VERSION.SDK_INT < 15)
    {
      j.a("ADMPushReceiver - Received intent from ADM transport on an unsupported API version.");
      return;
    }
    String str = paramIntent.getAction();
    label84:
    int i;
    switch (str.hashCode())
    {
    default: 
      i = -1;
      label86:
      switch (i)
      {
      }
      break;
    }
    while (isOrderedBroadcast())
    {
      setResultCode(-1);
      return;
      if (!str.equals("com.amazon.device.messaging.intent.RECEIVE")) {
        break label84;
      }
      i = 0;
      break label86;
      if (!str.equals("com.amazon.device.messaging.intent.REGISTRATION")) {
        break label84;
      }
      i = 1;
      break label86;
      startWakefulService(paramContext, new Intent(paramContext, PushService.class).setAction("com.urbanairship.push.ACTION_RECEIVE_ADM_MESSAGE").putExtra("com.urbanairship.push.EXTRA_INTENT", paramIntent));
      continue;
      startWakefulService(paramContext, new Intent(paramContext, PushService.class).setAction("com.urbanairship.push.ACTION_ADM_REGISTRATION_FINISHED").putExtra("com.urbanairship.push.EXTRA_INTENT", paramIntent));
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.ADMPushReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */