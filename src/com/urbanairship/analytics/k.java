package com.urbanairship.analytics;

import com.urbanairship.b.c;
import com.urbanairship.d.g;
import java.util.List;
import java.util.Map;

final class k
{
  private final c a;
  
  public k(c paramc)
  {
    a = paramc;
  }
  
  public final int a()
  {
    return a.a();
  }
  
  final int b()
  {
    if (a.d() != null)
    {
      List localList = (List)a.d().get("X-UA-Max-Total");
      if ((localList != null) && (localList.size() > 0)) {
        return g.a(Integer.parseInt((String)localList.get(0)), 10240, 5242880);
      }
    }
    return 10240;
  }
  
  final int c()
  {
    if (a.d() != null)
    {
      List localList = (List)a.d().get("X-UA-Max-Batch");
      if ((localList != null) && (localList.size() > 0)) {
        return g.a(Integer.parseInt((String)localList.get(0)), 1024, 512000);
      }
    }
    return 1024;
  }
  
  final int d()
  {
    if (a.d() != null)
    {
      List localList = (List)a.d().get("X-UA-Max-Wait");
      if ((localList != null) && (localList.size() > 0)) {
        return g.a(Integer.parseInt((String)localList.get(0)), 604800000, 1209600000);
      }
    }
    return 604800000;
  }
  
  final int e()
  {
    if (a.d() != null)
    {
      List localList = (List)a.d().get("X-UA-Min-Batch-Interval");
      if ((localList != null) && (localList.size() > 0)) {
        return g.a(Integer.parseInt((String)localList.get(0)), 60000, 604800000);
      }
    }
    return 60000;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */