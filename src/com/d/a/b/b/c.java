package com.d.a.b.b;

import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import com.d.a.b.a.d;
import com.d.a.b.a.e;
import com.d.a.b.a.h;
import com.d.a.b.d.b;

public final class c
{
  private final String a;
  private final String b;
  private final String c;
  private final e d;
  private final d e;
  private final h f;
  private final b g;
  private final Object h;
  private final boolean i;
  private final BitmapFactory.Options j;
  
  public c(String paramString1, String paramString2, String paramString3, e parame, h paramh, b paramb, com.d.a.b.c paramc)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = parame;
    e = paramc.j();
    f = paramh;
    g = paramb;
    h = paramc.n();
    i = paramc.m();
    j = new BitmapFactory.Options();
    paramString1 = paramc.k();
    paramString2 = j;
    inDensity = inDensity;
    inDither = inDither;
    inInputShareable = inInputShareable;
    inJustDecodeBounds = inJustDecodeBounds;
    inPreferredConfig = inPreferredConfig;
    inPurgeable = inPurgeable;
    inSampleSize = inSampleSize;
    inScaled = inScaled;
    inScreenDensity = inScreenDensity;
    inTargetDensity = inTargetDensity;
    inTempStorage = inTempStorage;
    if (Build.VERSION.SDK_INT >= 10) {
      inPreferQualityOverSpeed = inPreferQualityOverSpeed;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      inBitmap = inBitmap;
      inMutable = inMutable;
    }
  }
  
  public final String a()
  {
    return a;
  }
  
  public final String b()
  {
    return b;
  }
  
  public final e c()
  {
    return d;
  }
  
  public final d d()
  {
    return e;
  }
  
  public final h e()
  {
    return f;
  }
  
  public final b f()
  {
    return g;
  }
  
  public final Object g()
  {
    return h;
  }
  
  public final boolean h()
  {
    return i;
  }
  
  public final BitmapFactory.Options i()
  {
    return j;
  }
}

/* Location:
 * Qualified Name:     com.d.a.b.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */