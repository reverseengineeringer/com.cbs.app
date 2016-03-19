package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.a.a;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@fs
public final class br
  extends com.google.android.gms.ads.formats.c
{
  private final bq a;
  private final List<a.a> b = new ArrayList();
  private final bn c;
  
  public br(bq parambq)
  {
    a = parambq;
    for (;;)
    {
      try
      {
        Iterator localIterator = a.b().iterator();
        if (localIterator.hasNext())
        {
          parambq = localIterator.next();
          if (!(parambq instanceof IBinder)) {
            break label127;
          }
          parambq = bm.a.a((IBinder)parambq);
          if (parambq == null) {
            continue;
          }
          b.add(new bn(parambq));
          continue;
        }
        try
        {
          parambq = a.d();
          if (parambq == null) {
            break;
          }
          parambq = new bn(parambq);
        }
        catch (RemoteException parambq)
        {
          for (;;)
          {
            b.a("Failed to get icon.", parambq);
            parambq = null;
          }
        }
      }
      catch (RemoteException parambq)
      {
        b.a("Failed to get image.", parambq);
      }
      c = parambq;
      return;
      label127:
      parambq = null;
    }
  }
  
  private com.google.android.gms.a.c j()
  {
    try
    {
      com.google.android.gms.a.c localc = a.i();
      return localc;
    }
    catch (RemoteException localRemoteException)
    {
      b.a("Failed to retrieve native ad engine.", localRemoteException);
    }
    return null;
  }
  
  public final CharSequence b()
  {
    try
    {
      String str = a.a();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      b.a("Failed to get headline.", localRemoteException);
    }
    return null;
  }
  
  public final List<a.a> c()
  {
    return b;
  }
  
  public final CharSequence d()
  {
    try
    {
      String str = a.c();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      b.a("Failed to get body.", localRemoteException);
    }
    return null;
  }
  
  public final a.a e()
  {
    return c;
  }
  
  public final CharSequence f()
  {
    try
    {
      String str = a.e();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      b.a("Failed to get call to action.", localRemoteException);
    }
    return null;
  }
  
  public final Double g()
  {
    try
    {
      double d = a.f();
      if (d == -1.0D) {
        return null;
      }
      return Double.valueOf(d);
    }
    catch (RemoteException localRemoteException)
    {
      b.a("Failed to get star rating.", localRemoteException);
    }
    return null;
  }
  
  public final CharSequence h()
  {
    try
    {
      String str = a.g();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      b.a("Failed to get store", localRemoteException);
    }
    return null;
  }
  
  public final CharSequence i()
  {
    try
    {
      String str = a.h();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      b.a("Failed to get price.", localRemoteException);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */