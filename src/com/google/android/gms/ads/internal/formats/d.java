package com.google.android.gms.ads.internal.formats;

import android.os.Bundle;
import com.google.android.gms.internal.bm;
import com.google.android.gms.internal.bq.a;
import com.google.android.gms.internal.fs;
import java.util.List;

@fs
public final class d
  extends bq.a
  implements h.a
{
  private final String a;
  private final List<c> b;
  private final String c;
  private final bm d;
  private final String e;
  private final double f;
  private final String g;
  private final String h;
  private final a i;
  private final Bundle j;
  private final Object k = new Object();
  private h l;
  
  public d(String paramString1, List paramList, String paramString2, bm parambm, String paramString3, double paramDouble, String paramString4, String paramString5, a parama, Bundle paramBundle)
  {
    a = paramString1;
    b = paramList;
    c = paramString2;
    d = parambm;
    e = paramString3;
    f = paramDouble;
    g = paramString4;
    h = paramString5;
    i = parama;
    j = paramBundle;
  }
  
  public final String a()
  {
    return a;
  }
  
  public final void a(h paramh)
  {
    synchronized (k)
    {
      l = paramh;
      return;
    }
  }
  
  public final List b()
  {
    return b;
  }
  
  public final String c()
  {
    return c;
  }
  
  public final bm d()
  {
    return d;
  }
  
  public final String e()
  {
    return e;
  }
  
  public final double f()
  {
    return f;
  }
  
  public final String g()
  {
    return g;
  }
  
  public final String h()
  {
    return h;
  }
  
  public final com.google.android.gms.a.c i()
  {
    return com.google.android.gms.a.d.a(l);
  }
  
  public final String j()
  {
    return "2";
  }
  
  public final String k()
  {
    return "";
  }
  
  public final a l()
  {
    return i;
  }
  
  public final Bundle m()
  {
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */