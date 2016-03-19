package com.d.a.b;

import android.content.res.Resources;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import com.d.a.b.a.d;
import com.d.a.b.c.b;

public final class c
{
  private final int a;
  private final int b;
  private final int c;
  private final Drawable d;
  private final Drawable e;
  private final Drawable f;
  private final boolean g;
  private final boolean h;
  private final boolean i;
  private final d j;
  private final BitmapFactory.Options k;
  private final int l;
  private final boolean m;
  private final Object n;
  private final com.d.a.b.g.a o;
  private final com.d.a.b.g.a p;
  private final com.d.a.b.c.a q;
  private final Handler r;
  private final boolean s;
  
  private c(a parama)
  {
    a = a.a(parama);
    b = a.b(parama);
    c = a.c(parama);
    d = a.d(parama);
    e = a.e(parama);
    f = a.f(parama);
    g = a.g(parama);
    h = a.h(parama);
    i = a.i(parama);
    j = a.j(parama);
    k = a.k(parama);
    l = a.l(parama);
    m = a.m(parama);
    n = a.n(parama);
    o = a.o(parama);
    p = a.p(parama);
    q = a.q(parama);
    r = a.r(parama);
    s = a.s(parama);
  }
  
  public final Drawable a(Resources paramResources)
  {
    if (a != 0) {
      return paramResources.getDrawable(a);
    }
    return d;
  }
  
  public final boolean a()
  {
    return (d != null) || (a != 0);
  }
  
  public final Drawable b(Resources paramResources)
  {
    if (b != 0) {
      return paramResources.getDrawable(b);
    }
    return e;
  }
  
  public final boolean b()
  {
    return (e != null) || (b != 0);
  }
  
  public final Drawable c(Resources paramResources)
  {
    if (c != 0) {
      return paramResources.getDrawable(c);
    }
    return f;
  }
  
  public final boolean c()
  {
    return (f != null) || (c != 0);
  }
  
  public final boolean d()
  {
    return o != null;
  }
  
  public final boolean e()
  {
    return p != null;
  }
  
  public final boolean f()
  {
    return l > 0;
  }
  
  public final boolean g()
  {
    return g;
  }
  
  public final boolean h()
  {
    return h;
  }
  
  public final boolean i()
  {
    return i;
  }
  
  public final d j()
  {
    return j;
  }
  
  public final BitmapFactory.Options k()
  {
    return k;
  }
  
  public final int l()
  {
    return l;
  }
  
  public final boolean m()
  {
    return m;
  }
  
  public final Object n()
  {
    return n;
  }
  
  public final com.d.a.b.g.a o()
  {
    return o;
  }
  
  public final com.d.a.b.g.a p()
  {
    return p;
  }
  
  public final com.d.a.b.c.a q()
  {
    return q;
  }
  
  public final Handler r()
  {
    return r;
  }
  
  final boolean s()
  {
    return s;
  }
  
  public static final class a
  {
    private int a = 0;
    private int b = 0;
    private int c = 0;
    private Drawable d = null;
    private Drawable e = null;
    private Drawable f = null;
    private boolean g = false;
    private boolean h = false;
    private boolean i = false;
    private d j = d.c;
    private BitmapFactory.Options k = new BitmapFactory.Options();
    private int l = 0;
    private boolean m = false;
    private Object n = null;
    private com.d.a.b.g.a o = null;
    private com.d.a.b.g.a p = null;
    private com.d.a.b.c.a q = new b();
    private Handler r = null;
    private boolean s = false;
    
    public a()
    {
      k.inPurgeable = true;
      k.inInputShareable = true;
    }
    
    @Deprecated
    public final a a()
    {
      a = 2130837990;
      return this;
    }
    
    public final a a(int paramInt)
    {
      a = paramInt;
      return this;
    }
    
    public final a a(Bitmap.Config paramConfig)
    {
      if (paramConfig == null) {
        throw new IllegalArgumentException("bitmapConfig can't be null");
      }
      k.inPreferredConfig = paramConfig;
      return this;
    }
    
    public final a a(BitmapFactory.Options paramOptions)
    {
      k = paramOptions;
      return this;
    }
    
    public final a a(d paramd)
    {
      j = paramd;
      return this;
    }
    
    public final a a(c paramc)
    {
      a = c.a(paramc);
      b = c.b(paramc);
      c = c.c(paramc);
      d = c.d(paramc);
      e = c.e(paramc);
      f = c.f(paramc);
      g = c.g(paramc);
      h = c.h(paramc);
      i = c.i(paramc);
      j = c.j(paramc);
      k = c.k(paramc);
      l = c.l(paramc);
      m = c.m(paramc);
      n = c.n(paramc);
      o = c.o(paramc);
      p = c.p(paramc);
      q = c.q(paramc);
      r = c.r(paramc);
      s = c.s(paramc);
      return this;
    }
    
    public final a a(boolean paramBoolean)
    {
      h = paramBoolean;
      return this;
    }
    
    @Deprecated
    public final a b()
    {
      i = true;
      return this;
    }
    
    public final a b(int paramInt)
    {
      b = paramInt;
      return this;
    }
    
    public final a b(boolean paramBoolean)
    {
      i = true;
      return this;
    }
    
    public final a c()
    {
      r = null;
      return this;
    }
    
    public final a c(int paramInt)
    {
      c = paramInt;
      return this;
    }
    
    public final c d()
    {
      return new c(this, (byte)0);
    }
  }
}

/* Location:
 * Qualified Name:     com.d.a.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */