package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

@fs
public final class cx
{
  private final Object a = new Object();
  private final Context b;
  private final String c;
  private final VersionInfoParcel d;
  private cx.b<aa> e;
  private cx.b<aa> f;
  private cx.e g;
  private int h = 1;
  
  public cx(Context paramContext, VersionInfoParcel paramVersionInfoParcel, String paramString)
  {
    c = paramString;
    b = paramContext.getApplicationContext();
    d = paramVersionInfoParcel;
    e = new cx.c();
    f = new cx.c();
  }
  
  public cx(Context paramContext, VersionInfoParcel paramVersionInfoParcel, String paramString, cx.b<aa> paramb1, cx.b<aa> paramb2)
  {
    this(paramContext, paramVersionInfoParcel, paramString);
    e = paramb1;
    f = paramb2;
  }
  
  protected final cx.e a()
  {
    cx.e locale = new cx.e(f);
    gw.a(new cx.1(this, locale));
    locale.a(new cx.2(this, locale), new cx.3(this, locale));
    return locale;
  }
  
  public final cx.d b()
  {
    synchronized (a)
    {
      cx.d locald1;
      if ((g == null) || (g.e() == -1))
      {
        h = 2;
        g = a();
        locald1 = g.a();
        return locald1;
      }
      if (h == 0)
      {
        locald1 = g.a();
        return locald1;
      }
    }
    if (h == 1)
    {
      h = 2;
      a();
      locald2 = g.a();
      return locald2;
    }
    if (h == 2)
    {
      locald2 = g.a();
      return locald2;
    }
    cx.d locald2 = g.a();
    return locald2;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */