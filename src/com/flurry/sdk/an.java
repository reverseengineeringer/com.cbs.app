package com.flurry.sdk;

import android.os.Build.VERSION;

public final class an
{
  private final Class<? extends ap> a;
  private final int b;
  
  public an(Class<? extends ap> paramClass, int paramInt)
  {
    a = paramClass;
    b = 10;
  }
  
  public final Class<? extends ap> a()
  {
    return a;
  }
  
  public final boolean b()
  {
    return (a != null) && (Build.VERSION.SDK_INT >= b);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */