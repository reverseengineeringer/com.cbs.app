package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.e;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.HashMap;
import java.util.Map;

@fs
public final class co
  implements ci
{
  static final Map<String, Integer> a;
  private final e b;
  private final ec c;
  
  static
  {
    HashMap localHashMap = new HashMap();
    a = localHashMap;
    localHashMap.put("resize", Integer.valueOf(1));
    a.put("playVideo", Integer.valueOf(2));
    a.put("storePicture", Integer.valueOf(3));
    a.put("createCalendarEvent", Integer.valueOf(4));
    a.put("setOrientationProperties", Integer.valueOf(5));
    a.put("closeResizedAd", Integer.valueOf(6));
  }
  
  public co(e parame, ec paramec)
  {
    b = parame;
    c = paramec;
  }
  
  public final void a(hs paramhs, Map<String, String> paramMap)
  {
    String str = (String)paramMap.get("a");
    int i = ((Integer)a.get(str)).intValue();
    if ((i != 5) && (b != null) && (!b.b()))
    {
      b.a(null);
      return;
    }
    switch (i)
    {
    case 2: 
    default: 
      b.a(4);
      return;
    case 1: 
      c.a(paramMap);
      return;
    case 4: 
      new eb(paramhs, paramMap).a();
      return;
    case 3: 
      new ee(paramhs, paramMap).a();
      return;
    case 5: 
      new ed(paramhs, paramMap).a();
      return;
    }
    c.a(true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */