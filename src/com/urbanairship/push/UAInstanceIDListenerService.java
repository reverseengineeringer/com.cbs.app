package com.urbanairship.push;

import android.content.Intent;
import android.support.v4.content.WakefulBroadcastReceiver;
import com.google.android.gms.iid.InstanceIDListenerService;

public class UAInstanceIDListenerService
  extends InstanceIDListenerService
{
  public final void b()
  {
    super.b();
    Intent localIntent = new Intent(getApplicationContext(), PushService.class).setAction("com.urbanairship.push.ACTION_UPDATE_PUSH_REGISTRATION").putExtra("com.urbanairship.push.EXTRA_GCM_TOKEN_REFRESH", true);
    WakefulBroadcastReceiver.startWakefulService(getApplicationContext(), localIntent);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.UAInstanceIDListenerService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */