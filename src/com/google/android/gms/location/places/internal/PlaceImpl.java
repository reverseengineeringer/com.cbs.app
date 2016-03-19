package com.google.android.gms.location.places.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.common.internal.y.a;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

public final class PlaceImpl
  implements SafeParcelable
{
  public static final b CREATOR = new b();
  final int a;
  final boolean b;
  private final String c;
  private final Bundle d;
  @Deprecated
  private final PlaceLocalization e;
  private final LatLng f;
  private final float g;
  private final LatLngBounds h;
  private final String i;
  private final Uri j;
  private final boolean k;
  private final float l;
  private final int m;
  private final long n;
  private final List<Integer> o;
  private final List<Integer> p;
  private final String q;
  private final String r;
  private final String s;
  private final String t;
  private final List<String> u;
  private final Map<Integer, String> v;
  private final TimeZone w;
  private Locale x;
  private e y;
  
  PlaceImpl(int paramInt1, String paramString1, List<Integer> paramList1, List<Integer> paramList2, Bundle paramBundle, String paramString2, String paramString3, String paramString4, String paramString5, List<String> paramList, LatLng paramLatLng, float paramFloat1, LatLngBounds paramLatLngBounds, String paramString6, Uri paramUri, boolean paramBoolean1, float paramFloat2, int paramInt2, long paramLong, boolean paramBoolean2, PlaceLocalization paramPlaceLocalization)
  {
    a = paramInt1;
    c = paramString1;
    p = Collections.unmodifiableList(paramList1);
    o = paramList2;
    if (paramBundle != null)
    {
      d = paramBundle;
      q = paramString2;
      r = paramString3;
      s = paramString4;
      t = paramString5;
      if (paramList == null) {
        break label182;
      }
      label68:
      u = paramList;
      f = paramLatLng;
      g = paramFloat1;
      h = paramLatLngBounds;
      if (paramString6 == null) {
        break label190;
      }
    }
    for (;;)
    {
      i = paramString6;
      j = paramUri;
      k = paramBoolean1;
      l = paramFloat2;
      m = paramInt2;
      n = paramLong;
      v = Collections.unmodifiableMap(new HashMap());
      w = null;
      x = null;
      b = paramBoolean2;
      e = paramPlaceLocalization;
      return;
      paramBundle = new Bundle();
      break;
      label182:
      paramList = Collections.emptyList();
      break label68;
      label190:
      paramString6 = "UTC";
    }
  }
  
  private void a(String paramString)
  {
    if ((b) && (y != null)) {
      y.a(c, paramString);
    }
  }
  
  public final String a()
  {
    a("getId");
    return c;
  }
  
  public final List<Integer> b()
  {
    a("getPlaceTypes");
    return p;
  }
  
  public final List<Integer> c()
  {
    a("getTypesDeprecated");
    return o;
  }
  
  public final String d()
  {
    a("getName");
    return q;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String e()
  {
    a("getAddress");
    return r;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof PlaceImpl)) {
        return false;
      }
      paramObject = (PlaceImpl)paramObject;
    } while ((c.equals(c)) && (y.a(x, x)) && (n == n));
    return false;
  }
  
  public final LatLng f()
  {
    a("getLatLng");
    return f;
  }
  
  public final float g()
  {
    a("getLevelNumber");
    return g;
  }
  
  public final LatLngBounds h()
  {
    a("getViewport");
    return h;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { c, x, Long.valueOf(n) });
  }
  
  public final Uri i()
  {
    a("getWebsiteUri");
    return j;
  }
  
  public final String j()
  {
    a("getPhoneNumber");
    return s;
  }
  
  public final String k()
  {
    a("getRegularOpenHours");
    return t;
  }
  
  public final List<String> l()
  {
    a("getAttributions");
    return u;
  }
  
  public final boolean m()
  {
    a("isPermanentlyClosed");
    return k;
  }
  
  public final float n()
  {
    a("getRating");
    return l;
  }
  
  public final int o()
  {
    a("getPriceLevel");
    return m;
  }
  
  public final long p()
  {
    return n;
  }
  
  public final Bundle q()
  {
    return d;
  }
  
  public final String r()
  {
    return i;
  }
  
  @Deprecated
  public final PlaceLocalization s()
  {
    a("getLocalization");
    return e;
  }
  
  public final String toString()
  {
    return y.a(this).a("id", c).a("placeTypes", p).a("locale", x).a("name", q).a("address", r).a("phoneNumber", s).a("latlng", f).a("viewport", h).a("websiteUri", j).a("isPermanentlyClosed", Boolean.valueOf(k)).a("priceLevel", Integer.valueOf(m)).a("timestampSecs", Long.valueOf(n)).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    b.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.internal.PlaceImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */