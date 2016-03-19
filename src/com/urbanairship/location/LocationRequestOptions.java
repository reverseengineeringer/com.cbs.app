package com.urbanairship.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.urbanairship.j;
import com.urbanairship.json.JsonValue;
import com.urbanairship.json.a;
import com.urbanairship.json.c;
import com.urbanairship.json.d;
import java.util.HashMap;
import java.util.Map;

public class LocationRequestOptions
  implements Parcelable, d
{
  public static final Parcelable.Creator<LocationRequestOptions> CREATOR = new Parcelable.Creator() {};
  private final int a;
  private final long b;
  private final float c;
  
  private LocationRequestOptions(int paramInt, long paramLong, float paramFloat)
  {
    a = paramInt;
    b = paramLong;
    c = paramFloat;
  }
  
  private LocationRequestOptions(Parcel paramParcel)
  {
    this(paramParcel.readInt(), paramParcel.readLong(), paramParcel.readFloat());
  }
  
  private LocationRequestOptions(a parama)
  {
    this(a.a(parama), a.b(parama), a.c(parama));
  }
  
  public static LocationRequestOptions a(String paramString)
  {
    paramString = JsonValue.b(paramString).f();
    if (paramString == null) {
      return null;
    }
    Number localNumber = paramString.c("minDistance").d();
    if (localNumber == null) {}
    long l;
    int i;
    for (float f = 800.0F;; f = localNumber.floatValue())
    {
      l = paramString.c("minTime").a(300000L);
      i = paramString.c("priority").b();
      switch (i)
      {
      default: 
        throw new IllegalArgumentException("Priority can only be either PRIORITY_HIGH_ACCURACY, PRIORITY_BALANCED_POWER_ACCURACY, PRIORITY_LOW_POWER, or PRIORITY_NO_POWER");
      }
    }
    if (f < 0.0F) {
      throw new IllegalArgumentException("minDistance must be greater or equal to 0");
    }
    if (l < 0L) {
      throw new IllegalArgumentException("minTime must be greater or equal to 0");
    }
    return new LocationRequestOptions(i, l, f);
  }
  
  public final int a()
  {
    return a;
  }
  
  public final long b()
  {
    return b;
  }
  
  public final float c()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public final JsonValue e()
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("priority", Integer.valueOf(a));
    ((Map)localObject).put("minDistance", Float.valueOf(c));
    ((Map)localObject).put("minTime", Long.valueOf(b));
    try
    {
      localObject = JsonValue.a(localObject);
      return (JsonValue)localObject;
    }
    catch (a locala)
    {
      j.a("LocationRequestOptions - Unable to serialize to JSON.", locala);
    }
    return JsonValue.a;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof LocationRequestOptions)) {}
    do
    {
      return false;
      paramObject = (LocationRequestOptions)paramObject;
    } while ((a != a) || (b != b) || (c != c));
    return true;
  }
  
  public String toString()
  {
    return "LocationRequestOptions: Priority " + a + " minTime " + b + " minDistance " + c;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeLong(b);
    paramParcel.writeFloat(c);
  }
  
  public static final class a
  {
    private long a = 300000L;
    private float b = 800.0F;
    private int c = 2;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.LocationRequestOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */