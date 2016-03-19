package com.d.a.b;

import android.content.Context;
import com.d.a.b.a.g;
import com.d.a.c.d;
import java.util.concurrent.Executor;

public final class e$a
{
  public static final g a = g.a;
  private Context b;
  private int c = 0;
  private int d = 0;
  private int e = 0;
  private int f = 0;
  private com.d.a.b.g.a g = null;
  private Executor h = null;
  private Executor i = null;
  private boolean j = false;
  private boolean k = false;
  private int l = 3;
  private int m = 4;
  private boolean n = false;
  private g o = a;
  private int p = 0;
  private long q = 0L;
  private int r = 0;
  private com.d.a.a.b.a s = null;
  private com.d.a.a.a.b t = null;
  private com.d.a.a.a.b.a u = null;
  private com.d.a.b.d.b v = null;
  private com.d.a.b.b.b w;
  private c x = null;
  private boolean y = false;
  
  public e$a(Context paramContext)
  {
    b = paramContext.getApplicationContext();
  }
  
  public final a a()
  {
    if ((h != null) || (i != null)) {
      com.d.a.c.c.c("threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls.", new Object[0]);
    }
    l = 5;
    return this;
  }
  
  public final a a(com.d.a.a.a.b paramb)
  {
    if ((q > 0L) || (r > 0)) {
      com.d.a.c.c.c("diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other", new Object[0]);
    }
    if (u != null) {
      com.d.a.c.c.c("diskCache() and diskCacheFileNameGenerator() calls overlap each other", new Object[0]);
    }
    t = paramb;
    return this;
  }
  
  public final a b()
  {
    if ((h != null) || (i != null)) {
      com.d.a.c.c.c("threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls.", new Object[0]);
    }
    m = 5;
    return this;
  }
  
  public final a c()
  {
    if (s != null) {
      com.d.a.c.c.c("memoryCache() and memoryCacheSize() calls overlap each other", new Object[0]);
    }
    p = ((int)((float)Runtime.getRuntime().maxMemory() * 0.2F));
    return this;
  }
  
  public final e d()
  {
    if (h == null)
    {
      h = a.a(l, m, o);
      if (i != null) {
        break label250;
      }
      i = a.a(l, m, o);
    }
    for (;;)
    {
      if (t == null)
      {
        if (u == null) {
          u = new com.d.a.a.a.b.b();
        }
        t = a.a(b, u, q, r);
      }
      if (s == null)
      {
        int i2 = p;
        int i1 = i2;
        if (i2 == 0) {
          i1 = (int)(Runtime.getRuntime().maxMemory() / 8L);
        }
        s = new com.d.a.a.b.a.b(i1);
      }
      if (n) {
        s = new com.d.a.a.b.a.a(s, d.a());
      }
      if (v == null) {
        v = new com.d.a.b.d.a(b);
      }
      if (w == null) {
        w = new com.d.a.b.b.a(y);
      }
      if (x == null) {
        x = new c.a().d();
      }
      return new e(this, (byte)0);
      j = true;
      break;
      label250:
      k = true;
    }
  }
}

/* Location:
 * Qualified Name:     com.d.a.b.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */