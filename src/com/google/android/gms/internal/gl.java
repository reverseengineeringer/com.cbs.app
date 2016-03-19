package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

@fs
public final class gl
{
  private final gm a;
  private final LinkedList<a> b;
  private final Object c = new Object();
  private final String d;
  private final String e;
  private long f = -1L;
  private long g = -1L;
  private boolean h = false;
  private long i = -1L;
  private long j = 0L;
  private long k = -1L;
  private long l = -1L;
  
  private gl(gm paramgm, String paramString1, String paramString2)
  {
    a = paramgm;
    d = paramString1;
    e = paramString2;
    b = new LinkedList();
  }
  
  public gl(String paramString1, String paramString2)
  {
    this(o.h(), paramString1, paramString2);
  }
  
  public final void a()
  {
    synchronized (c)
    {
      if ((l != -1L) && (g == -1L))
      {
        g = SystemClock.elapsedRealtime();
        a.a(this);
      }
      a.c().c();
      return;
    }
  }
  
  public final void a(long paramLong)
  {
    synchronized (c)
    {
      l = paramLong;
      if (l != -1L) {
        a.a(this);
      }
      return;
    }
  }
  
  public final void a(AdRequestParcel paramAdRequestParcel)
  {
    synchronized (c)
    {
      k = SystemClock.elapsedRealtime();
      a.c().a(paramAdRequestParcel, k);
      return;
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    synchronized (c)
    {
      if (l != -1L)
      {
        i = SystemClock.elapsedRealtime();
        if (!paramBoolean)
        {
          g = i;
          a.a(this);
        }
      }
      return;
    }
  }
  
  public final void b()
  {
    synchronized (c)
    {
      if (l != -1L)
      {
        a locala = new a();
        locala.c();
        b.add(locala);
        j += 1L;
        a.c().b();
        a.a(this);
      }
      return;
    }
  }
  
  public final void b(long paramLong)
  {
    synchronized (c)
    {
      if (l != -1L)
      {
        f = paramLong;
        a.a(this);
      }
      return;
    }
  }
  
  public final void b(boolean paramBoolean)
  {
    synchronized (c)
    {
      if (l != -1L)
      {
        h = paramBoolean;
        a.a(this);
      }
      return;
    }
  }
  
  public final void c()
  {
    synchronized (c)
    {
      if ((l != -1L) && (!b.isEmpty()))
      {
        a locala = (a)b.getLast();
        if (locala.a() == -1L)
        {
          locala.b();
          a.a(this);
        }
      }
      return;
    }
  }
  
  public final Bundle d()
  {
    ArrayList localArrayList;
    synchronized (c)
    {
      Bundle localBundle1 = new Bundle();
      localBundle1.putString("seq_num", d);
      localBundle1.putString("slotid", e);
      localBundle1.putBoolean("ismediation", h);
      localBundle1.putLong("treq", k);
      localBundle1.putLong("tresponse", l);
      localBundle1.putLong("timp", g);
      localBundle1.putLong("tload", i);
      localBundle1.putLong("pcc", j);
      localBundle1.putLong("tfetch", f);
      localArrayList = new ArrayList();
      Iterator localIterator = b.iterator();
      if (localIterator.hasNext()) {
        localArrayList.add(((a)localIterator.next()).d());
      }
    }
    localBundle2.putParcelableArrayList("tclick", localArrayList);
    return localBundle2;
  }
  
  @fs
  private static final class a
  {
    private long a = -1L;
    private long b = -1L;
    
    public final long a()
    {
      return b;
    }
    
    public final void b()
    {
      b = SystemClock.elapsedRealtime();
    }
    
    public final void c()
    {
      a = SystemClock.elapsedRealtime();
    }
    
    public final Bundle d()
    {
      Bundle localBundle = new Bundle();
      localBundle.putLong("topen", a);
      localBundle.putLong("tclose", b);
      return localBundle;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */