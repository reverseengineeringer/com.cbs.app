package com.google.android.gms.ads.internal.purchase;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.internal.fs;
import java.lang.reflect.Method;

@fs
public final class b
{
  Object a;
  private final Context b;
  private final boolean c;
  
  public b(Context paramContext)
  {
    this(paramContext, true);
  }
  
  public b(Context paramContext, boolean paramBoolean)
  {
    b = paramContext;
    c = paramBoolean;
  }
  
  public final int a(String paramString1, String paramString2)
  {
    try
    {
      Class localClass = b.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService");
      int i = ((Integer)localClass.getDeclaredMethod("consumePurchase", new Class[] { Integer.TYPE, String.class, String.class }).invoke(localClass.cast(a), new Object[] { Integer.valueOf(3), paramString1, paramString2 })).intValue();
      return i;
    }
    catch (Exception paramString1)
    {
      if (c) {
        com.google.android.gms.ads.internal.util.client.b.a(5);
      }
    }
    return 5;
  }
  
  public final Bundle a(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      Class localClass = b.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService");
      paramString1 = (Bundle)localClass.getDeclaredMethod("getBuyIntent", new Class[] { Integer.TYPE, String.class, String.class, String.class, String.class }).invoke(localClass.cast(a), new Object[] { Integer.valueOf(3), paramString1, paramString2, "inapp", paramString3 });
      return paramString1;
    }
    catch (Exception paramString1)
    {
      if (c) {
        com.google.android.gms.ads.internal.util.client.b.a(5);
      }
    }
    return null;
  }
  
  public final void a(IBinder paramIBinder)
  {
    try
    {
      a = b.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService$Stub").getDeclaredMethod("asInterface", new Class[] { IBinder.class }).invoke(null, new Object[] { paramIBinder });
      return;
    }
    catch (Exception paramIBinder)
    {
      while (!c) {}
      com.google.android.gms.ads.internal.util.client.b.a(5);
    }
  }
  
  public final Bundle b(String paramString1, String paramString2)
  {
    try
    {
      Class localClass = b.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService");
      paramString1 = (Bundle)localClass.getDeclaredMethod("getPurchases", new Class[] { Integer.TYPE, String.class, String.class, String.class }).invoke(localClass.cast(a), new Object[] { Integer.valueOf(3), paramString1, "inapp", paramString2 });
      return paramString1;
    }
    catch (Exception paramString1)
    {
      if (c) {
        com.google.android.gms.ads.internal.util.client.b.a(5);
      }
    }
    return null;
  }
  
  public final int c(String paramString1, String paramString2)
  {
    try
    {
      Class localClass = b.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService");
      int i = ((Integer)localClass.getDeclaredMethod("isBillingSupported", new Class[] { Integer.TYPE, String.class, String.class }).invoke(localClass.cast(a), new Object[] { Integer.valueOf(3), paramString1, paramString2 })).intValue();
      return i;
    }
    catch (Exception paramString1)
    {
      if (c) {
        com.google.android.gms.ads.internal.util.client.b.a(5);
      }
    }
    return 5;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */