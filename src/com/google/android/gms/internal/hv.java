package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.d;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

@fs
public final class hv
{
  public static hs a(Context paramContext, AdSizeParcel paramAdSizeParcel, boolean paramBoolean1, boolean paramBoolean2, m paramm, VersionInfoParcel paramVersionInfoParcel)
  {
    return a(paramContext, paramAdSizeParcel, paramBoolean1, paramBoolean2, paramm, paramVersionInfoParcel, null, null);
  }
  
  public static hs a(Context paramContext, AdSizeParcel paramAdSizeParcel, boolean paramBoolean1, boolean paramBoolean2, m paramm, VersionInfoParcel paramVersionInfoParcel, bg parambg, d paramd)
  {
    paramContext = new hw(hx.a(paramContext, paramAdSizeParcel, paramBoolean1, paramm, paramVersionInfoParcel, parambg, paramd));
    paramContext.setWebViewClient(o.g().a(paramContext, paramBoolean2));
    paramContext.setWebChromeClient(o.g().a(paramContext));
    return paramContext;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */