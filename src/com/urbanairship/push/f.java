package com.urbanairship.push;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.NotificationManagerCompat;
import com.urbanairship.BaseIntentService.a;
import com.urbanairship.CoreReceiver;
import com.urbanairship.actions.ActionService;
import com.urbanairship.analytics.c;
import com.urbanairship.analytics.o;
import com.urbanairship.d.h;
import com.urbanairship.json.JsonValue;
import com.urbanairship.json.b;
import com.urbanairship.l;
import com.urbanairship.push.a.e;
import com.urbanairship.push.iam.InAppMessage;
import com.urbanairship.push.iam.d;
import com.urbanairship.richpush.RichPushManager;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

final class f
  extends BaseIntentService.a
{
  private final NotificationManagerCompat a;
  private final j b;
  private final com.urbanairship.p c;
  
  public f(Context paramContext, l paraml)
  {
    this(paramContext, paraml, com.urbanairship.p.a(), NotificationManagerCompat.from(paramContext));
  }
  
  private f(Context paramContext, l paraml, com.urbanairship.p paramp, NotificationManagerCompat paramNotificationManagerCompat)
  {
    super(paramContext, paraml);
    c = paramp;
    b = paramp.m();
    a = paramNotificationManagerCompat;
  }
  
  private Integer a(PushMessage paramPushMessage, e parame)
  {
    if (parame == null)
    {
      new StringBuilder("NotificationFactory is null. Unable to display notification for message: ").append(paramPushMessage);
      return null;
    }
    try
    {
      Integer localInteger = Integer.valueOf(parame.a());
      parame = parame.a(paramPushMessage, localInteger.intValue());
      if (parame != null)
      {
        if ((!b.p()) || (b.q()))
        {
          vibrate = null;
          defaults &= 0xFFFFFFFD;
        }
        if ((!b.o()) || (b.q()))
        {
          sound = null;
          defaults &= 0xFFFFFFFE;
        }
        Intent localIntent = new Intent(a(), CoreReceiver.class).setAction("com.urbanairship.ACTION_NOTIFICATION_OPENED_PROXY").addCategory(UUID.randomUUID().toString()).putExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE", paramPushMessage).putExtra("com.urbanairship.push.NOTIFICATION_ID", localInteger);
        if (contentIntent != null) {
          localIntent.putExtra("com.urbanairship.push.EXTRA_NOTIFICATION_CONTENT_INTENT", contentIntent);
        }
        paramPushMessage = new Intent(a(), CoreReceiver.class).setAction("com.urbanairship.ACTION_NOTIFICATION_DISMISSED_PROXY").addCategory(UUID.randomUUID().toString()).putExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE", paramPushMessage).putExtra("com.urbanairship.push.NOTIFICATION_ID", localInteger);
        if (deleteIntent != null) {
          paramPushMessage.putExtra("com.urbanairship.push.EXTRA_NOTIFICATION_DELETE_INTENT", deleteIntent);
        }
        contentIntent = PendingIntent.getBroadcast(a(), 0, localIntent, 0);
        deleteIntent = PendingIntent.getBroadcast(a(), 0, paramPushMessage, 0);
        new StringBuilder("Posting notification ").append(parame).append(" with ID ").append(localInteger);
        a.notify(localInteger.intValue(), parame);
      }
      return localInteger;
    }
    catch (Exception paramPushMessage)
    {
      com.urbanairship.j.a("Unable to create and display notification.", paramPushMessage);
    }
    return null;
  }
  
  private void a(PushMessage paramPushMessage)
  {
    if (!b.c()) {}
    do
    {
      return;
      if (!a(paramPushMessage.c()))
      {
        new StringBuilder("Received a duplicate push with canonical ID: ").append(paramPushMessage.c());
        return;
      }
      b.a(paramPushMessage.f());
      String str = paramPushMessage.f();
      localObject = str;
      if (h.a(str)) {
        localObject = UUID.randomUUID().toString();
      }
      c.q().a(new o((String)localObject));
    } while ((paramPushMessage.a()) || (paramPushMessage.b()));
    Object localObject = new Bundle();
    ((Bundle)localObject).putParcelable("com.urbanairship.PUSH_MESSAGE", paramPushMessage);
    ActionService.a(com.urbanairship.p.h(), paramPushMessage.g(), com.urbanairship.actions.p.b, (Bundle)localObject);
    localObject = paramPushMessage.s();
    if (localObject != null) {
      c.p().a((InAppMessage)localObject);
    }
    if (!h.a(paramPushMessage.d()))
    {
      localObject = new Semaphore(0);
      c.n().a(new f.1(this, (Semaphore)localObject));
    }
    try
    {
      ((Semaphore)localObject).tryAcquire(60000L, TimeUnit.MILLISECONDS);
      localObject = null;
      if (!b.d()) {
        new StringBuilder("User notifications disabled. Unable to display notification for message: ").append(paramPushMessage);
      }
      for (;;)
      {
        paramPushMessage = new Intent("com.urbanairship.push.RECEIVED").putExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE", paramPushMessage).addCategory(com.urbanairship.p.b()).setPackage(com.urbanairship.p.b());
        if (localObject != null) {
          paramPushMessage.putExtra("com.urbanairship.push.NOTIFICATION_ID", ((Integer)localObject).intValue());
        }
        a().sendBroadcast(paramPushMessage, com.urbanairship.p.c());
        return;
        localObject = a(paramPushMessage, b.e());
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  private boolean a(String paramString)
  {
    if (h.a(paramString)) {
      return true;
    }
    try
    {
      Object localObject = JsonValue.b(b().a("com.urbanairship.push.LAST_CANONICAL_IDS")).e();
      if (localObject == null)
      {
        localObject = new ArrayList();
        paramString = JsonValue.c(paramString);
        if (!((List)localObject).contains(paramString)) {
          break label69;
        }
        return false;
      }
    }
    catch (com.urbanairship.json.a locala)
    {
      List localList;
      for (;;)
      {
        localList = null;
        continue;
        localList = localList.b();
      }
      label69:
      localList.add(paramString);
      paramString = localList;
      if (localList.size() > 10) {
        paramString = localList.subList(localList.size() - 10, localList.size());
      }
      b().a("com.urbanairship.push.LAST_CANONICAL_IDS", JsonValue.a(paramString, null).toString());
    }
    return true;
  }
  
  protected final void a(Intent paramIntent)
  {
    String str = paramIntent.getAction();
    int i = -1;
    switch (str.hashCode())
    {
    default: 
      switch (i)
      {
      }
      break;
    }
    do
    {
      return;
      if (!str.equals("com.urbanairship.push.ACTION_RECEIVE_ADM_MESSAGE")) {
        break;
      }
      i = 0;
      break;
      if (!str.equals("com.urbanairship.push.ACTION_RECEIVE_GCM_MESSAGE")) {
        break;
      }
      i = 1;
      break;
      if (c.u() != 1)
      {
        com.urbanairship.j.a("Received intent from invalid transport acting as ADM.");
        return;
      }
      if (!c.m().g())
      {
        com.urbanairship.j.a("IncomingPushServiceDelegate - Received intent from ADM without registering.");
        return;
      }
      paramIntent = (Intent)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_INTENT");
      if (paramIntent == null)
      {
        com.urbanairship.j.a("IncomingPushServiceDelegate - Received ADM message missing original intent.");
        return;
      }
      a(new PushMessage(paramIntent.getExtras()));
      return;
      if (c.u() != 2)
      {
        com.urbanairship.j.a("Received intent from invalid transport acting as GCM.");
        return;
      }
      if (!c.m().g())
      {
        com.urbanairship.j.a("IncomingPushServiceDelegate - Received intent from GCM without registering.");
        return;
      }
      paramIntent = (Intent)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_INTENT");
      if (paramIntent == null)
      {
        com.urbanairship.j.a("IncomingPushServiceDelegate - Received GCM message missing original intent.");
        return;
      }
      str = paramIntent.getStringExtra("from");
    } while ((str != null) && (!str.equals(c.l().h)));
    if ("deleted_messages".equals(paramIntent.getStringExtra("message_type")))
    {
      new StringBuilder("GCM deleted ").append(paramIntent.getStringExtra("total_deleted")).append(" pending messages.");
      return;
    }
    a(new PushMessage(paramIntent.getExtras()));
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */