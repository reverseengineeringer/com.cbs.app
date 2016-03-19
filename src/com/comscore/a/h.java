package com.comscore.a;

import java.util.concurrent.atomic.AtomicInteger;

final class h
  implements Runnable
{
  h(b paramb) {}
  
  public final void run()
  {
    if (a.T()) {}
    while (a.y.get() <= 0) {
      return;
    }
    a.y.getAndDecrement();
    a.o();
  }
}

/* Location:
 * Qualified Name:     com.comscore.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */