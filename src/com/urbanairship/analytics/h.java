package com.urbanairship.analytics;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.urbanairship.j;
import com.urbanairship.p;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class h
{
  private final String a = UUID.randomUUID().toString();
  private final String b;
  
  public h()
  {
    this(System.currentTimeMillis());
  }
  
  public h(long paramLong)
  {
    b = a(paramLong);
  }
  
  protected static String a(long paramLong)
  {
    return String.format(Locale.US, "%.3f", new Object[] { Double.valueOf(paramLong / 1000.0D) });
  }
  
  public static String f()
  {
    Object localObject = (ConnectivityManager)p.h().getSystemService("connectivity");
    if (localObject != null)
    {
      localObject = ((ConnectivityManager)localObject).getActiveNetworkInfo();
      if (localObject == null) {}
    }
    for (int i = ((NetworkInfo)localObject).getType();; i = -1)
    {
      switch (i)
      {
      default: 
        return "none";
      case 0: 
        return "cell";
      case 1: 
        return "wifi";
      }
      return "wimax";
    }
  }
  
  public static String g()
  {
    Object localObject = (ConnectivityManager)p.h().getSystemService("connectivity");
    if (localObject != null)
    {
      localObject = ((ConnectivityManager)localObject).getActiveNetworkInfo();
      if (localObject != null) {
        return ((NetworkInfo)localObject).getSubtypeName();
      }
    }
    return "";
  }
  
  protected static String h()
  {
    return ((TelephonyManager)p.h().getSystemService("phone")).getNetworkOperatorName();
  }
  
  public abstract String a();
  
  final String a(String paramString)
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = b();
    try
    {
      localJSONObject2 = new JSONObject(localJSONObject2.toString());
      localJSONObject2.put("session_id", paramString);
      localJSONObject1.put("type", a());
      localJSONObject1.put("event_id", a);
      localJSONObject1.put("time", b);
      localJSONObject1.put("data", localJSONObject2);
      return localJSONObject1.toString();
    }
    catch (JSONException paramString)
    {
      j.a("Event - Error constructing JSON " + a() + " representation.", paramString);
    }
    return null;
  }
  
  protected abstract JSONObject b();
  
  public boolean c()
  {
    return true;
  }
  
  public final String d()
  {
    return a;
  }
  
  public final String e()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */