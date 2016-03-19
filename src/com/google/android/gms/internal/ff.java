package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.b;

@fs
public final class ff
  extends fd
{
  private fe g;
  
  ff(Context paramContext, gk.a parama, hs paramhs, fh.a parama1)
  {
    super(paramContext, parama, paramhs, parama1);
  }
  
  protected final void a()
  {
    Object localObject = c.j();
    int i;
    if (e)
    {
      localObject = b.getResources().getDisplayMetrics();
      i = widthPixels;
    }
    for (int j = heightPixels;; j = d)
    {
      g = new fe(this, c, i, j, (byte)0);
      c.k().a(this);
      g.a(e);
      return;
      i = g;
    }
  }
  
  protected final int b()
  {
    if (g.c())
    {
      b.a(3);
      return 3;
    }
    if (!g.d()) {
      return 2;
    }
    return -2;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */