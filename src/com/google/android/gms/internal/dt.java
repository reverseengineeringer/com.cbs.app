package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.b.d;
import com.google.android.gms.ads.b.f;
import com.google.android.gms.ads.b.h;
import com.google.android.gms.ads.b.i;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.z;

@fs
public final class dt
  implements d, f, h
{
  private final dn a;
  private i b;
  
  public dt(dn paramdn)
  {
    a = paramdn;
  }
  
  public final void a()
  {
    z.b("onAdLoaded must be called on the main UI thread.");
    b.a(3);
    try
    {
      a.e();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public final void a(int paramInt)
  {
    z.b("onAdFailedToLoad must be called on the main UI thread.");
    new StringBuilder("Adapter called onAdFailedToLoad with error. ").append(paramInt);
    b.a(3);
    try
    {
      a.a(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public final void a(i parami)
  {
    z.b("onAdLoaded must be called on the main UI thread.");
    b.a(3);
    b = parami;
    try
    {
      a.e();
      return;
    }
    catch (RemoteException parami)
    {
      b.a(5);
    }
  }
  
  public final void b()
  {
    z.b("onAdOpened must be called on the main UI thread.");
    b.a(3);
    try
    {
      a.d();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public final void b(int paramInt)
  {
    z.b("onAdFailedToLoad must be called on the main UI thread.");
    new StringBuilder("Adapter called onAdFailedToLoad with error ").append(paramInt).append(".");
    b.a(3);
    try
    {
      a.a(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public final void c()
  {
    z.b("onAdClosed must be called on the main UI thread.");
    b.a(3);
    try
    {
      a.b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public final void c(int paramInt)
  {
    z.b("onAdFailedToLoad must be called on the main UI thread.");
    new StringBuilder("Adapter called onAdFailedToLoad with error ").append(paramInt).append(".");
    b.a(3);
    try
    {
      a.a(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public final void d()
  {
    z.b("onAdLeftApplication must be called on the main UI thread.");
    b.a(3);
    try
    {
      a.c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public final void e()
  {
    z.b("onAdClicked must be called on the main UI thread.");
    b.a(3);
    try
    {
      a.a();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public final void f()
  {
    z.b("onAdLoaded must be called on the main UI thread.");
    b.a(3);
    try
    {
      a.e();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public final void g()
  {
    z.b("onAdOpened must be called on the main UI thread.");
    b.a(3);
    try
    {
      a.d();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public final void h()
  {
    z.b("onAdClosed must be called on the main UI thread.");
    b.a(3);
    try
    {
      a.b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public final void i()
  {
    z.b("onAdLeftApplication must be called on the main UI thread.");
    b.a(3);
    try
    {
      a.c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public final void j()
  {
    z.b("onAdClicked must be called on the main UI thread.");
    b.a(3);
    try
    {
      a.a();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public final void k()
  {
    z.b("onAdOpened must be called on the main UI thread.");
    b.a(3);
    try
    {
      a.d();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public final void l()
  {
    z.b("onAdClosed must be called on the main UI thread.");
    b.a(3);
    try
    {
      a.b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public final void m()
  {
    z.b("onAdLeftApplication must be called on the main UI thread.");
    b.a(3);
    try
    {
      a.c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public final void n()
  {
    z.b("onAdClicked must be called on the main UI thread.");
    b.a(3);
    try
    {
      a.a();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public final i o()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */