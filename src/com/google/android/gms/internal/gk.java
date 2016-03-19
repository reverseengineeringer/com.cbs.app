package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.h.a;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

@fs
public final class gk
{
  public final AdRequestParcel a;
  public final hs b;
  public final List<String> c;
  public final int d;
  public final List<String> e;
  public final List<String> f;
  public final int g;
  public final long h;
  public final String i;
  public final JSONObject j;
  public final boolean k;
  public final dc l;
  public final dm m;
  public final String n;
  public final dd o;
  public final df p;
  public final long q;
  public final AdSizeParcel r;
  public final long s;
  public final long t;
  public final long u;
  public final String v;
  public final h.a w;
  
  public gk(AdRequestParcel paramAdRequestParcel, hs paramhs, List<String> paramList1, int paramInt1, List<String> paramList2, List<String> paramList3, int paramInt2, long paramLong1, String paramString1, boolean paramBoolean, dc paramdc, dm paramdm, String paramString2, dd paramdd, df paramdf, long paramLong2, AdSizeParcel paramAdSizeParcel, long paramLong3, long paramLong4, long paramLong5, String paramString3, JSONObject paramJSONObject, h.a parama)
  {
    a = paramAdRequestParcel;
    b = paramhs;
    if (paramList1 != null)
    {
      paramAdRequestParcel = Collections.unmodifiableList(paramList1);
      c = paramAdRequestParcel;
      d = paramInt1;
      if (paramList2 == null) {
        break label174;
      }
      paramAdRequestParcel = Collections.unmodifiableList(paramList2);
      label45:
      e = paramAdRequestParcel;
      if (paramList3 == null) {
        break label179;
      }
    }
    label174:
    label179:
    for (paramAdRequestParcel = Collections.unmodifiableList(paramList3);; paramAdRequestParcel = null)
    {
      f = paramAdRequestParcel;
      g = paramInt2;
      h = paramLong1;
      i = paramString1;
      k = paramBoolean;
      l = paramdc;
      m = paramdm;
      n = paramString2;
      o = paramdd;
      p = paramdf;
      q = paramLong2;
      r = paramAdSizeParcel;
      s = paramLong3;
      t = paramLong4;
      u = paramLong5;
      v = paramString3;
      j = paramJSONObject;
      w = parama;
      return;
      paramAdRequestParcel = null;
      break;
      paramAdRequestParcel = null;
      break label45;
    }
  }
  
  public gk(a parama)
  {
    this(a.c, null, b.d, e, b.f, b.j, b.l, b.k, a.i, b.h, null, null, null, c, null, b.i, d, b.g, f, g, b.o, h, null);
  }
  
  public final boolean a()
  {
    if ((b == null) || (b.k() == null)) {
      return false;
    }
    return b.k().b();
  }
  
  @fs
  public static final class a
  {
    public final AdRequestInfoParcel a;
    public final AdResponseParcel b;
    public final dd c;
    public final AdSizeParcel d;
    public final int e;
    public final long f;
    public final long g;
    public final JSONObject h;
    
    public a(AdRequestInfoParcel paramAdRequestInfoParcel, AdResponseParcel paramAdResponseParcel, dd paramdd, AdSizeParcel paramAdSizeParcel, int paramInt, long paramLong1, long paramLong2, JSONObject paramJSONObject)
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */