package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Map;

@fs
public final class ed
{
  private final hs a;
  private final boolean b;
  private final String c;
  
  public ed(hs paramhs, Map<String, String> paramMap)
  {
    a = paramhs;
    c = ((String)paramMap.get("forceOrientation"));
    if (paramMap.containsKey("allowOrientationChange"))
    {
      b = Boolean.parseBoolean((String)paramMap.get("allowOrientationChange"));
      return;
    }
    b = true;
  }
  
  public final void a()
  {
    if (a == null)
    {
      b.a(5);
      return;
    }
    int i;
    if ("portrait".equalsIgnoreCase(c)) {
      i = o.g().b();
    }
    for (;;)
    {
      a.b(i);
      return;
      if ("landscape".equalsIgnoreCase(c)) {
        i = o.g().a();
      } else if (b) {
        i = -1;
      } else {
        i = o.g().c();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */