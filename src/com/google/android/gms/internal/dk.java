package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.a.d;
import com.google.ads.a.g;
import com.google.ads.a.h;
import com.google.android.gms.ads.b.b.a;
import com.google.android.gms.ads.b.m;
import java.util.Map;

@fs
public final class dk
  extends dl.a
{
  private Map<Class<? extends m>, m> a;
  
  private <NETWORK_EXTRAS extends h, SERVER_PARAMETERS extends g> dm c(String paramString)
  {
    try
    {
      Object localObject = Class.forName(paramString, false, dk.class.getClassLoader());
      if (d.class.isAssignableFrom((Class)localObject))
      {
        localObject = (d)((Class)localObject).newInstance();
        return new dx((d)localObject, (h)a.get(((d)localObject).a()));
      }
      if (com.google.android.gms.ads.b.b.class.isAssignableFrom((Class)localObject)) {
        return new ds((com.google.android.gms.ads.b.b)((Class)localObject).newInstance());
      }
      new StringBuilder("Could not instantiate mediation adapter: ").append(paramString).append(" (not a valid adapter).");
      com.google.android.gms.ads.internal.util.client.b.a(5);
      throw new RemoteException();
    }
    catch (Throwable localThrowable)
    {
      new StringBuilder("Could not instantiate mediation adapter: ").append(paramString).append(". ").append(localThrowable.getMessage());
      com.google.android.gms.ads.internal.util.client.b.a(5);
      throw new RemoteException();
    }
  }
  
  public final dm a(String paramString)
  {
    return c(paramString);
  }
  
  public final void a(Map<Class<? extends m>, m> paramMap)
  {
    a = paramMap;
  }
  
  public final boolean b(String paramString)
  {
    try
    {
      boolean bool = a.class.isAssignableFrom(Class.forName(paramString, false, dk.class.getClassLoader()));
      return bool;
    }
    catch (Throwable localThrowable)
    {
      new StringBuilder("Could not load custom event implementation class: ").append(paramString).append(", assuming old implementation.");
      com.google.android.gms.ads.internal.util.client.b.a(5);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */