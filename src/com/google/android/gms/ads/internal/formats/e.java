package com.google.android.gms.ads.internal.formats;

import android.os.Bundle;
import com.google.android.gms.a.d;
import com.google.android.gms.internal.bm;
import com.google.android.gms.internal.bs.a;
import com.google.android.gms.internal.fs;
import java.util.List;

@fs
public final class e
  extends bs.a
  implements h.a
{
  private final String a;
  private final List<c> b;
  private final String c;
  private final bm d;
  private final String e;
  private final String f;
  private final a g;
  private final Bundle h;
  private final Object i = new Object();
  private h j;
  
  public e(String paramString1, List paramList, String paramString2, bm parambm, String paramString3, String paramString4, a parama, Bundle paramBundle)
  {
    a = paramString1;
    b = paramList;
    c = paramString2;
    d = parambm;
    e = paramString3;
    f = paramString4;
    g = parama;
    h = paramBundle;
  }
  
  public final String a()
  {
    return a;
  }
  
  public final void a(h paramh)
  {
    synchronized (i)
    {
      j = paramh;
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
  
  public final String f()
  {
    return f;
  }
  
  public final com.google.android.gms.a.c g()
  {
    return d.a(j);
  }
  
  public final Bundle h()
  {
    return h;
  }
  
  public final String j()
  {
    return "1";
  }
  
  public final String k()
  {
    return "";
  }
  
  public final a l()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */