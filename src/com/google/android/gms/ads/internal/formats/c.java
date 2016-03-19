package com.google.android.gms.ads.internal.formats;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.a.d;
import com.google.android.gms.internal.bm.a;
import com.google.android.gms.internal.fs;

@fs
public final class c
  extends bm.a
{
  private final Drawable a;
  private final Uri b;
  private final double c;
  
  public c(Drawable paramDrawable, Uri paramUri, double paramDouble)
  {
    a = paramDrawable;
    b = paramUri;
    c = paramDouble;
  }
  
  public final com.google.android.gms.a.c a()
  {
    return d.a(a);
  }
  
  public final Uri b()
  {
    return b;
  }
  
  public final double c()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */