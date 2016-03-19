package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.a.c;
import com.google.android.gms.a.d;
import com.google.android.gms.ads.internal.g;

@fs
public final class bh
  extends bj.a
{
  private final g a;
  private final String b;
  private final String c;
  
  public bh(g paramg, String paramString1, String paramString2)
  {
    a = paramg;
    b = paramString1;
    c = paramString2;
  }
  
  public final String a()
  {
    return b;
  }
  
  public final void a(c paramc)
  {
    if (paramc == null) {
      return;
    }
    a.b((View)d.a(paramc));
  }
  
  public final String b()
  {
    return c;
  }
  
  public final void c()
  {
    a.x();
  }
  
  public final void d()
  {
    a.q();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */