package com.cbs.app.view;

import com.google.android.gms.ads.a;

final class InterstitialAdManagerV2$1
  extends a
{
  public final void a()
  {
    InterstitialAdManagerV2.c();
    InterstitialAdManagerV2.b();
  }
  
  public final void a(int paramInt)
  {
    String str;
    switch (paramInt)
    {
    default: 
      str = "Unknown error";
    }
    for (;;)
    {
      String.format("onAdFailedToLoad (%s)", new Object[] { str });
      InterstitialAdManagerV2.c();
      return;
      str = "Internal error";
      continue;
      str = "Invalid request";
      continue;
      str = "Network Error";
      continue;
      str = "No fill";
    }
  }
  
  public final void b()
  {
    InterstitialAdManagerV2.c();
  }
  
  public final void c()
  {
    InterstitialAdManagerV2.c();
  }
  
  public final void d()
  {
    InterstitialAdManagerV2.c();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.InterstitialAdManagerV2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */