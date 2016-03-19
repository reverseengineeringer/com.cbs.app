package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import java.util.Map;

@fs
public final class cd
  implements ci
{
  private final ce a;
  
  public cd(ce paramce)
  {
    a = paramce;
  }
  
  public final void a(hs paramhs, Map<String, String> paramMap)
  {
    paramhs = (String)paramMap.get("name");
    if (paramhs == null)
    {
      b.a(5);
      return;
    }
    a.a(paramhs, (String)paramMap.get("info"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */