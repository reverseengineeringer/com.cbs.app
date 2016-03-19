package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.n;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Map;

@fs
public final class eg
  extends eh
  implements ci
{
  DisplayMetrics a;
  int b = -1;
  int c = -1;
  int d = -1;
  int e = -1;
  int f = -1;
  int g = -1;
  private final hs h;
  private final Context i;
  private final WindowManager j;
  private final ap k;
  private float l;
  private int m;
  
  public eg(hs paramhs, Context paramContext, ap paramap)
  {
    super(paramhs);
    h = paramhs;
    i = paramContext;
    k = paramap;
    j = ((WindowManager)paramContext.getSystemService("window"));
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    if ((i instanceof Activity)) {}
    for (int n = o.e().c((Activity)i)[0];; n = 0)
    {
      b(paramInt1, paramInt2 - n, f, g);
      h.k().a(paramInt1, paramInt2);
      return;
    }
  }
  
  public final void a(hs paramhs, Map<String, String> paramMap)
  {
    a = new DisplayMetrics();
    paramhs = j.getDefaultDisplay();
    paramhs.getMetrics(a);
    l = a.density;
    m = paramhs.getRotation();
    n.a();
    b = a.b(a, a.widthPixels);
    n.a();
    c = a.b(a, a.heightPixels);
    paramhs = h.e();
    if ((paramhs == null) || (paramhs.getWindow() == null))
    {
      d = b;
      e = c;
      if (!h.j().e) {
        break label388;
      }
      f = b;
    }
    for (g = c;; g = a.b(i, h.getMeasuredHeight()))
    {
      a(b, c, d, e, l, m);
      paramhs = new ef(new ef.a().b(k.a()).a(k.b()).c(k.d()).d(k.c()).e(true), (byte)0);
      h.a("onDeviceFeaturesReceived", paramhs.a());
      paramhs = new int[2];
      h.getLocationOnScreen(paramhs);
      n.a();
      int n = a.b(i, paramhs[0]);
      n.a();
      a(n, a.b(i, paramhs[1]));
      if (b.a(2)) {
        b.a(4);
      }
      b(h.n().b);
      return;
      o.e();
      paramhs = gw.a(paramhs);
      n.a();
      d = a.b(a, paramhs[0]);
      n.a();
      e = a.b(a, paramhs[1]);
      break;
      label388:
      h.measure(0, 0);
      n.a();
      f = a.b(i, h.getMeasuredWidth());
      n.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.eg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */