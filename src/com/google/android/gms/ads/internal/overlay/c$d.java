package com.google.android.gms.ads.internal.overlay;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import com.google.android.gms.ads.internal.InterstitialAdParameterParcel;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.gx;

@fs
final class c$d
  extends gr
{
  private c$d(c paramc) {}
  
  public final void a()
  {
    o.e();
    Object localObject = gw.b(c.a(a), a.b.q.d);
    if (localObject != null)
    {
      localObject = o.g().a(c.a(a), (Bitmap)localObject, a.b.q.e, a.b.q.f);
      gw.a.post(new c.d.1(this, (Drawable)localObject));
    }
  }
  
  public final void b() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.c.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */