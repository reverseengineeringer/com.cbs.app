package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.a.d;
import com.google.android.gms.ads.b.j;
import com.google.android.gms.ads.formats.a.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@fs
public final class du
  extends dp.a
{
  private final j a;
  
  public du(j paramj)
  {
    a = paramj;
  }
  
  public final String a()
  {
    return a.f();
  }
  
  public final void a(com.google.android.gms.a.c paramc)
  {
    d.a(paramc);
  }
  
  public final List b()
  {
    Object localObject = a.g();
    if (localObject != null)
    {
      ArrayList localArrayList = new ArrayList();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        a.a locala = (a.a)((Iterator)localObject).next();
        localArrayList.add(new com.google.android.gms.ads.internal.formats.c(locala.a(), locala.b(), locala.c()));
      }
      return localArrayList;
    }
    return null;
  }
  
  public final void b(com.google.android.gms.a.c paramc)
  {
    a.a((View)d.a(paramc));
  }
  
  public final String c()
  {
    return a.h();
  }
  
  public final bm d()
  {
    a.a locala = a.i();
    if (locala != null) {
      return new com.google.android.gms.ads.internal.formats.c(locala.a(), locala.b(), locala.c());
    }
    return null;
  }
  
  public final String e()
  {
    return a.j();
  }
  
  public final double f()
  {
    return a.k();
  }
  
  public final String g()
  {
    return a.l();
  }
  
  public final String h()
  {
    return a.m();
  }
  
  public final void i() {}
  
  public final boolean j()
  {
    return a.c();
  }
  
  public final boolean k()
  {
    return a.d();
  }
  
  public final Bundle l()
  {
    return a.e();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */