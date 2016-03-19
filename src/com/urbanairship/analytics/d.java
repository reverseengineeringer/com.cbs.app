package com.urbanairship.analytics;

import com.urbanairship.l;

final class d
{
  private final l a;
  
  d(l paraml)
  {
    a = paraml;
  }
  
  final int a()
  {
    return a.a("com.urbanairship.analytics.MAX_TOTAL_DB_SIZE", 5242880);
  }
  
  final void a(int paramInt)
  {
    a.b("com.urbanairship.analytics.MAX_TOTAL_DB_SIZE", paramInt);
  }
  
  final void a(long paramLong)
  {
    a.b("com.urbanairship.analytics.LAST_SEND", paramLong);
  }
  
  final int b()
  {
    return a.a("com.urbanairship.analytics.MAX_BATCH_SIZE", 512000);
  }
  
  final void b(int paramInt)
  {
    a.b("com.urbanairship.analytics.MAX_BATCH_SIZE", paramInt);
  }
  
  final void b(long paramLong)
  {
    a.b("com.urbanairship.analytics.SCHEDULED_SEND_TIME", paramLong);
  }
  
  final int c()
  {
    return a.a("com.urbanairship.analytics.MAX_WAIT", 1209600000);
  }
  
  final void c(int paramInt)
  {
    a.b("com.urbanairship.analytics.MAX_WAIT", paramInt);
  }
  
  final int d()
  {
    return a.a("com.urbanairship.analytics.MIN_BATCH_INTERVAL", 60000);
  }
  
  final void d(int paramInt)
  {
    a.b("com.urbanairship.analytics.MIN_BATCH_INTERVAL", paramInt);
  }
  
  final long e()
  {
    return a.a("com.urbanairship.analytics.LAST_SEND", 0L);
  }
  
  final long f()
  {
    return a.a("com.urbanairship.analytics.SCHEDULED_SEND_TIME", 0L);
  }
  
  final boolean g()
  {
    return a.a("com.urbanairship.analytics.ANALYTICS_ENABLED", true);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */