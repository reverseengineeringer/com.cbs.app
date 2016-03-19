package com.google.android.gms.ads.internal;

import android.graphics.Bitmap;
import android.os.Handler;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gk;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.hs;

@fs
final class k$b
  extends gr
{
  private final Bitmap b;
  private final String c;
  
  public k$b(k paramk, Bitmap paramBitmap, String paramString)
  {
    b = paramBitmap;
    c = paramString;
  }
  
  public final void a()
  {
    boolean bool1;
    boolean bool2;
    boolean bool3;
    if (a.f.E)
    {
      o.e();
      bool1 = gw.a(a.f.c, b, c);
      bool2 = a.f.E;
      bool3 = a.A();
      if (!bool1) {
        break label222;
      }
    }
    label222:
    for (Object localObject = c;; localObject = null)
    {
      localObject = new InterstitialAdParameterParcel(bool2, bool3, (String)localObject, k.a(a), k.b(a));
      int j = a.f.j.b.p();
      int i = j;
      if (j == -1) {
        i = a.f.j.g;
      }
      localObject = new AdOverlayInfoParcel(a, a, a, a.f.j.b, i, a.f.e, a.f.j.v, (InterstitialAdParameterParcel)localObject);
      gw.a.post(new k.b.1(this, (AdOverlayInfoParcel)localObject));
      return;
      bool1 = false;
      break;
    }
  }
  
  public final void b() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.k.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */