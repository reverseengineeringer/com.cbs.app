package com.adobe.b.c.b.a;

import android.os.Handler;
import android.os.HandlerThread;
import java.util.HashMap;
import java.util.Map;

final class c
{
  static double a = 0.25D;
  private String b;
  private com.adobe.b.a.c c;
  private a d;
  private Map<String, b> e;
  private a f;
  private boolean g;
  
  c(a parama, com.adobe.b.a.c paramc)
  {
    if (parama == null) {
      throw new Error("Reference to ClockService object cannot be NULL.");
    }
    d = parama;
    if (paramc == null) {
      throw new Error("Reference to logger cannot be NULL.");
    }
    b = c.class.getSimpleName();
    c = paramc;
    g = false;
    e = new HashMap();
    f = new a();
  }
  
  protected final void a(String paramString)
  {
    synchronized (e)
    {
      e.remove(paramString);
      return;
    }
  }
  
  protected final void a(String paramString, double paramDouble, int paramInt)
  {
    synchronized (e)
    {
      e.put(paramString, new b(paramString, paramDouble, paramInt));
      return;
    }
  }
  
  protected final void a(String paramString, boolean paramBoolean)
  {
    synchronized (e)
    {
      com.adobe.b.a.c localc = c;
      String str = b;
      new StringBuilder("#resumedTimer(name=").append(paramString).append(", reset=").append(paramBoolean).append(")");
      localc.a(str);
      paramString = (b)e.get(paramString);
      if (paramString != null)
      {
        paramString.a(true);
        if (paramBoolean) {
          paramString.f();
        }
      }
      return;
    }
  }
  
  protected final void b(String paramString, boolean paramBoolean)
  {
    synchronized (e)
    {
      com.adobe.b.a.c localc = c;
      String str = b;
      new StringBuilder("#pauseTimer(name=").append(paramString).append(", reset=").append(paramBoolean).append(")");
      localc.a(str);
      paramString = (b)e.get(paramString);
      if (paramString != null)
      {
        paramString.a(false);
        if (paramBoolean) {
          paramString.f();
        }
      }
      return;
    }
  }
  
  protected final boolean b(String paramString)
  {
    paramString = (b)e.get(paramString);
    if (paramString != null) {
      return !paramString.b();
    }
    return false;
  }
  
  private final class a
    extends HandlerThread
  {
    private Handler b;
    private boolean c = false;
    
    a()
    {
      super();
      start();
      if (getLooper() == null)
      {
        c.b(c.this).a(c.a(c.this), "Unable to obtain looper thread.");
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
            c.c(c.this);
            localHandler.postDelayed(this, (c.a * 1000.0D));
          }
        }
      });
    }
  }
  
  private final class b
  {
    private String b;
    private double c;
    private int d;
    
    b(String paramString, double paramDouble, int paramInt)
    {
      b = paramString;
      c = paramDouble;
      d = paramInt;
    }
    
    final String a()
    {
      return b;
    }
    
    final double b()
    {
      return c;
    }
    
    final int c()
    {
      return d;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.b.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */