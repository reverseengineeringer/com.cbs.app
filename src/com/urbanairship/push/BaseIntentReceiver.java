package com.urbanairship.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.urbanairship.c;
import com.urbanairship.j;

public abstract class BaseIntentReceiver
  extends BroadcastReceiver
{
  protected abstract void a(PushMessage paramPushMessage);
  
  protected abstract void a(PushMessage paramPushMessage, int paramInt);
  
  protected abstract void a(String paramString);
  
  protected abstract boolean a(PushMessage paramPushMessage, String paramString);
  
  protected abstract boolean b(PushMessage paramPushMessage);
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    c.a(paramContext);
    if ((paramIntent == null) || (paramIntent.getAction() == null)) {}
    label96:
    label222:
    do
    {
      do
      {
        return;
        paramContext = paramIntent.getAction();
        new StringBuilder().append(getClass().getSimpleName()).append(" - Received intent with action: ").append(paramContext);
        int i;
        switch (paramContext.hashCode())
        {
        default: 
          i = -1;
        }
        for (;;)
        {
          switch (i)
          {
          default: 
            return;
          case 0: 
            paramContext = (PushMessage)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE");
            if (paramContext != null) {
              break label222;
            }
            j.a("BaseIntentReceiver - Intent is missing push message for: " + paramIntent.getAction());
            return;
            if (!paramContext.equals("com.urbanairship.push.RECEIVED")) {
              break label96;
            }
            i = 0;
            continue;
            if (!paramContext.equals("com.urbanairship.push.OPENED")) {
              break label96;
            }
            i = 1;
            continue;
            if (!paramContext.equals("com.urbanairship.push.CHANNEL_UPDATED")) {
              break label96;
            }
            i = 2;
            continue;
            if (!paramContext.equals("com.urbanairship.push.DISMISSED")) {
              break label96;
            }
            i = 3;
          }
        }
        if (paramIntent.hasExtra("com.urbanairship.push.NOTIFICATION_ID"))
        {
          a(paramContext, paramIntent.getIntExtra("com.urbanairship.push.NOTIFICATION_ID", -1));
          return;
        }
        a(paramContext);
        return;
        paramIntent.getIntExtra("com.urbanairship.push.NOTIFICATION_ID", -1);
        paramContext = (PushMessage)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE");
        if (paramContext == null)
        {
          j.a("BaseIntentReceiver - Intent is missing push message for: " + paramIntent.getAction());
          return;
        }
        if (paramIntent.hasExtra("com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"))
        {
          String str = paramIntent.getStringExtra("com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID");
          paramIntent.getBooleanExtra("com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND", false);
          a(paramContext, str);
        }
        while ((isOrderedBroadcast()) && (getResultCode() != 1))
        {
          setResultCode(-1);
          return;
          b(paramContext);
        }
      } while (paramIntent.hasExtra("com.urbanairship.push.EXTRA_ERROR"));
      paramContext = paramIntent.getStringExtra("com.urbanairship.push.EXTRA_CHANNEL_ID");
      if (paramContext == null)
      {
        j.a("BaseIntentReceiver - Intent is missing channel ID for: " + paramIntent.getAction());
        return;
      }
      a(paramContext);
      return;
      paramIntent.getIntExtra("com.urbanairship.push.NOTIFICATION_ID", -1);
    } while ((PushMessage)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE") != null);
    j.a("BaseIntentReceiver - Intent is missing push message for: " + paramIntent.getAction());
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.BaseIntentReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */