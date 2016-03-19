package com.google.android.gms.internal;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;

@fs
public final class w
  implements z
{
  private final Object a = new Object();
  private final WeakHashMap<gk, x> b = new WeakHashMap();
  private final ArrayList<x> c = new ArrayList();
  private final Context d;
  private final VersionInfoParcel e;
  private final cx f;
  
  public w(Context paramContext, VersionInfoParcel paramVersionInfoParcel, cx paramcx)
  {
    d = paramContext.getApplicationContext();
    e = paramVersionInfoParcel;
    f = paramcx;
  }
  
  private boolean e(gk paramgk)
  {
    for (;;)
    {
      synchronized (a)
      {
        paramgk = (x)b.get(paramgk);
        if ((paramgk != null) && (paramgk.e()))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public final x a(AdSizeParcel paramAdSizeParcel, gk paramgk)
  {
    return a(paramAdSizeParcel, paramgk, b.b());
  }
  
  public final x a(AdSizeParcel paramAdSizeParcel, gk paramgk, View paramView)
  {
    synchronized (a)
    {
      if (e(paramgk))
      {
        paramAdSizeParcel = (x)b.get(paramgk);
        return paramAdSizeParcel;
      }
      paramAdSizeParcel = new x(paramAdSizeParcel, paramgk, e, paramView, f);
      paramAdSizeParcel.a(this);
      b.put(paramgk, paramAdSizeParcel);
      c.add(paramAdSizeParcel);
      return paramAdSizeParcel;
    }
  }
  
  public final void a(gk paramgk)
  {
    synchronized (a)
    {
      paramgk = (x)b.get(paramgk);
      if (paramgk != null) {
        paramgk.c();
      }
      return;
    }
  }
  
  public final void a(x paramx)
  {
    synchronized (a)
    {
      if (!paramx.e())
      {
        c.remove(paramx);
        Iterator localIterator = b.entrySet().iterator();
        while (localIterator.hasNext()) {
          if (((Map.Entry)localIterator.next()).getValue() == paramx) {
            localIterator.remove();
          }
        }
      }
    }
  }
  
  public final void b(gk paramgk)
  {
    synchronized (a)
    {
      paramgk = (x)b.get(paramgk);
      if (paramgk != null) {
        paramgk.f();
      }
      return;
    }
  }
  
  public final void c(gk paramgk)
  {
    synchronized (a)
    {
      paramgk = (x)b.get(paramgk);
      if (paramgk != null) {
        paramgk.g();
      }
      return;
    }
  }
  
  public final void d(gk paramgk)
  {
    synchronized (a)
    {
      paramgk = (x)b.get(paramgk);
      if (paramgk != null) {
        paramgk.h();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */