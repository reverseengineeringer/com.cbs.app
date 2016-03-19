package com.urbanairship.actions;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.urbanairship.json.JsonValue;
import com.urbanairship.json.b;
import com.urbanairship.json.c;
import com.urbanairship.json.d;

public class ActionValue
  implements Parcelable, d
{
  public static final Parcelable.Creator<ActionValue> CREATOR = new ActionValue.1();
  private final JsonValue a;
  
  public ActionValue()
  {
    a = JsonValue.a;
  }
  
  public ActionValue(JsonValue paramJsonValue)
  {
    JsonValue localJsonValue = paramJsonValue;
    if (paramJsonValue == null) {
      localJsonValue = JsonValue.a;
    }
    a = localJsonValue;
  }
  
  public static ActionValue a(String paramString)
  {
    return new ActionValue(JsonValue.c(paramString));
  }
  
  public final String a()
  {
    return a.a(null);
  }
  
  public final b b()
  {
    return a.e();
  }
  
  public final c c()
  {
    return a.f();
  }
  
  public final boolean d()
  {
    return a.g();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public final JsonValue e()
  {
    return a;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof ActionValue))
    {
      paramObject = (ActionValue)paramObject;
      return a.equals(a);
    }
    return false;
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  public String toString()
  {
    return a.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ActionValue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */