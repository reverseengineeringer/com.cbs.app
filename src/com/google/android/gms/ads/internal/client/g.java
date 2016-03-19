package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.a.c;
import com.google.android.gms.a.d;
import com.google.android.gms.a.f;
import com.google.android.gms.a.f.a;
import com.google.android.gms.ads.internal.j;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.dk;
import com.google.android.gms.internal.fs;

@fs
public final class g
  extends f<t>
{
  private static final g a = new g();
  
  private g()
  {
    super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
  }
  
  public static s a(Context paramContext, String paramString, dk paramdk)
  {
    n.a();
    Object localObject;
    if (a.b(paramContext))
    {
      s locals = a.b(paramContext, paramString, paramdk);
      localObject = locals;
      if (locals != null) {}
    }
    else
    {
      b.a(3);
      localObject = new j(paramContext, paramString, paramdk, new VersionInfoParcel());
    }
    return (s)localObject;
  }
  
  private s b(Context paramContext, String paramString, dk paramdk)
  {
    try
    {
      c localc = d.a(paramContext);
      paramContext = s.a.a(((t)a(paramContext)).a(localc, paramString, paramdk, 8115000));
      return paramContext;
    }
    catch (RemoteException paramContext)
    {
      b.a(5);
      return null;
    }
    catch (f.a paramContext)
    {
      for (;;)
      {
        b.a(5);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */