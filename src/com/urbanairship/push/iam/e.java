package com.urbanairship.push.iam;

import android.content.Context;
import com.urbanairship.analytics.h;
import com.urbanairship.j;
import com.urbanairship.p;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class e
  extends h
{
  private final String a;
  private final Map<String, Object> b;
  
  private e(String paramString, Map<String, Object> paramMap)
  {
    a = paramString;
    b = paramMap;
  }
  
  public static e a(Context paramContext, InAppMessage paramInAppMessage, com.urbanairship.push.a.c paramc, long paramLong)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", "button_click");
    localHashMap.put("button_id", paramc.b());
    localHashMap.put("button_group", paramInAppMessage.g());
    localHashMap.put("display_time", a(paramLong));
    if (paramc.a() != null) {
      localHashMap.put("button_description", paramc.a());
    }
    for (;;)
    {
      return new e(paramInAppMessage.c(), localHashMap);
      if (paramc.c() > 0) {
        localHashMap.put("button_description", paramContext.getString(paramc.c()));
      }
    }
  }
  
  public static e a(InAppMessage paramInAppMessage)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", "direct_open");
    return new e(paramInAppMessage.c(), localHashMap);
  }
  
  public static e a(InAppMessage paramInAppMessage, long paramLong)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", "message_click");
    localHashMap.put("display_time", a(paramLong));
    return new e(paramInAppMessage.c(), localHashMap);
  }
  
  public static e a(InAppMessage paramInAppMessage1, InAppMessage paramInAppMessage2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", "replaced");
    localHashMap.put("replacement_id", paramInAppMessage2.c());
    return new e(paramInAppMessage1.c(), localHashMap);
  }
  
  public static e b(InAppMessage paramInAppMessage)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", "expired");
    localHashMap.put("expiry", com.urbanairship.d.c.a(paramInAppMessage.a()));
    return new e(paramInAppMessage.c(), localHashMap);
  }
  
  public static e b(InAppMessage paramInAppMessage, long paramLong)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", "user_dismissed");
    localHashMap.put("display_time", a(paramLong));
    return new e(paramInAppMessage.c(), localHashMap);
  }
  
  public static e c(InAppMessage paramInAppMessage, long paramLong)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", "timed_out");
    localHashMap.put("display_time", a(paramLong));
    return new e(paramInAppMessage.c(), localHashMap);
  }
  
  public final String a()
  {
    return "in_app_resolution";
  }
  
  protected final JSONObject b()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.putOpt("id", a);
      localJSONObject.putOpt("resolution", new JSONObject(b));
      localJSONObject.putOpt("conversion_send_id", p.a().q().b());
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      j.a("ResolutionEvent - Error constructing JSON data.", localJSONException);
    }
    return localJSONObject;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */