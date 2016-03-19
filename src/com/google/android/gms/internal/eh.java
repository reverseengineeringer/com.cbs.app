package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import org.json.JSONException;
import org.json.JSONObject;

@fs
public class eh
{
  private final hs a;
  private final String b;
  
  public eh(hs paramhs)
  {
    this(paramhs, "");
  }
  
  public eh(hs paramhs, String paramString)
  {
    a = paramhs;
    b = paramString;
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject().put("x", paramInt1).put("y", paramInt2).put("width", paramInt3).put("height", paramInt4);
      a.a("onSizeChanged", localJSONObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      b.a("Error occured while dispatching size change.", localJSONException);
    }
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, float paramFloat, int paramInt5)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject().put("width", paramInt1).put("height", paramInt2).put("maxSizeWidth", paramInt3).put("maxSizeHeight", paramInt4).put("density", paramFloat).put("rotation", paramInt5);
      a.a("onScreenInfoChanged", localJSONObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      b.a("Error occured while obtaining screen information.", localJSONException);
    }
  }
  
  public final void a(String paramString)
  {
    try
    {
      paramString = new JSONObject().put("message", paramString).put("action", b);
      a.a("onError", paramString);
      return;
    }
    catch (JSONException paramString)
    {
      b.a("Error occurred while dispatching error event.", paramString);
    }
  }
  
  public final void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject().put("x", paramInt1).put("y", paramInt2).put("width", paramInt3).put("height", paramInt4);
      a.a("onDefaultPositionReceived", localJSONObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      b.a("Error occured while dispatching default position.", localJSONException);
    }
  }
  
  public final void b(String paramString)
  {
    try
    {
      paramString = new JSONObject().put("js", paramString);
      a.a("onReadyEventReceived", paramString);
      return;
    }
    catch (JSONException paramString)
    {
      b.a("Error occured while dispatching ready Event.", paramString);
    }
  }
  
  public final void c(String paramString)
  {
    try
    {
      paramString = new JSONObject().put("state", paramString);
      a.a("onStateChanged", paramString);
      return;
    }
    catch (JSONException paramString)
    {
      b.a("Error occured while dispatching state change.", paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.eh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */