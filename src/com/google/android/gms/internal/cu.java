package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.d;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.f;
import java.util.Map;

@fs
public final class cu
  implements ci
{
  public final void a(hs paramhs, Map<String, String> paramMap)
  {
    o.r();
    if (paramMap.containsKey("abort"))
    {
      if (!cs.a(paramhs)) {
        b.a(5);
      }
      return;
    }
    String str = (String)paramMap.get("src");
    if (str == null)
    {
      b.a(5);
      return;
    }
    try
    {
      Integer.parseInt((String)paramMap.get("player"));
      if (paramMap.containsKey("mimetype")) {
        paramMap.get("mimetype");
      }
      if (cs.b(paramhs))
      {
        b.a(5);
        return;
      }
      f.a(paramhs.g());
      new cr(paramhs, ga.a(paramhs), str).e();
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */