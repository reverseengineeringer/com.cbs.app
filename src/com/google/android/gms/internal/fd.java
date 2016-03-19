package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.concurrent.atomic.AtomicBoolean;

@fs
public abstract class fd
  implements fi<Void>, hu.a
{
  protected final fh.a a;
  protected final Context b;
  protected final hs c;
  protected final gk.a d;
  protected AdResponseParcel e;
  protected final Object f = new Object();
  private Runnable g;
  private AtomicBoolean h = new AtomicBoolean(true);
  
  protected fd(Context paramContext, gk.a parama, hs paramhs, fh.a parama1)
  {
    b = paramContext;
    d = parama;
    e = d.b;
    c = paramhs;
    a = parama1;
  }
  
  protected abstract void a();
  
  protected void a(int paramInt)
  {
    if (paramInt != -2) {
      e = new AdResponseParcel(paramInt, e.k);
    }
    fh.a locala = a;
    AdRequestInfoParcel localAdRequestInfoParcel = d.a;
    locala.b(new gk(c, c, e.d, paramInt, e.f, e.j, e.l, e.k, i, e.h, null, null, null, null, null, e.i, d.d, e.g, d.f, e.n, e.o, d.h, null));
  }
  
  public final void a(hs paramhs, boolean paramBoolean)
  {
    b.a(3);
    if (!h.getAndSet(false)) {
      return;
    }
    if (paramBoolean) {}
    for (int i = b();; i = -1)
    {
      a(i);
      gw.a.removeCallbacks(g);
      return;
    }
  }
  
  protected int b()
  {
    return -2;
  }
  
  public void c()
  {
    if (!h.getAndSet(false)) {
      return;
    }
    c.stopLoading();
    o.g();
    gx.a(c.a());
    a(-1);
    gw.a.removeCallbacks(g);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */