package com.google.android.gms.ads.internal.client;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.internal.fs;
import java.util.Arrays;
import java.util.List;

@fs
public final class AdRequestParcel
  implements SafeParcelable
{
  public static final j CREATOR = new j();
  public final int a;
  public final long b;
  public final Bundle c;
  public final int d;
  public final List<String> e;
  public final boolean f;
  public final int g;
  public final boolean h;
  public final String i;
  public final SearchAdRequestParcel j;
  public final Location k;
  public final String l;
  public final Bundle m;
  public final Bundle n;
  public final List<String> o;
  public final String p;
  public final String q;
  
  public AdRequestParcel(int paramInt1, long paramLong, Bundle paramBundle1, int paramInt2, List<String> paramList1, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, String paramString1, SearchAdRequestParcel paramSearchAdRequestParcel, Location paramLocation, String paramString2, Bundle paramBundle2, Bundle paramBundle3, List<String> paramList2, String paramString3, String paramString4)
  {
    a = paramInt1;
    b = paramLong;
    Bundle localBundle = paramBundle1;
    if (paramBundle1 == null) {
      localBundle = new Bundle();
    }
    c = localBundle;
    d = paramInt2;
    e = paramList1;
    f = paramBoolean1;
    g = paramInt3;
    h = paramBoolean2;
    i = paramString1;
    j = paramSearchAdRequestParcel;
    k = paramLocation;
    l = paramString2;
    m = paramBundle2;
    n = paramBundle3;
    o = paramList2;
    p = paramString3;
    q = paramString4;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof AdRequestParcel)) {}
    do
    {
      return false;
      paramObject = (AdRequestParcel)paramObject;
    } while ((a != a) || (b != b) || (!y.a(c, c)) || (d != d) || (!y.a(e, e)) || (f != f) || (g != g) || (h != h) || (!y.a(i, i)) || (!y.a(j, j)) || (!y.a(k, k)) || (!y.a(l, l)) || (!y.a(m, m)) || (!y.a(n, n)) || (!y.a(o, o)) || (!y.a(p, p)) || (!y.a(q, q)));
    return true;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(a), Long.valueOf(b), c, Integer.valueOf(d), e, Boolean.valueOf(f), Integer.valueOf(g), Boolean.valueOf(h), i, j, k, l, m, n, o, p, q });
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    j.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.AdRequestParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */