package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.request.AdResponseParcel;

@fs
public final class fe
  implements Runnable
{
  protected final hs a;
  protected boolean b;
  protected boolean c;
  private final Handler d = new Handler(Looper.getMainLooper());
  private final long e = 200L;
  private long f = 50L;
  private hu.a g;
  private final int h;
  private final int i;
  
  private fe(hu.a parama, hs paramhs, int paramInt1, int paramInt2)
  {
    a = paramhs;
    g = parama;
    b = false;
    c = false;
    h = paramInt2;
    i = paramInt1;
  }
  
  public fe(hu.a parama, hs paramhs, int paramInt1, int paramInt2, byte paramByte)
  {
    this(parama, paramhs, paramInt1, paramInt2);
  }
  
  public final void a()
  {
    d.postDelayed(this, e);
  }
  
  public final void a(AdResponseParcel paramAdResponseParcel)
  {
    Object localObject = new ic(this, a, q);
    a.setWebViewClient((WebViewClient)localObject);
    hs localhs = a;
    if (TextUtils.isEmpty(b)) {}
    for (localObject = null;; localObject = gw.a(b))
    {
      localhs.loadDataWithBaseURL((String)localObject, c, "text/html", "UTF-8", null);
      return;
      o.e();
    }
  }
  
  public final void b()
  {
    try
    {
      b = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final boolean c()
  {
    try
    {
      boolean bool = b;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final boolean d()
  {
    return c;
  }
  
  public final void run()
  {
    if ((a == null) || (c()))
    {
      g.a(a, true);
      return;
    }
    new fe.a(this, a.a()).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */