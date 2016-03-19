package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.b.b;
import com.google.android.gms.ads.b.m;
import com.google.android.gms.internal.fs;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@fs
public final class z
{
  public static final String a = com.google.android.gms.ads.internal.util.client.a.a("emulator");
  private final Date b;
  private final String c;
  private final int d;
  private final Set<String> e;
  private final Location f;
  private final boolean g;
  private final Bundle h;
  private final Map<Class<? extends m>, m> i;
  private final String j;
  private final String k;
  private final com.google.android.gms.ads.search.a l;
  private final int m;
  private final Set<String> n;
  private final Bundle o;
  private final Set<String> p;
  
  static
  {
    n.a();
  }
  
  public z(a parama)
  {
    this(parama, (byte)0);
  }
  
  private z(a parama, byte paramByte)
  {
    b = a.a(parama);
    c = a.b(parama);
    d = a.c(parama);
    e = Collections.unmodifiableSet(a.d(parama));
    f = a.e(parama);
    g = a.f(parama);
    h = a.g(parama);
    i = Collections.unmodifiableMap(a.h(parama));
    j = a.i(parama);
    k = a.j(parama);
    l = null;
    m = a.k(parama);
    n = Collections.unmodifiableSet(a.l(parama));
    o = a.m(parama);
    p = Collections.unmodifiableSet(a.n(parama));
  }
  
  public final Bundle a(Class<? extends b> paramClass)
  {
    return h.getBundle(paramClass.getName());
  }
  
  public final Date a()
  {
    return b;
  }
  
  public final boolean a(Context paramContext)
  {
    Set localSet = n;
    n.a();
    return localSet.contains(com.google.android.gms.ads.internal.util.client.a.a(paramContext));
  }
  
  public final String b()
  {
    return c;
  }
  
  public final int c()
  {
    return d;
  }
  
  public final Set<String> d()
  {
    return e;
  }
  
  public final Location e()
  {
    return f;
  }
  
  public final boolean f()
  {
    return g;
  }
  
  public final String g()
  {
    return j;
  }
  
  public final String h()
  {
    return k;
  }
  
  public final com.google.android.gms.ads.search.a i()
  {
    return l;
  }
  
  public final Map<Class<? extends m>, m> j()
  {
    return i;
  }
  
  public final Bundle k()
  {
    return h;
  }
  
  public final int l()
  {
    return m;
  }
  
  public final Bundle m()
  {
    return o;
  }
  
  public final Set<String> n()
  {
    return p;
  }
  
  public static final class a
  {
    private final HashSet<String> a = new HashSet();
    private final Bundle b = new Bundle();
    private final HashMap<Class<? extends m>, m> c = new HashMap();
    private final HashSet<String> d = new HashSet();
    private final Bundle e = new Bundle();
    private final HashSet<String> f = new HashSet();
    private Date g;
    private String h;
    private int i = -1;
    private Location j;
    private boolean k = false;
    private String l;
    private String m;
    private int n = -1;
    
    public final void a(int paramInt)
    {
      i = paramInt;
    }
    
    public final void a(Location paramLocation)
    {
      j = paramLocation;
    }
    
    @Deprecated
    public final void a(m paramm)
    {
      if ((paramm instanceof com.google.android.gms.ads.b.a.a))
      {
        a(com.google.ads.a.a.a.class, ((com.google.android.gms.ads.b.a.a)paramm).a());
        return;
      }
      c.put(paramm.getClass(), paramm);
    }
    
    public final void a(Class<? extends b> paramClass, Bundle paramBundle)
    {
      b.putBundle(paramClass.getName(), paramBundle);
    }
    
    public final void a(String paramString)
    {
      a.add(paramString);
    }
    
    public final void a(Date paramDate)
    {
      g = paramDate;
    }
    
    public final void a(boolean paramBoolean)
    {
      if (paramBoolean) {}
      for (int i1 = 1;; i1 = 0)
      {
        n = i1;
        return;
      }
    }
    
    public final void b(String paramString)
    {
      d.add(paramString);
    }
    
    public final void c(String paramString)
    {
      d.remove(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */