package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.a.c;
import com.google.android.gms.ads.formats.a.a;
import com.google.android.gms.ads.formats.d;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@fs
public final class bt
  extends d
{
  private final bs a;
  private final List<a.a> b = new ArrayList();
  private final bn c;
  
  public bt(bs parambs)
  {
    a = parambs;
    for (;;)
    {
      try
      {
        Iterator localIterator = a.b().iterator();
        if (localIterator.hasNext())
        {
          parambs = localIterator.next();
          if (!(parambs instanceof IBinder)) {
            break label127;
          }
          parambs = bm.a.a((IBinder)parambs);
          if (parambs == null) {
            continue;
          }
          b.add(new bn(parambs));
          continue;
        }
        try
        {
          parambs = a.d();
          if (parambs == null) {
            break;
          }
          parambs = new bn(parambs);
        }
        catch (RemoteException parambs)
        {
          for (;;)
          {
            b.a("Failed to get icon.", parambs);
            parambs = null;
          }
        }
      }
      catch (RemoteException parambs)
      {
        b.a("Failed to get image.", parambs);
      }
      c = parambs;
      return;
      label127:
      parambs = null;
    }
  }
  
  private c h()
  {
    try
    {
      c localc = a.g();
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
  
  public final CharSequence g()
  {
    try
    {
      String str = a.f();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      b.a("Failed to get attribution.", localRemoteException);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */