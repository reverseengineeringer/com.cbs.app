package com.google.android.gms.ads.internal.formats;

import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.bm;
import com.google.android.gms.internal.bu.a;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.jp;
import java.util.Arrays;
import java.util.List;

@fs
public final class f
  extends bu.a
  implements h.a
{
  private final a a;
  private final String b;
  private final jp<String, c> c;
  private final jp<String, String> d;
  private final Object e = new Object();
  private h f;
  
  public f(String paramString, jp<String, c> paramjp, jp<String, String> paramjp1, a parama)
  {
    b = paramString;
    c = paramjp;
    d = paramjp1;
    a = parama;
  }
  
  public final String a(String paramString)
  {
    return (String)d.get(paramString);
  }
  
  public final List<String> a()
  {
    int n = 0;
    String[] arrayOfString = new String[c.size() + d.size()];
    int j = 0;
    int i = 0;
    int k;
    int m;
    for (;;)
    {
      k = n;
      m = i;
      if (j >= c.size()) {
        break;
      }
      arrayOfString[i] = ((String)c.b(j));
      i += 1;
      j += 1;
    }
    while (k < d.size())
    {
      arrayOfString[m] = ((String)d.b(k));
      k += 1;
      m += 1;
    }
    return Arrays.asList(arrayOfString);
  }
  
  public final void a(h paramh)
  {
    synchronized (e)
    {
      f = paramh;
      return;
    }
  }
  
  public final bm b(String paramString)
  {
    return (bm)c.get(paramString);
  }
  
  public final void b()
  {
    synchronized (e)
    {
      if (f == null)
      {
        b.a("Attempt to perform recordImpression before ad initialized.");
        return;
      }
      f.a();
      return;
    }
  }
  
  public final void c(String paramString)
  {
    synchronized (e)
    {
      if (f == null)
      {
        b.a("Attempt to call performClick before ad initialized.");
        return;
      }
      f.a(paramString, null, null);
      return;
    }
  }
  
  public final String j()
  {
    return "3";
  }
  
  public final String k()
  {
    return b;
  }
  
  public final a l()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */