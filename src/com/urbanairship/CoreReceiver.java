package com.urbanairship;

import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.NotificationManagerCompat;
import com.urbanairship.actions.ActionService;
import com.urbanairship.analytics.m;
import com.urbanairship.push.PushMessage;
import com.urbanairship.push.iam.InAppMessage;
import com.urbanairship.push.iam.d;
import com.urbanairship.push.iam.e;

public class CoreReceiver
  extends BroadcastReceiver
{
  static void a(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.hasExtra("com.urbanairship.EXTRA_NOTIFICATION_ID"))
    {
      int i = paramIntent.getIntExtra("com.urbanairship.EXTRA_NOTIFICATION_ID", -1);
      NotificationManagerCompat.from(paramContext).cancel(i);
    }
    paramIntent = paramIntent.getStringExtra("com.urbanairship.EXTRA_ACTIONS");
    if (!com.urbanairship.d.h.a(paramIntent)) {
      ActionService.a(paramContext, paramIntent, com.urbanairship.actions.p.a, null);
    }
  }
  
  private static void a(String paramString)
  {
    if (com.urbanairship.d.h.a(paramString)) {}
    d locald;
    InAppMessage localInAppMessage1;
    InAppMessage localInAppMessage2;
    do
    {
      return;
      locald = an;
      localInAppMessage1 = locald.d();
      localInAppMessage2 = locald.e();
    } while ((localInAppMessage1 == null) || (!paramString.equals(localInAppMessage1.c())) || (localInAppMessage1.equals(localInAppMessage2)));
    locald.a(null);
    paramString = e.a(localInAppMessage1);
    ag.a(paramString);
  }
  
  private static boolean a(Context paramContext)
  {
    Intent localIntent = paramContext.getPackageManager().getLaunchIntentForPackage(p.b());
    if (localIntent != null)
    {
      localIntent.setFlags(805306368);
      paramContext.startActivity(localIntent);
      return true;
    }
    return false;
  }
  
  static void b(Context paramContext, Intent paramIntent)
  {
    PushMessage localPushMessage = (PushMessage)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE");
    if (localPushMessage == null)
    {
      j.a("CoreReceiver - Intent is missing push message for: " + paramIntent.getAction());
      return;
    }
    paramIntent.getIntExtra("com.urbanairship.push.NOTIFICATION_ID", -1);
    ag.a(localPushMessage.f());
    a(localPushMessage.f());
    paramContext.sendOrderedBroadcast(new Intent("com.urbanairship.push.OPENED").putExtras(paramIntent.getExtras()).setPackage(p.b()).addCategory(p.b()), p.c());
  }
  
  static void c(Context paramContext, Intent paramIntent)
  {
    Object localObject = (PushMessage)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE");
    if (localObject == null)
    {
      j.a("CoreReceiver - Intent is missing push message for: " + paramIntent.getAction());
      return;
    }
    String str1 = paramIntent.getStringExtra("com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID");
    if (str1 == null)
    {
      j.a("CoreReceiver - Intent is missing notification button ID: " + paramIntent.getAction());
      return;
    }
    int i = paramIntent.getIntExtra("com.urbanairship.push.NOTIFICATION_ID", -1);
    boolean bool = paramIntent.getBooleanExtra("com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND", true);
    String str2 = paramIntent.getStringExtra("com.urbanairship.push.EXTRA_NOTIFICATION_ACTION_BUTTON_DESCRIPTION");
    new StringBuilder("Notification opened ID: ").append(i).append(" action button Id: ").append(str1);
    if (bool) {
      ag.a(((PushMessage)localObject).f());
    }
    a(((PushMessage)localObject).f());
    NotificationManagerCompat.from(paramContext).cancel(i);
    localObject = new m((PushMessage)localObject, str1, str2, bool);
    ag.a((com.urbanairship.analytics.h)localObject);
    paramContext.sendOrderedBroadcast(new Intent("com.urbanairship.push.OPENED").putExtras(paramIntent.getExtras()).setPackage(p.b()).addCategory(p.b()), p.c());
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    c.a(paramContext);
    if ((paramIntent == null) || (paramIntent.getAction() == null)) {}
    for (;;)
    {
      return;
      new StringBuilder("CoreReceiver - Received intent: ").append(paramIntent.getAction());
      Object localObject1 = paramIntent.getAction();
      label96:
      int i;
      switch (((String)localObject1).hashCode())
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
          b(paramContext, paramIntent);
          return;
          if (!((String)localObject1).equals("com.urbanairship.ACTION_NOTIFICATION_OPENED_PROXY")) {
            break label96;
          }
          i = 0;
          continue;
          if (!((String)localObject1).equals("com.urbanairship.ACTION_NOTIFICATION_BUTTON_OPENED_PROXY")) {
            break label96;
          }
          i = 1;
          continue;
          if (!((String)localObject1).equals("com.urbanairship.ACTION_NOTIFICATION_DISMISSED_PROXY")) {
            break label96;
          }
          i = 2;
          continue;
          if (!((String)localObject1).equals("com.urbanairship.push.OPENED")) {
            break label96;
          }
          i = 3;
          continue;
          if (!((String)localObject1).equals("com.urbanairship.ACTION_CHANNEL_CAPTURE")) {
            break label96;
          }
          i = 4;
        }
      }
      c(paramContext, paramIntent);
      return;
      if ((PushMessage)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE") == null)
      {
        j.a("CoreReceiver - Intent is missing push message for: " + paramIntent.getAction());
        return;
      }
      paramIntent.getIntExtra("com.urbanairship.push.NOTIFICATION_ID", -1);
      localObject1 = (PendingIntent)paramIntent.getExtras().get("com.urbanairship.push.EXTRA_NOTIFICATION_DELETE_INTENT");
      if (localObject1 != null) {}
      try
      {
        ((PendingIntent)localObject1).send();
        paramContext.sendOrderedBroadcast(new Intent("com.urbanairship.push.DISMISSED").putExtras(paramIntent.getExtras()).setPackage(p.b()).addCategory(p.b()), p.c());
        return;
        localObject2 = af;
        localObject1 = (PushMessage)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE");
        if (localObject1 == null)
        {
          j.a("CoreReceiver - Intent is missing push message for: " + paramIntent.getAction());
          return;
        }
        if (paramIntent.hasExtra("com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"))
        {
          boolean bool = paramIntent.getBooleanExtra("com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND", false);
          String str = paramIntent.getStringExtra("com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD");
          if ((bool) && (getResultCode() != 1) && (s) && (a(paramContext)) && (isOrderedBroadcast())) {
            setResultCode(1);
          }
          if (com.urbanairship.d.h.a(str)) {
            continue;
          }
          if (bool) {}
          for (paramIntent = com.urbanairship.actions.p.e;; paramIntent = com.urbanairship.actions.p.f)
          {
            localObject2 = new Bundle();
            ((Bundle)localObject2).putParcelable("com.urbanairship.PUSH_MESSAGE", (Parcelable)localObject1);
            ActionService.a(paramContext, str, paramIntent, (Bundle)localObject2);
            return;
          }
        }
        if (getResultCode() != 1)
        {
          paramIntent = (PendingIntent)paramIntent.getExtras().get("com.urbanairship.push.EXTRA_NOTIFICATION_CONTENT_INTENT");
          if (paramIntent == null) {
            break label562;
          }
        }
      }
      catch (PendingIntent.CanceledException localCanceledException)
      {
        try
        {
          Object localObject2;
          paramIntent.send();
          if (isOrderedBroadcast()) {
            setResultCode(1);
          }
          for (;;)
          {
            paramIntent = new Bundle();
            paramIntent.putParcelable("com.urbanairship.PUSH_MESSAGE", (Parcelable)localObject1);
            ActionService.a(paramContext, ((PushMessage)localObject1).g(), com.urbanairship.actions.p.c, paramIntent);
            return;
            label562:
            if ((s) && (a(paramContext)) && (isOrderedBroadcast())) {
              setResultCode(1);
            }
          }
          a(paramContext, paramIntent);
          return;
          localCanceledException = localCanceledException;
        }
        catch (PendingIntent.CanceledException paramIntent)
        {
          for (;;) {}
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.CoreReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */