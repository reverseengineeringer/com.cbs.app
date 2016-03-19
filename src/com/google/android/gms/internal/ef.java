package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import org.json.JSONException;
import org.json.JSONObject;

@fs
public final class ef
{
  private final boolean a;
  private final boolean b;
  private final boolean c;
  private final boolean d;
  private final boolean e;
  
  private ef(ef.a parama)
  {
    a = ef.a.a(parama);
    b = ef.a.b(parama);
    c = ef.a.c(parama);
    d = ef.a.d(parama);
    e = ef.a.e(parama);
  }
  
  public final JSONObject a()
  {
    try
    {
      JSONObject localJSONObject = new JSONObject().put("sms", a).put("tel", b).put("calendar", c).put("storePicture", d).put("inlineVideo", e);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      b.a("Error occured while obtaining the MRAID capabilities.", localJSONException);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */