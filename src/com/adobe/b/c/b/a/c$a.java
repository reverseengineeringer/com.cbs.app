package com.adobe.b.c.b.a;

import android.os.Handler;
import android.os.HandlerThread;

final class c$a
  extends HandlerThread
{
  private Handler b;
  private boolean c = false;
  
  c$a(final c paramc)
  {
    super("VideoHeartbeatClock");
    start();
    if (getLooper() == null)
    {
      c.b(paramc).a(c.a(paramc), "Unable to obtain looper thread.");
      return;
    }
    b = new Handler(getLooper());
    final Handler localHandler = b;
    localHandler.post(new Runnable()
    {
      public final void run()
      {
        if (!c.a.a(c.a.this))
        {
          c.c(paramc);
          localHandler.postDelayed(this, (c.a * 1000.0D));
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.b.a.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */