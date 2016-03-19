package com.comscore.a;

import com.comscore.utils.ConnectivityChangeReceiver;
import com.comscore.utils.b.a;
import com.comscore.utils.i;

final class e
  implements Runnable
{
  e(b paramb, boolean paramBoolean) {}
  
  public final void run()
  {
    if ((a) && (!b.a(b)))
    {
      b.a(b, true);
      b.o(b.b(b));
      b.a();
      b.h.a();
      b.c.a(3000);
    }
    while ((a) || (!b.a(b))) {
      return;
    }
    b.a(b, false);
    b.b(b, b.af);
    if (Thread.getDefaultUncaughtExceptionHandler() != b.ag) {
      Thread.setDefaultUncaughtExceptionHandler(b.ag);
    }
    b.h.b();
    b.c.b();
    b.a.b();
    b.f.c();
  }
}

/* Location:
 * Qualified Name:     com.comscore.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */