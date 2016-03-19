package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import org.json.JSONObject;

@fs
public final class gk$a
{
  public final AdRequestInfoParcel a;
  public final AdResponseParcel b;
  public final dd c;
  public final AdSizeParcel d;
  public final int e;
  public final long f;
  public final long g;
  public final JSONObject h;
  
  public gk$a(AdRequestInfoParcel paramAdRequestInfoParcel, AdResponseParcel paramAdResponseParcel, dd paramdd, AdSizeParcel paramAdSizeParcel, int paramInt, long paramLong1, long paramLong2, JSONObject paramJSONObject)
  {
    a = paramAdRequestInfoParcel;
    b = paramAdResponseParcel;
    c = paramdd;
    d = paramAdSizeParcel;
    e = paramInt;
    f = paramLong1;
    g = paramLong2;
    h = paramJSONObject;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gk.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */