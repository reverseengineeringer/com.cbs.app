package com.google.android.gms.internal;

import android.content.Context;
import java.util.Map;

@fs
public final class ha
{
  public static final ha.a<Void> a = new ha.1();
  private static iu b;
  private static final Object c = new Object();
  
  public ha(Context paramContext)
  {
    b = a(paramContext);
  }
  
  private static iu a(Context paramContext)
  {
    synchronized (c)
    {
      if (b == null) {
        b = d.a(paramContext.getApplicationContext());
      }
      paramContext = b;
      return paramContext;
    }
  }
  
  public final <T> hj<T> a(String paramString, ha.a<T> parama)
  {
    ha.c localc = new ha.c(this, (byte)0);
    b.a(new ha.b(paramString, parama, localc));
    return localc;
  }
  
  public final hj<String> a(String paramString, Map<String, String> paramMap)
  {
    ha.c localc = new ha.c(this, (byte)0);
    paramString = new ha.3(this, paramString, localc, new ha.2(this, paramString, localc), paramMap);
    b.a(paramString);
    return localc;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ha
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */