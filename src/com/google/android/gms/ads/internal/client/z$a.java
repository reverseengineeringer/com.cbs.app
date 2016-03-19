package com.google.android.gms.ads.internal.client;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.b.b;
import com.google.android.gms.ads.b.m;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;

public final class z$a
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

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.z.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */