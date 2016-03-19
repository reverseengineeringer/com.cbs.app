package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.google.android.gms.common.internal.j;
import com.google.android.gms.common.internal.j.a;
import com.google.android.gms.common.internal.z;
import com.google.android.gms.internal.jb;
import com.google.android.gms.internal.jl;
import com.google.android.gms.internal.kx;
import com.google.android.gms.internal.kz;
import com.google.android.gms.internal.la;
import com.google.android.gms.internal.zzlp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class b$a
{
  private Account a;
  private final Set<Scope> b = new HashSet();
  private int c;
  private View d;
  private String e;
  private String f;
  private final Map<a<?>, j.a> g = new jl();
  private final Context h;
  private final Map<a<?>, a.a> i = new jl();
  private FragmentActivity j;
  private int k = -1;
  private b.c l;
  private Looper m;
  private com.google.android.gms.common.b n = com.google.android.gms.common.b.a();
  private a.b<? extends kz, la> o = kx.c;
  private final ArrayList<b.b> p = new ArrayList();
  private final ArrayList<b.c> q = new ArrayList();
  private la r;
  
  public b$a(Context paramContext)
  {
    h = paramContext;
    m = paramContext.getMainLooper();
    e = paramContext.getPackageName();
    f = paramContext.getClass().getName();
  }
  
  private void a(zzlp paramzzlp, b paramb)
  {
    paramzzlp.a(k, paramb, l);
  }
  
  public final a a(Scope paramScope)
  {
    z.a(paramScope, "Scope must not be null");
    b.add(paramScope);
    return this;
  }
  
  public final a a(a<? extends a.a.b> parama)
  {
    z.a(parama, "Api must not be null");
    i.put(parama, null);
    Set localSet = b;
    parama.a();
    localSet.addAll(Collections.emptyList());
    return this;
  }
  
  public final <O extends a.a.a> a a(a<O> parama, O paramO)
  {
    z.a(parama, "Api must not be null");
    z.a(paramO, "Null options are not permitted for this Api");
    i.put(parama, paramO);
    paramO = b;
    parama.a();
    paramO.addAll(Collections.emptyList());
    return this;
  }
  
  public final a a(b.b paramb)
  {
    z.a(paramb, "Listener must not be null");
    p.add(paramb);
    return this;
  }
  
  public final a a(b.c paramc)
  {
    z.a(paramc, "Listener must not be null");
    q.add(paramc);
    return this;
  }
  
  public final a a(String paramString)
  {
    if (paramString == null) {}
    for (paramString = null;; paramString = new Account(paramString, "com.google"))
    {
      a = paramString;
      return this;
    }
  }
  
  public final j a()
  {
    boolean bool;
    Account localAccount;
    Set localSet;
    Map localMap;
    int i1;
    View localView;
    String str1;
    String str2;
    if (i.containsKey(kx.g))
    {
      if (r == null)
      {
        bool = true;
        z.a(bool, "SignIn.API can't be used in conjunction with requestServerAuthCode.");
        r = ((la)i.get(kx.g));
      }
    }
    else
    {
      localAccount = a;
      localSet = b;
      localMap = g;
      i1 = c;
      localView = d;
      str1 = e;
      str2 = f;
      if (r == null) {
        break label129;
      }
    }
    label129:
    for (la localla = r;; localla = la.a)
    {
      return new j(localAccount, localSet, localMap, i1, localView, str1, str2, localla);
      bool = false;
      break;
    }
  }
  
  public final b b()
  {
    if (!i.isEmpty()) {}
    jb localjb;
    zzlp localzzlp;
    for (boolean bool = true;; bool = false)
    {
      z.b(bool, "must call addApi() to add at least one API");
      if (k < 0) {
        break label128;
      }
      localjb = new jb(h.getApplicationContext(), m, a(), n, o, i, p, q, k);
      localzzlp = zzlp.a(j);
      if (localzzlp != null) {
        break;
      }
      new Handler(h.getMainLooper()).post(new b.a.1(this, localjb));
      return localjb;
    }
    a(localzzlp, localjb);
    return localjb;
    label128:
    return new jb(h, m, a(), n, o, i, p, q, -1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */