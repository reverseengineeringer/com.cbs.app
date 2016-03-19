package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.common.e;

@fs
public final class aw
{
  private final Object a = new Object();
  private boolean b = false;
  private SharedPreferences c = null;
  
  public final <T> T a(at<T> paramat)
  {
    synchronized (a)
    {
      if (!b)
      {
        paramat = paramat.b();
        return paramat;
      }
      return (T)paramat.a(c);
    }
  }
  
  public final void a(Context paramContext)
  {
    synchronized (a)
    {
      if (b) {
        return;
      }
      paramContext = e.e(paramContext);
      if (paramContext == null) {
        return;
      }
    }
    o.l();
    c = paramContext.getSharedPreferences("google_ads_flags", 1);
    b = true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */