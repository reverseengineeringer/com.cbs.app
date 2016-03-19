package com.flurry.sdk;

public final class bn
{
  private static long a = 100L;
  private static bn b = null;
  private final bo c = new bo();
  
  public bn()
  {
    c.a(a);
    c.a();
  }
  
  public static bn a()
  {
    try
    {
      if (b == null) {
        b = new bn();
      }
      bn localbn = b;
      return localbn;
    }
    finally {}
  }
  
  public final void a(ah<bm> paramah)
  {
    try
    {
      ai.a().a("com.flurry.android.sdk.TickEvent", paramah);
      if (ai.a().a("com.flurry.android.sdk.TickEvent") > 0) {
        c.b();
      }
      return;
    }
    finally
    {
      paramah = finally;
      throw paramah;
    }
  }
  
  public final void b(ah<bm> paramah)
  {
    try
    {
      ai.a().b("com.flurry.android.sdk.TickEvent", paramah);
      if (ai.a().a("com.flurry.android.sdk.TickEvent") == 0) {
        c.c();
      }
      return;
    }
    finally
    {
      paramah = finally;
      throw paramah;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */