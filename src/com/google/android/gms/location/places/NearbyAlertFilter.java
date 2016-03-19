package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.common.internal.y.a;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;

public final class NearbyAlertFilter
  extends b
  implements SafeParcelable
{
  public static final e CREATOR = new e();
  final int a;
  final List<String> b;
  final List<Integer> c;
  final List<UserDataType> d;
  private final Set<String> e;
  private final Set<Integer> f;
  private final Set<UserDataType> g;
  
  NearbyAlertFilter(int paramInt, List<String> paramList, List<Integer> paramList1, List<UserDataType> paramList2)
  {
    a = paramInt;
    if (paramList1 == null)
    {
      paramList1 = Collections.emptyList();
      c = paramList1;
      if (paramList2 != null) {
        break label91;
      }
      paramList1 = Collections.emptyList();
      label31:
      d = paramList1;
      if (paramList != null) {
        break label100;
      }
    }
    label91:
    label100:
    for (paramList = Collections.emptyList();; paramList = Collections.unmodifiableList(paramList))
    {
      b = paramList;
      f = a(c);
      g = a(d);
      e = a(b);
      return;
      paramList1 = Collections.unmodifiableList(paramList1);
      break;
      paramList1 = Collections.unmodifiableList(paramList2);
      break label31;
    }
  }
  
  @Deprecated
  public static NearbyAlertFilter a(Collection<String> paramCollection, Collection<Integer> paramCollection1, Collection<UserDataType> paramCollection2)
  {
    if (((paramCollection == null) || (paramCollection.isEmpty())) && ((paramCollection1 == null) || (paramCollection1.isEmpty())) && ((paramCollection2 == null) || (paramCollection2.isEmpty()))) {
      throw new IllegalArgumentException("NearbyAlertFilters must contain at least onePlaceId, PlaceType, or UserDataType to match results with.");
    }
    return new NearbyAlertFilter(0, a(paramCollection), a(paramCollection1), a(paramCollection2));
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
      if (!(paramObject instanceof NearbyAlertFilter)) {
        return false;
      }
      paramObject = (NearbyAlertFilter)paramObject;
    } while ((f.equals(f)) && (g.equals(g)) && (e.equals(e)));
    return false;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { f, g, e });
  }
  
  public final String toString()
  {
    y.a locala = y.a(this);
    if (!f.isEmpty()) {
      locala.a("types", f);
    }
    if (!e.isEmpty()) {
      locala.a("placeIds", e);
    }
    if (!g.isEmpty()) {
      locala.a("requestedUserDataTypes", g);
    }
    return locala.toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    e.a(this, paramParcel);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.NearbyAlertFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */