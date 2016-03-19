package com.google.android.gms.a;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.e;
import com.google.android.gms.common.internal.z;

public abstract class f<T>
{
  private final String a;
  private T b;
  
  protected f(String paramString)
  {
    a = paramString;
  }
  
  protected final T a(Context paramContext)
  {
    if (b == null)
    {
      z.a(paramContext);
      paramContext = e.e(paramContext);
      if (paramContext == null) {
        throw new f.a("Could not get remote context.");
      }
      paramContext = paramContext.getClassLoader();
    }
    try
    {
      b = a((IBinder)paramContext.loadClass(a).newInstance());
      return (T)b;
    }
    catch (ClassNotFoundException paramContext)
    {
      throw new f.a("Could not load creator class.", paramContext);
    }
    catch (InstantiationException paramContext)
    {
      throw new f.a("Could not instantiate creator.", paramContext);
    }
    catch (IllegalAccessException paramContext)
    {
      throw new f.a("Could not access creator.", paramContext);
    }
  }
  
  protected abstract T a(IBinder paramIBinder);
}

/* Location:
 * Qualified Name:     com.google.android.gms.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */