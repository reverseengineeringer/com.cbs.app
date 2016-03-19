package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.d;
import com.google.android.gms.ads.f;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fs;

@fs
public class AdSizeParcel
  implements SafeParcelable
{
  public static final l CREATOR = new l();
  public final int a;
  public final String b;
  public final int c;
  public final int d;
  public final boolean e;
  public final int f;
  public final int g;
  public final AdSizeParcel[] h;
  public final boolean i;
  public final boolean j;
  
  public AdSizeParcel()
  {
    this(4, "interstitial_mb", 0, 0, true, 0, 0, null, false, false);
  }
  
  AdSizeParcel(int paramInt1, String paramString, int paramInt2, int paramInt3, boolean paramBoolean1, int paramInt4, int paramInt5, AdSizeParcel[] paramArrayOfAdSizeParcel, boolean paramBoolean2, boolean paramBoolean3)
  {
    a = paramInt1;
    b = paramString;
    c = paramInt2;
    d = paramInt3;
    e = paramBoolean1;
    f = paramInt4;
    g = paramInt5;
    h = paramArrayOfAdSizeParcel;
    i = paramBoolean2;
    j = paramBoolean3;
  }
  
  public AdSizeParcel(Context paramContext, d paramd)
  {
    this(paramContext, new d[] { paramd });
  }
  
  public AdSizeParcel(Context paramContext, d[] paramArrayOfd)
  {
    d locald = paramArrayOfd[0];
    a = 4;
    e = false;
    j = locald.c();
    int m;
    label66:
    int n;
    label78:
    DisplayMetrics localDisplayMetrics;
    int k;
    label136:
    int i1;
    if (j)
    {
      f = d.a.b();
      c = d.a.a();
      if (f != -1) {
        break label320;
      }
      m = 1;
      if (c != -2) {
        break label326;
      }
      n = 1;
      localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
      if (m == 0) {
        break label344;
      }
      n.a();
      if (!a.c(paramContext)) {
        break label332;
      }
      n.a();
      if (!a.d(paramContext)) {
        break label332;
      }
      k = widthPixels;
      n.a();
      g = (k - a.e(paramContext));
      double d1 = g / density;
      i1 = (int)d1;
      k = i1;
      if (d1 - (int)d1 >= 0.01D) {
        k = i1 + 1;
      }
      label175:
      if (n == 0) {
        break label370;
      }
      i1 = c(localDisplayMetrics);
      label187:
      n.a();
      d = a.a(localDisplayMetrics, i1);
      if ((m == 0) && (n == 0)) {
        break label379;
      }
      b = (k + "x" + i1 + "_as");
    }
    for (;;)
    {
      if (paramArrayOfd.length <= 1) {
        break label407;
      }
      h = new AdSizeParcel[paramArrayOfd.length];
      k = 0;
      while (k < paramArrayOfd.length)
      {
        h[k] = new AdSizeParcel(paramContext, paramArrayOfd[k]);
        k += 1;
      }
      f = locald.b();
      c = locald.a();
      break;
      label320:
      m = 0;
      break label66;
      label326:
      n = 0;
      break label78;
      label332:
      g = widthPixels;
      break label136;
      label344:
      k = f;
      n.a();
      g = a.a(localDisplayMetrics, f);
      break label175;
      label370:
      i1 = c;
      break label187;
      label379:
      if (j) {
        b = "320x50_mb";
      } else {
        b = locald.toString();
      }
    }
    label407:
    h = null;
    i = false;
  }
  
  public AdSizeParcel(AdSizeParcel paramAdSizeParcel, AdSizeParcel[] paramArrayOfAdSizeParcel)
  {
    this(4, b, c, d, e, f, g, paramArrayOfAdSizeParcel, i, j);
  }
  
  public static int a(DisplayMetrics paramDisplayMetrics)
  {
    return widthPixels;
  }
  
  public static AdSizeParcel a()
  {
    return new AdSizeParcel(4, "320x50_mb", 0, 0, false, 0, 0, null, true, false);
  }
  
  public static int b(DisplayMetrics paramDisplayMetrics)
  {
    return (int)(c(paramDisplayMetrics) * density);
  }
  
  private static int c(DisplayMetrics paramDisplayMetrics)
  {
    int k = (int)(heightPixels / density);
    if (k <= 400) {
      return 32;
    }
    if (k <= 720) {
      return 50;
    }
    return 90;
  }
  
  public final d b()
  {
    return f.a(f, c, b);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    l.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.AdSizeParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */