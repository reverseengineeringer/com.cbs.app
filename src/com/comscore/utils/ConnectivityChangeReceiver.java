package com.comscore.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import com.comscore.b.e;
import com.comscore.utils.b.a;
import java.util.HashSet;

public class ConnectivityChangeReceiver
  extends BroadcastReceiver
{
  protected boolean a = false;
  protected boolean b = false;
  protected long c = -1L;
  protected HashSet<String> d = null;
  private Runnable e = null;
  private final com.comscore.a.b f;
  
  public ConnectivityChangeReceiver(com.comscore.a.b paramb)
  {
    f = paramb;
    d = new HashSet();
  }
  
  private void a(String paramString)
  {
    if (!f.U()) {}
    while ((!n.f(paramString)) || (d == null) || (d.contains(paramString))) {
      return;
    }
    if ((d.size() != 0) && (f.U())) {
      f.j().a(3000L);
    }
    d.add(paramString);
  }
  
  private void a(boolean paramBoolean)
  {
    if (!f.U()) {}
    do
    {
      return;
      if (b)
      {
        d();
        if ((c < SystemClock.uptimeMillis()) || (c < 0L) || (!paramBoolean)) {
          c = (SystemClock.uptimeMillis() + 30000L);
        }
        long l1 = c;
        long l2 = SystemClock.uptimeMillis();
        if (f.U())
        {
          e = new p(this);
          f.h().a(e, l1 - l2);
        }
        b.a(this, "scheduleFlushTask(): Flushing in " + (c - SystemClock.uptimeMillis()));
        return;
      }
    } while (c >= 0L);
    c = (SystemClock.uptimeMillis() + 30000L);
  }
  
  private void d()
  {
    if (e != null)
    {
      b.a(this, "cancelFlushTask()");
      f.h().b(e);
      e = null;
    }
  }
  
  /* Error */
  public final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 35	com/comscore/utils/ConnectivityChangeReceiver:f	Lcom/comscore/a/b;
    //   6: invokevirtual 46	com/comscore/a/b:U	()Z
    //   9: istore_1
    //   10: iload_1
    //   11: ifne +6 -> 17
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: iconst_1
    //   19: putfield 27	com/comscore/utils/ConnectivityChangeReceiver:b	Z
    //   22: aload_0
    //   23: getfield 25	com/comscore/utils/ConnectivityChangeReceiver:a	Z
    //   26: ifeq -12 -> 14
    //   29: aload_0
    //   30: getfield 31	com/comscore/utils/ConnectivityChangeReceiver:c	J
    //   33: lconst_0
    //   34: lcmp
    //   35: ifle -21 -> 14
    //   38: aload_0
    //   39: iconst_1
    //   40: invokespecial 124	com/comscore/utils/ConnectivityChangeReceiver:a	(Z)V
    //   43: goto -29 -> 14
    //   46: astore_2
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_2
    //   50: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	51	0	this	ConnectivityChangeReceiver
    //   9	2	1	bool	boolean
    //   46	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	10	46	finally
    //   17	43	46	finally
  }
  
  public final void b()
  {
    try
    {
      b = false;
      d();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  protected final void c()
  {
    try
    {
      b.a(this, "flushing");
      f.p(false);
      c = -1L;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    for (;;)
    {
      try
      {
        if (paramIntent.getExtras() != null)
        {
          if (!d.b(paramContext)) {
            continue;
          }
          if (f.U())
          {
            b.a(this, "onConnectedWifi()");
            a(d.a(f.A()));
            if ((f.O() != m.b) && (f.O() != m.e) && (!a))
            {
              a = true;
              a(false);
            }
          }
        }
        return;
        if (d.c(paramContext))
        {
          if (!f.U()) {
            continue;
          }
          b.a(this, "onConnectedMobile()");
          a("|||cs_3g|||");
          if (((f.O() != m.a) && ((f.O() != m.d) || (!d.f(paramContext)))) || (a)) {
            continue;
          }
          a = true;
          a(false);
          continue;
        }
        if (!f.U()) {
          continue;
        }
      }
      finally {}
      b.a(this, "onDisconnected()");
      d();
      a = false;
      c = -1L;
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.ConnectivityChangeReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */