package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.a;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.b;

@fs
public final class fh
{
  public static fi a(Context paramContext, a parama, gk.a parama1, m paramm, hs paramhs, dl paramdl, fh.a parama2, bg parambg)
  {
    AdResponseParcel localAdResponseParcel = b;
    if (h) {
      paramContext = new fl(paramContext, parama1, paramdl, parama2, parambg);
    }
    for (;;)
    {
      new StringBuilder("AdRenderer: ").append(paramContext.getClass().getName());
      b.a(3);
      paramContext.b_();
      return paramContext;
      if (t)
      {
        if ((parama instanceof com.google.android.gms.ads.internal.m))
        {
          paramContext = new fm(paramContext, (com.google.android.gms.ads.internal.m)parama, new ab(), parama1, paramm, parama2);
        }
        else
        {
          parama1 = new StringBuilder("Invalid NativeAdManager type. Found: ");
          if (parama != null) {}
          for (paramContext = parama.getClass().getName();; paramContext = "null") {
            throw new IllegalArgumentException(paramContext + "; Required: NativeAdManager.");
          }
        }
      }
      else if (p)
      {
        paramContext = new ff(paramContext, parama1, paramhs, parama2);
      }
      else
      {
        parama = ax.R;
        if ((((Boolean)o.n().a(parama)).booleanValue()) && (ka.f()) && (!ka.h()) && (je)) {
          paramContext = new fk(paramContext, parama1, paramhs, parama2);
        } else {
          paramContext = new fj(paramContext, parama1, paramhs, parama2);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */