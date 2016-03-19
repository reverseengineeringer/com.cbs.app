package com.urbanairship.push;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.gcm.GcmReceiver;
import com.urbanairship.c;
import com.urbanairship.j;

public class GCMPushReceiver
  extends GcmReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    c.a(paramContext);
    try
    {
      super.onReceive(paramContext, paramIntent);
      new StringBuilder("GCMPushReceiver - Received intent: ").append(paramIntent.getAction());
      if ("com.google.android.c2dm.intent.RECEIVE".equals(paramIntent.getAction())) {
        startWakefulService(paramContext, new Intent(paramContext, PushService.class).setAction("com.urbanairship.push.ACTION_RECEIVE_GCM_MESSAGE").putExtra("com.urbanairship.push.EXTRA_INTENT", paramIntent));
      }
      return;
    }
    catch (SecurityException localSecurityException)
    {
      for (;;)
      {
        j.a("Received security exception from GcmReceiver: ", localSecurityException);
        if (!"com.google.android.c2dm.intent.RECEIVE".equals(paramIntent.getAction())) {
          startWakefulService(paramContext, new Intent(paramContext, PushService.class).setAction("com.urbanairship.push.ACTION_UPDATE_PUSH_REGISTRATION").putExtra("com.urbanairship.push.EXTRA_GCM_TOKEN_REFRESH", true));
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.GCMPushReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */