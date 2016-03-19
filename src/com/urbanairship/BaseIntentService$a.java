package com.urbanairship;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;

public abstract class BaseIntentService$a
{
  private final l a;
  private final Context b;
  
  public BaseIntentService$a(Context paramContext, l paraml)
  {
    b = paramContext;
    a = paraml;
  }
  
  protected final Context a()
  {
    return b;
  }
  
  protected abstract void a(Intent paramIntent);
  
  protected final l b()
  {
    return a;
  }
  
  public final void b(Intent paramIntent)
  {
    Object localObject = new Intent(paramIntent);
    ((Intent)localObject).removeExtra("android.support.content.wakelockid");
    long l = ((Intent)localObject).getLongExtra("com.urbanairship.EXTRA_BACK_OFF_MS", 0L);
    if (l <= 0L) {}
    for (l = 10000L;; l = Math.min(l * 2L, 5120000L))
    {
      ((Intent)localObject).putExtra("com.urbanairship.EXTRA_BACK_OFF_MS", l);
      new StringBuilder("BaseIntentService - Scheduling intent ").append(((Intent)localObject).getAction()).append(" in ").append(l).append(" milliseconds.");
      paramIntent = (AlarmManager)b.getSystemService("alarm");
      localObject = PendingIntent.getService(b, 0, (Intent)localObject, 134217728);
      paramIntent.set(3, l + SystemClock.elapsedRealtime(), (PendingIntent)localObject);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.BaseIntentService.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */