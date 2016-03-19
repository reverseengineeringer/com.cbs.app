package com.d.a.b;

import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import com.d.a.b.a.d;
import com.d.a.b.c.b;

public final class c$a
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
  
  public c$a()
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

/* Location:
 * Qualified Name:     com.d.a.b.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */