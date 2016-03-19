package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.a.d;
import com.google.android.gms.ads.formats.a.a;
import com.google.android.gms.ads.internal.util.client.b;

@fs
public final class bn
  extends a.a
{
  private final bm a;
  private final Drawable b;
  private final Uri c;
  private final double d;
  
  public bn(bm parambm)
  {
    a = parambm;
    try
    {
      parambm = a.a();
      if (parambm == null) {
        break label83;
      }
      parambm = (Drawable)d.a(parambm);
    }
    catch (RemoteException parambm)
    {
      try
      {
        parambm = a.b();
        c = parambm;
        double d1 = 1.0D;
        try
        {
          double d2 = a.c();
          d1 = d2;
        }
        catch (RemoteException parambm)
        {
          for (;;)
          {
            b.a("Failed to get scale.", parambm);
          }
        }
        d = d1;
        return;
        parambm = parambm;
        b.a("Failed to get drawable.", parambm);
        parambm = null;
      }
      catch (RemoteException parambm)
      {
        for (;;)
        {
          b.a("Failed to get uri.", parambm);
          parambm = (bm)localObject;
        }
      }
    }
    b = parambm;
  }
  
  public final Drawable a()
  {
    return b;
  }
  
  public final Uri b()
  {
    return c;
  }
  
  public final double c()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */