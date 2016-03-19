package com.d.a.b.a.a;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.locks.ReentrantLock;

abstract class d$a
  implements Iterator<E>
{
  d.c<E> a;
  E b;
  private d.c<E> d;
  
  /* Error */
  d$a(d paramd)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: putfield 22	com/d/a/b/a/a/d$a:c	Lcom/d/a/b/a/a/d;
    //   5: aload_0
    //   6: invokespecial 25	java/lang/Object:<init>	()V
    //   9: aload_1
    //   10: getfield 28	com/d/a/b/a/a/d:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   13: astore_2
    //   14: aload_2
    //   15: invokevirtual 33	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   18: aload_0
    //   19: aload_0
    //   20: invokevirtual 36	com/d/a/b/a/a/d$a:a	()Lcom/d/a/b/a/a/d$c;
    //   23: putfield 38	com/d/a/b/a/a/d$a:a	Lcom/d/a/b/a/a/d$c;
    //   26: aload_0
    //   27: getfield 38	com/d/a/b/a/a/d$a:a	Lcom/d/a/b/a/a/d$c;
    //   30: ifnonnull +15 -> 45
    //   33: aconst_null
    //   34: astore_1
    //   35: aload_0
    //   36: aload_1
    //   37: putfield 40	com/d/a/b/a/a/d$a:b	Ljava/lang/Object;
    //   40: aload_2
    //   41: invokevirtual 43	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   44: return
    //   45: aload_0
    //   46: getfield 38	com/d/a/b/a/a/d$a:a	Lcom/d/a/b/a/a/d$c;
    //   49: getfield 47	com/d/a/b/a/a/d$c:a	Ljava/lang/Object;
    //   52: astore_1
    //   53: goto -18 -> 35
    //   56: astore_1
    //   57: aload_2
    //   58: invokevirtual 43	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   61: aload_1
    //   62: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	63	0	this	a
    //   0	63	1	paramd	d
    //   13	45	2	localReentrantLock	ReentrantLock
    // Exception table:
    //   from	to	target	type
    //   18	33	56	finally
    //   35	40	56	finally
    //   45	53	56	finally
  }
  
  private void b()
  {
    Object localObject4 = null;
    ReentrantLock localReentrantLock = c.c;
    localReentrantLock.lock();
    label101:
    for (;;)
    {
      try
      {
        Object localObject3 = a;
        d.c localc = a((d.c)localObject3);
        if (localc == null)
        {
          localObject1 = null;
          a = ((d.c)localObject1);
          if (a == null)
          {
            localObject1 = localObject4;
            b = localObject1;
          }
        }
        else
        {
          localObject1 = localc;
          if (a != null) {
            continue;
          }
          if (localc != localObject3) {
            break label101;
          }
          localObject1 = a();
          continue;
        }
        Object localObject1 = a.a;
        continue;
        localObject3 = localc;
      }
      finally
      {
        localReentrantLock.unlock();
      }
    }
  }
  
  abstract d.c<E> a();
  
  abstract d.c<E> a(d.c<E> paramc);
  
  public boolean hasNext()
  {
    return a != null;
  }
  
  public E next()
  {
    if (a == null) {
      throw new NoSuchElementException();
    }
    d = a;
    Object localObject = b;
    b();
    return (E)localObject;
  }
  
  public void remove()
  {
    d.c localc = d;
    if (localc == null) {
      throw new IllegalStateException();
    }
    d = null;
    ReentrantLock localReentrantLock = c.c;
    localReentrantLock.lock();
    try
    {
      if (a != null) {
        c.a(localc);
      }
      return;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
}

/* Location:
 * Qualified Name:     com.d.a.b.a.a.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */