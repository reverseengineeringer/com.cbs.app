package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

@fs
final class fy
{
  private final List<String> a;
  private final List<String> b;
  private final String c;
  private final String d;
  private final String e;
  private final String f;
  private final boolean g;
  private final String h;
  private String i;
  private int j;
  
  public fy(int paramInt, Map<String, String> paramMap)
  {
    i = ((String)paramMap.get("url"));
    d = ((String)paramMap.get("base_uri"));
    e = ((String)paramMap.get("post_parameters"));
    String str = (String)paramMap.get("drt_include");
    if ((str != null) && ((str.equals("1")) || (str.equals("true")))) {}
    for (boolean bool = true;; bool = false)
    {
      g = bool;
      c = ((String)paramMap.get("activation_overlay_url"));
      b = b((String)paramMap.get("check_packages"));
      h = ((String)paramMap.get("request_id"));
      f = ((String)paramMap.get("type"));
      a = b((String)paramMap.get("errors"));
      j = paramInt;
      return;
    }
  }
  
  private static List<String> b(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return Arrays.asList(paramString.split(","));
  }
  
  public final int a()
  {
    return j;
  }
  
  public final void a(String paramString)
  {
    i = paramString;
  }
  
  public final List<String> b()
  {
    return a;
  }
  
  public final String c()
  {
    return e;
  }
  
  public final String d()
  {
    return i;
  }
  
  public final String e()
  {
    return f;
  }
  
  public final boolean f()
  {
    return g;
  }
  
  public final String g()
  {
    return h;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */