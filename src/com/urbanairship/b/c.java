package com.urbanairship.b;

import java.util.List;
import java.util.Map;

public final class c
{
  private String a;
  private Map<String, List<String>> b;
  private int c;
  private String d;
  private long e;
  
  public final int a()
  {
    return c;
  }
  
  public final String b()
  {
    return a;
  }
  
  public final long c()
  {
    return e;
  }
  
  public final Map<String, List<String>> d()
  {
    return b;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Response: ");
    localStringBuilder.append("ResponseBody: ");
    if (a != null) {
      localStringBuilder.append(a);
    }
    localStringBuilder.append(" ResponseHeaders: ");
    if (b != null) {
      localStringBuilder.append(b);
    }
    localStringBuilder.append(" ResponseMessage: ");
    if (d != null) {
      localStringBuilder.append(d);
    }
    localStringBuilder.append(" Status: ").append(Integer.toString(c));
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */