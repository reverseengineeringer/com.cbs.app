package com.urbanairship.richpush;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import com.urbanairship.d;
import com.urbanairship.l;
import com.urbanairship.p;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public final class RichPushManager
  extends d
{
  private final e a;
  private final b b;
  private final AtomicInteger c = new AtomicInteger();
  private final List<Object> d = new ArrayList();
  private BroadcastReceiver e;
  
  public RichPushManager(Context paramContext, l paraml)
  {
    this(new e(paraml), new b(paramContext));
  }
  
  private RichPushManager(e parame, b paramb)
  {
    a = parame;
    b = paramb;
  }
  
  private void a(boolean paramBoolean, RichPushManager.a parama)
  {
    if (c.get() > 0) {}
    for (int i = 1; (i != 0) && (!paramBoolean); i = 0) {
      return;
    }
    parama = new RichPushManager.2(this, c.incrementAndGet(), parama);
    Context localContext = p.h();
    localContext.startService(new Intent(localContext, RichPushUpdateService.class).setAction("com.urbanairship.richpush.MESSAGES_UPDATE").putExtra("com.urbanairship.richpush.RESULT_RECEIVER", parama));
  }
  
  private List<Object> e()
  {
    synchronized (d)
    {
      ArrayList localArrayList = new ArrayList(d);
      return localArrayList;
    }
  }
  
  protected final void a()
  {
    b.a();
    a(false);
    e = new RichPushManager.1(this);
    LocalBroadcastManager localLocalBroadcastManager = LocalBroadcastManager.getInstance(p.h());
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.urbanairship.analytics.APP_FOREGROUND");
    localIntentFilter.addAction("com.urbanairship.analytics.APP_BACKGROUND");
    localLocalBroadcastManager.registerReceiver(e, localIntentFilter);
    p.h().registerReceiver(e, localIntentFilter);
  }
  
  public final void a(RichPushManager.a parama)
  {
    a(true, parama);
  }
  
  public final void a(boolean paramBoolean)
  {
    RichPushManager.3 local3 = new RichPushManager.3(this);
    Context localContext = p.h();
    localContext.startService(new Intent(localContext, RichPushUpdateService.class).setAction("com.urbanairship.richpush.USER_UPDATE").putExtra("com.urbanairship.richpush.RESULT_RECEIVER", local3).putExtra("com.urbanairship.richpush.EXTRA_FORCEFULLY", paramBoolean));
  }
  
  public final e b()
  {
    try
    {
      e locale = a;
      return locale;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final b c()
  {
    try
    {
      b localb = b;
      return localb;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void d()
  {
    a(false, null);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.RichPushManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */