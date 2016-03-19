package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.common.internal.y.a;
import java.util.Arrays;
import java.util.List;

@Deprecated
public final class PlaceLocalization
  implements SafeParcelable
{
  public static final d CREATOR = new d();
  public final int a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final List<String> f;
  
  public PlaceLocalization(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, List<String> paramList)
  {
    a = paramInt;
    b = paramString1;
    c = paramString2;
    d = paramString3;
    e = paramString4;
    f = paramList;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof PlaceLocalization)) {
        return false;
      }
      paramObject = (PlaceLocalization)paramObject;
    } while ((y.a(b, b)) && (y.a(c, c)) && (y.a(d, d)) && (y.a(e, e)) && (y.a(f, f)));
    return false;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { b, c, d, e });
  }
  
  public final String toString()
  {
    return y.a(this).a("name", b).a("address", c).a("internationalPhoneNumber", d).a("regularOpenHours", e).a("attributions", f).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    d.a(this, paramParcel);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.internal.PlaceLocalization
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */