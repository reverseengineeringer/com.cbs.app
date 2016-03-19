package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.ads.internal.o;

@fs
public final class cr
  extends gr
{
  final hs a;
  final ct b;
  private final String c;
  
  cr(hs paramhs, ct paramct, String paramString)
  {
    a = paramhs;
    b = paramct;
    c = paramString;
    o.r().a(this);
  }
  
  public final void a()
  {
    try
    {
      b.a(c);
      return;
    }
    finally
    {
      gw.a.post(new cr.1(this));
    }
  }
  
  public final void b()
  {
    b.a();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */