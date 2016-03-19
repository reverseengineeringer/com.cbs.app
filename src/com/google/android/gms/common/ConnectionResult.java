package com.google.android.gms.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.common.internal.y.a;
import java.util.Arrays;

public final class ConnectionResult
  implements SafeParcelable
{
  public static final Parcelable.Creator<ConnectionResult> CREATOR = new h();
  public static final ConnectionResult a = new ConnectionResult();
  final int b;
  private final int c;
  private final PendingIntent d;
  private final String e;
  
  private ConnectionResult()
  {
    this(0, null, (byte)0);
  }
  
  ConnectionResult(int paramInt1, int paramInt2, PendingIntent paramPendingIntent, String paramString)
  {
    b = paramInt1;
    c = paramInt2;
    d = paramPendingIntent;
    e = paramString;
  }
  
  public ConnectionResult(int paramInt, PendingIntent paramPendingIntent)
  {
    this(paramInt, paramPendingIntent, (byte)0);
  }
  
  private ConnectionResult(int paramInt, PendingIntent paramPendingIntent, byte paramByte)
  {
    this(1, paramInt, paramPendingIntent, null);
  }
  
  static String a(int paramInt)
  {
    switch (paramInt)
    {
    case 12: 
    default: 
      return "UNKNOWN_ERROR_CODE(" + paramInt + ")";
    case 0: 
      return "SUCCESS";
    case 1: 
      return "SERVICE_MISSING";
    case 2: 
      return "SERVICE_VERSION_UPDATE_REQUIRED";
    case 3: 
      return "SERVICE_DISABLED";
    case 4: 
      return "SIGN_IN_REQUIRED";
    case 5: 
      return "INVALID_ACCOUNT";
    case 6: 
      return "RESOLUTION_REQUIRED";
    case 7: 
      return "NETWORK_ERROR";
    case 8: 
      return "INTERNAL_ERROR";
    case 9: 
      return "SERVICE_INVALID";
    case 10: 
      return "DEVELOPER_ERROR";
    case 11: 
      return "LICENSE_CHECK_FAILED";
    case 13: 
      return "CANCELED";
    case 14: 
      return "TIMEOUT";
    case 15: 
      return "INTERRUPTED";
    case 16: 
      return "API_UNAVAILABLE";
    case 17: 
      return "SIGN_IN_FAILED";
    case 18: 
      return "SERVICE_UPDATING";
    }
    return "SERVICE_MISSING_PERMISSION";
  }
  
  public final void a(Activity paramActivity, int paramInt)
  {
    if (!a()) {
      return;
    }
    paramActivity.startIntentSenderForResult(d.getIntentSender(), paramInt, null, 0, 0, 0);
  }
  
  public final boolean a()
  {
    return (c != 0) && (d != null);
  }
  
  public final boolean b()
  {
    return c == 0;
  }
  
  public final int c()
  {
    return c;
  }
  
  public final PendingIntent d()
  {
    return d;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String e()
  {
    return e;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof ConnectionResult)) {
        return false;
      }
      paramObject = (ConnectionResult)paramObject;
    } while ((c == c) && (y.a(d, d)) && (y.a(e, e)));
    return false;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(c), d, e });
  }
  
  public final String toString()
  {
    return y.a(this).a("statusCode", a(c)).a("resolution", d).a("message", e).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    h.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.ConnectionResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */