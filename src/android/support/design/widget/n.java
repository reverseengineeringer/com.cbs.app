package android.support.design.widget;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

final class n
{
  private static n a;
  private final Object b = new Object();
  private final Handler c = new Handler(Looper.getMainLooper(), new Handler.Callback()
  {
    public final boolean handleMessage(Message paramAnonymousMessage)
    {
      switch (what)
      {
      default: 
        return false;
      }
      n.a(n.this, (n.b)obj);
      return true;
    }
  });
  private b d;
  private b e;
  
  static n a()
  {
    if (a == null) {
      a = new n();
    }
    return a;
  }
  
  private void a(b paramb)
  {
    if (b.b(paramb) == -2) {
      return;
    }
    int i = 2750;
    if (b.b(paramb) > 0) {
      i = b.b(paramb);
    }
    for (;;)
    {
      c.removeCallbacksAndMessages(paramb);
      c.sendMessageDelayed(Message.obtain(c, 0, paramb), i);
      return;
      if (b.b(paramb) == -1) {
        i = 1500;
      }
    }
  }
  
  private static boolean a(b paramb, int paramInt)
  {
    paramb = (a)b.a(paramb).get();
    if (paramb != null)
    {
      paramb.a(paramInt);
      return true;
    }
    return false;
  }
  
  private void b()
  {
    if (e != null)
    {
      d = e;
      e = null;
      a locala = (a)b.a(d).get();
      if (locala != null) {
        locala.a();
      }
    }
    else
    {
      return;
    }
    d = null;
  }
  
  private boolean f(a parama)
  {
    return (d != null) && (d.a(parama));
  }
  
  private boolean g(a parama)
  {
    return (e != null) && (e.a(parama));
  }
  
  public final void a(int paramInt, a parama)
  {
    for (;;)
    {
      synchronized (b)
      {
        if (f(parama))
        {
          b.a(d, paramInt);
          c.removeCallbacksAndMessages(d);
          a(d);
          return;
        }
        if (g(parama))
        {
          b.a(e, paramInt);
          if ((d == null) || (!a(d, 4))) {
            break;
          }
          return;
        }
      }
      e = new b(paramInt, parama);
    }
    d = null;
    b();
  }
  
  public final void a(a parama)
  {
    synchronized (b)
    {
      if (f(parama))
      {
        d = null;
        if (e != null) {
          b();
        }
      }
      return;
    }
  }
  
  public final void a(a parama, int paramInt)
  {
    synchronized (b)
    {
      if (f(parama)) {
        a(d, 0);
      }
      while (!g(parama)) {
        return;
      }
      a(e, 0);
    }
  }
  
  public final void b(a parama)
  {
    synchronized (b)
    {
      if (f(parama)) {
        a(d);
      }
      return;
    }
  }
  
  public final void c(a parama)
  {
    synchronized (b)
    {
      if (f(parama)) {
        c.removeCallbacksAndMessages(d);
      }
      return;
    }
  }
  
  public final void d(a parama)
  {
    synchronized (b)
    {
      if (f(parama)) {
        a(d);
      }
      return;
    }
  }
  
  public final boolean e(a parama)
  {
    for (;;)
    {
      synchronized (b)
      {
        if (!f(parama))
        {
          if (!g(parama)) {
            break label40;
          }
          break label35;
          return bool;
        }
      }
      label35:
      boolean bool = true;
      continue;
      label40:
      bool = false;
    }
  }
  
  static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(int paramInt);
  }
  
  private static final class b
  {
    private final WeakReference<n.a> a;
    private int b;
    
    b(int paramInt, n.a parama)
    {
      a = new WeakReference(parama);
      b = paramInt;
    }
    
    final boolean a(n.a parama)
    {
      return (parama != null) && (a.get() == parama);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */