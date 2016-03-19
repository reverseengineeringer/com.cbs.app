package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.b;

@fs
public class fj
  extends fd
  implements hu.a
{
  fj(Context paramContext, gk.a parama, hs paramhs, fh.a parama1)
  {
    super(paramContext, parama, paramhs, parama1);
  }
  
  protected final void a()
  {
    if (e.e != -2) {
      return;
    }
    c.k().a(this);
    e();
    b.a(2);
    hs localhs = c;
    o.e();
    localhs.loadDataWithBaseURL(gw.a(e.b), e.c, "text/html", "UTF-8", null);
  }
  
  protected void e() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */