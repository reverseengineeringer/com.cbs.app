package com.urbanairship.analytics;

import com.urbanairship.j;
import com.urbanairship.push.PushMessage;
import org.json.JSONException;
import org.json.JSONObject;

public final class m
  extends h
{
  private final String a;
  private final String b;
  private final String c;
  private final String d;
  private final boolean e;
  
  public m(PushMessage paramPushMessage, String paramString1, String paramString2, boolean paramBoolean)
  {
    a = paramPushMessage.f();
    b = paramPushMessage.i();
    c = paramString1;
    d = paramString2;
    e = paramBoolean;
  }
  
  public final String a()
  {
    return "interactive_notification_action";
  }
  
  protected final JSONObject b()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("send_id", a);
      localJSONObject.put("button_group", b);
      localJSONObject.put("button_id", c);
      localJSONObject.put("button_description", d);
      localJSONObject.put("foreground", e);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      j.a("InteractiveNotificationEvent - Error constructing JSON data.", localJSONException);
    }
    return localJSONObject;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */