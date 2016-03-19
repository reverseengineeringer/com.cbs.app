package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.n;
import com.google.android.gms.ads.internal.e;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.overlay.f;
import com.google.android.gms.ads.internal.overlay.j;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import org.json.JSONObject;

@fs
public final class ac
  implements aa
{
  private final hs a;
  
  public ac(Context paramContext, VersionInfoParcel paramVersionInfoParcel, m paramm)
  {
    o.f();
    a = hv.a(paramContext, new AdSizeParcel(), false, false, paramm, paramVersionInfoParcel);
    a.a().setWillNotDraw(true);
  }
  
  private static void a(Runnable paramRunnable)
  {
    n.a();
    if (com.google.android.gms.ads.internal.util.client.a.b())
    {
      paramRunnable.run();
      return;
    }
    gw.a.post(paramRunnable);
  }
  
  public final void a()
  {
    a.destroy();
  }
  
  public final void a(com.google.android.gms.ads.internal.client.a parama, f paramf, ce paramce, j paramj)
  {
    a.k().a(parama, paramf, paramce, paramj, false, null, null, new e((byte)0), null);
  }
  
  public final void a(aa.a parama)
  {
    a.k().a(new ac.6(this, parama));
  }
  
  public final void a(String paramString)
  {
    a(new ac.3(this, String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", new Object[] { paramString })));
  }
  
  public final void a(String paramString, ci paramci)
  {
    a.k().a(paramString, paramci);
  }
  
  public final void a(String paramString1, String paramString2)
  {
    a(new ac.2(this, paramString1, paramString2));
  }
  
  public final void a(String paramString, JSONObject paramJSONObject)
  {
    a(new ac.1(this, paramString, paramJSONObject));
  }
  
  public final ae b()
  {
    return new af(this);
  }
  
  public final void b(String paramString)
  {
    a(new ac.5(this, paramString));
  }
  
  public final void b(String paramString, ci paramci)
  {
    a.k().b(paramString, paramci);
  }
  
  public final void b(String paramString, JSONObject paramJSONObject)
  {
    a.a(paramString, paramJSONObject);
  }
  
  public final void c(String paramString)
  {
    a(new ac.4(this, paramString));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */