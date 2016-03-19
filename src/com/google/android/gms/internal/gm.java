package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.purchase.i;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.e;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import java.util.concurrent.Future;

@fs
public final class gm
  implements gu.b
{
  private final Object a = new Object();
  private final String b = gw.b();
  private final gn c = new gn(b);
  private w d;
  private BigInteger e = BigInteger.ONE;
  private final HashSet<gl> f = new HashSet();
  private final HashMap<String, gp> g = new HashMap();
  private boolean h = false;
  private boolean i = true;
  private int j = 0;
  private boolean k = false;
  private Context l;
  private VersionInfoParcel m;
  private ba n = null;
  private boolean o = true;
  private ai p = null;
  private aj q = null;
  private ah r = null;
  private final LinkedList<Thread> s = new LinkedList();
  private final fr t = null;
  private Boolean u = null;
  private String v;
  private boolean w = false;
  private boolean x = false;
  
  private boolean l()
  {
    synchronized (a)
    {
      boolean bool = o;
      return bool;
    }
  }
  
  public final Bundle a(Context paramContext, go paramgo, String paramString)
  {
    Bundle localBundle;
    synchronized (a)
    {
      localBundle = new Bundle();
      localBundle.putBundle("app", c.a(paramContext, paramString));
      paramContext = new Bundle();
      paramString = g.keySet().iterator();
      if (paramString.hasNext())
      {
        String str = (String)paramString.next();
        paramContext.putBundle(str, ((gp)g.get(str)).a());
      }
    }
    localBundle.putBundle("slots", paramContext);
    paramContext = new ArrayList();
    paramString = f.iterator();
    while (paramString.hasNext()) {
      paramContext.add(((gl)paramString.next()).d());
    }
    localBundle.putParcelableArrayList("ads", paramContext);
    paramgo.a(f);
    f.clear();
    return localBundle;
  }
  
  public final aj a(Context paramContext)
  {
    ??? = ax.J;
    if ((!((Boolean)o.n().a((at)???)).booleanValue()) || (!ka.c()) || (l())) {
      return null;
    }
    synchronized (a)
    {
      if (p == null)
      {
        if (!(paramContext instanceof Activity)) {
          return null;
        }
        p = new ai((Application)paramContext.getApplicationContext(), (Activity)paramContext);
      }
      if (r == null) {
        r = new ah();
      }
      if (q == null) {
        q = new aj(p, r, new fr(l, m, null, null));
      }
      q.a();
      paramContext = q;
      return paramContext;
    }
  }
  
  public final String a()
  {
    return b;
  }
  
  public final String a(int paramInt, String paramString)
  {
    if (m.e) {}
    for (Resources localResources = l.getResources(); localResources == null; localResources = e.d(l)) {
      return paramString;
    }
    return localResources.getString(paramInt);
  }
  
  public final Future a(Context paramContext, boolean paramBoolean)
  {
    synchronized (a)
    {
      if (paramBoolean != i)
      {
        i = paramBoolean;
        paramContext = new gu.1(paramContext, paramBoolean).e();
        return paramContext;
      }
      return null;
    }
  }
  
  public final void a(Context paramContext, VersionInfoParcel paramVersionInfoParcel)
  {
    for (;;)
    {
      synchronized (a)
      {
        if (!k)
        {
          l = paramContext.getApplicationContext();
          m = paramVersionInfoParcel;
          new gu.2(paramContext, this).e();
          new gu.4(paramContext, this).e();
          Object localObject2 = Thread.currentThread();
          fr.a(l, (Thread)localObject2, m);
          v = o.e().a(paramContext, b);
          if ((ka.j()) && (!NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted())) {
            x = true;
          }
          paramVersionInfoParcel = paramContext.getApplicationContext();
          localObject2 = m;
          paramContext = paramContext.getApplicationContext();
          VersionInfoParcel localVersionInfoParcel = m;
          at localat = ax.b;
          d = new w(paramVersionInfoParcel, (VersionInfoParcel)localObject2, new cx(paramContext, localVersionInfoParcel, (String)o.n().a(localat)));
          paramContext = new ay(l, m.b);
        }
        try
        {
          o.j();
          if (paramContext.a()) {
            continue;
          }
          b.a(2);
          paramContext = null;
          n = paramContext;
        }
        catch (IllegalArgumentException paramContext)
        {
          b.a(5);
          continue;
        }
        o.o().a(l);
        k = true;
        return;
        if (paramContext.c() == null) {
          throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        }
      }
      if (TextUtils.isEmpty(paramContext.d())) {
        throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
      }
      paramContext = new ba(paramContext.c(), paramContext.d(), paramContext.b(), paramContext.e());
    }
  }
  
  public final void a(Bundle paramBundle)
  {
    synchronized (a)
    {
      if (paramBundle.containsKey("use_https")) {}
      for (boolean bool = paramBundle.getBoolean("use_https");; bool = i)
      {
        i = bool;
        if (!paramBundle.containsKey("webview_cache_version")) {
          break;
        }
        i1 = paramBundle.getInt("webview_cache_version");
        j = i1;
        return;
      }
      int i1 = j;
    }
  }
  
  public final void a(gl paramgl)
  {
    synchronized (a)
    {
      f.add(paramgl);
      return;
    }
  }
  
  public final void a(Boolean paramBoolean)
  {
    synchronized (a)
    {
      u = paramBoolean;
      return;
    }
  }
  
  public final void a(String paramString, gp paramgp)
  {
    synchronized (a)
    {
      g.put(paramString, paramgp);
      return;
    }
  }
  
  public final void a(Throwable paramThrowable, boolean paramBoolean)
  {
    new fr(l, m, null, null).a(paramThrowable, paramBoolean);
  }
  
  public final void a(HashSet<gl> paramHashSet)
  {
    synchronized (a)
    {
      f.addAll(paramHashSet);
      return;
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    synchronized (a)
    {
      o = paramBoolean;
      return;
    }
  }
  
  public final String b()
  {
    synchronized (a)
    {
      String str = e.toString();
      e = e.add(BigInteger.ONE);
      return str;
    }
  }
  
  public final void b(boolean paramBoolean)
  {
    synchronized (a)
    {
      w = paramBoolean;
      return;
    }
  }
  
  public final gn c()
  {
    synchronized (a)
    {
      gn localgn = c;
      return localgn;
    }
  }
  
  public final ba d()
  {
    synchronized (a)
    {
      ba localba = n;
      return localba;
    }
  }
  
  public final boolean e()
  {
    synchronized (a)
    {
      boolean bool = h;
      h = true;
      return bool;
    }
  }
  
  public final boolean f()
  {
    for (;;)
    {
      synchronized (a)
      {
        if (!i)
        {
          if (!x) {
            break label38;
          }
          break label33;
          return bool;
        }
      }
      label33:
      boolean bool = true;
      continue;
      label38:
      bool = false;
    }
  }
  
  public final String g()
  {
    synchronized (a)
    {
      String str = v;
      return str;
    }
  }
  
  public final Boolean h()
  {
    synchronized (a)
    {
      Boolean localBoolean = u;
      return localBoolean;
    }
  }
  
  public final w i()
  {
    return d;
  }
  
  public final boolean j()
  {
    synchronized (a)
    {
      int i1 = j;
      at localat = ax.X;
      if (i1 < ((Integer)o.n().a(localat)).intValue())
      {
        localat = ax.X;
        j = ((Integer)o.n().a(localat)).intValue();
        new gu.3(l, j).e();
        return true;
      }
      return false;
    }
  }
  
  public final boolean k()
  {
    synchronized (a)
    {
      boolean bool = w;
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */