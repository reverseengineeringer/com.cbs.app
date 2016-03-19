package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import java.util.Map;

@fs
public final class cl
  implements ci
{
  private final cm a;
  
  public cl(cm paramcm)
  {
    a = paramcm;
  }
  
  public final void a(hs paramhs, Map<String, String> paramMap)
  {
    boolean bool1 = "1".equals(paramMap.get("transparentBackground"));
    boolean bool2 = "1".equals(paramMap.get("blur"));
    try
    {
      if (paramMap.get("blurRadius") != null)
      {
        f = Float.parseFloat((String)paramMap.get("blurRadius"));
        a.b(bool1);
        a.a(bool2, f);
        return;
      }
    }
    catch (NumberFormatException paramhs)
    {
      for (;;)
      {
        b.a("Fail to parse float", paramhs);
        float f = 0.0F;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */