package com.google.ads.a;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.b.a;
import com.google.android.gms.ads.b.f;
import com.google.android.gms.ads.b.g;
import com.google.android.gms.ads.b.h;
import com.google.android.gms.ads.b.l;
import com.google.android.gms.ads.c.a;
import com.google.android.gms.ads.internal.client.n;
import com.google.android.gms.internal.fs;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;

@fs
public abstract class a
  implements com.google.android.gms.ads.b.c, com.google.android.gms.ads.b.e, g
{
  protected AdView a;
  protected com.google.android.gms.ads.e b;
  private com.google.android.gms.ads.b c;
  
  private com.google.android.gms.ads.c a(Context paramContext, com.google.android.gms.ads.b.a parama, Bundle paramBundle1, Bundle paramBundle2)
  {
    c.a locala = new c.a();
    Object localObject = parama.a();
    if (localObject != null) {
      locala.a((Date)localObject);
    }
    int i = parama.b();
    if (i != 0) {
      locala.a(i);
    }
    localObject = parama.c();
    if (localObject != null)
    {
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        locala.a((String)((Iterator)localObject).next());
      }
    }
    localObject = parama.d();
    if (localObject != null) {
      locala.a((Location)localObject);
    }
    if (parama.f())
    {
      n.a();
      locala.b(com.google.android.gms.ads.internal.util.client.a.a(paramContext));
    }
    if (parama.e() != -1) {
      if (parama.e() != 1) {
        break label198;
      }
    }
    label198:
    for (boolean bool = true;; bool = false)
    {
      locala.a(bool);
      locala.a(com.google.ads.a.a.a.class, a(paramBundle1, paramBundle2));
      return locala.a();
    }
  }
  
  protected abstract Bundle a(Bundle paramBundle1, Bundle paramBundle2);
  
  public String a(Bundle paramBundle)
  {
    return paramBundle.getString("pubid");
  }
  
  public final void a()
  {
    if (a != null)
    {
      a.a();
      a = null;
    }
    if (b != null) {
      b = null;
    }
    if (c != null) {
      c = null;
    }
  }
  
  public final void a(Context paramContext, com.google.android.gms.ads.b.d paramd, Bundle paramBundle1, com.google.android.gms.ads.d paramd1, com.google.android.gms.ads.b.a parama, Bundle paramBundle2)
  {
    a = new AdView(paramContext);
    a.setAdSize(new com.google.android.gms.ads.d(paramd1.b(), paramd1.a()));
    a.setAdUnitId(a(paramBundle1));
    a.setAdListener(new a.c(this, paramd));
    a.a(a(paramContext, parama, paramBundle2, paramBundle1));
  }
  
  public final void a(Context paramContext, f paramf, Bundle paramBundle1, com.google.android.gms.ads.b.a parama, Bundle paramBundle2)
  {
    b = new com.google.android.gms.ads.e(paramContext);
    b.a(a(paramBundle1));
    b.a(new a.d(this, paramf));
    b.a(a(paramContext, parama, paramBundle2, paramBundle1));
  }
  
  public final void a(Context paramContext, h paramh, Bundle paramBundle1, l paraml, Bundle paramBundle2)
  {
    paramh = new a.e(this, paramh);
    b.a locala = new b.a(paramContext, paramBundle1.getString("pubid")).a(paramh);
    com.google.android.gms.ads.formats.b localb = paraml.g();
    if (localb != null) {
      locala.a(localb);
    }
    if (paraml.h()) {
      locala.a(paramh);
    }
    if (paraml.i()) {
      locala.a(paramh);
    }
    c = locala.a();
    c.a(a(paramContext, paraml, paramBundle2, paramBundle1));
  }
  
  public final void b()
  {
    if (a != null) {
      a.b();
    }
  }
  
  public final void c()
  {
    if (a != null) {
      a.c();
    }
  }
  
  public final View d()
  {
    return a;
  }
  
  public final void e()
  {
    b.a();
  }
}

/* Location:
 * Qualified Name:     com.google.ads.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */