package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.common.internal.y.a;
import java.util.Arrays;
import java.util.Set;

public final class NearbyAlertRequest
  implements SafeParcelable
{
  public static final f CREATOR = new f();
  private final int a;
  private final int b;
  private final int c;
  @Deprecated
  private final PlaceFilter d;
  private final NearbyAlertFilter e;
  private final boolean f;
  private final int g;
  
  NearbyAlertRequest(int paramInt1, int paramInt2, int paramInt3, PlaceFilter paramPlaceFilter, NearbyAlertFilter paramNearbyAlertFilter, boolean paramBoolean, int paramInt4)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    f = paramBoolean;
    if (paramNearbyAlertFilter != null) {
      e = paramNearbyAlertFilter;
    }
    for (;;)
    {
      d = null;
      g = paramInt4;
      return;
      if (paramPlaceFilter != null)
      {
        if (((paramPlaceFilter.b() != null) && (!paramPlaceFilter.b().isEmpty())) || ((paramPlaceFilter.a() != null) && (!paramPlaceFilter.a().isEmpty())) || ((paramPlaceFilter.c() != null) && (!paramPlaceFilter.c().isEmpty()))) {}
        for (paramInt1 = 1;; paramInt1 = 0)
        {
          if (paramInt1 == 0) {
            break label152;
          }
          e = NearbyAlertFilter.a(paramPlaceFilter.a(), paramPlaceFilter.b(), paramPlaceFilter.c());
          break;
        }
        label152:
        e = null;
      }
      else
      {
        e = null;
      }
    }
  }
  
  @Deprecated
  public static PlaceFilter d()
  {
    return null;
  }
  
  public final int a()
  {
    return a;
  }
  
  public final int b()
  {
    return b;
  }
  
  public final int c()
  {
    return c;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final NearbyAlertFilter e()
  {
    return e;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof NearbyAlertRequest)) {
        return false;
      }
      paramObject = (NearbyAlertRequest)paramObject;
    } while ((b == b) && (c == c) && (y.a(d, d)) && (y.a(e, e)));
    return false;
  }
  
  public final boolean f()
  {
    return f;
  }
  
  public final int g()
  {
    return g;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(b), Integer.valueOf(c) });
  }
  
  public final String toString()
  {
    return y.a(this).a("transitionTypes", Integer.valueOf(b)).a("loiteringTimeMillis", Integer.valueOf(c)).a("nearbyAlertFilter", e).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    f.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.NearbyAlertRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */