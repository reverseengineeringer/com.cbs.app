package com.c.a.a;

import android.os.Message;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class e
  extends c
{
  private static Object b(String paramString)
  {
    Object localObject = null;
    String str = paramString.trim();
    if (!str.startsWith("{"))
    {
      paramString = (String)localObject;
      if (!str.startsWith("[")) {}
    }
    else
    {
      paramString = new JSONTokener(str).nextValue();
    }
    if (paramString == null) {
      return str;
    }
    return paramString;
  }
  
  protected final void a(Message paramMessage)
  {
    switch (what)
    {
    default: 
      super.a(paramMessage);
    }
    do
    {
      return;
      paramMessage = obj;
      if ((paramMessage instanceof JSONObject))
      {
        a((JSONObject)paramMessage);
        return;
      }
    } while ((paramMessage instanceof JSONArray));
    a(new JSONException("Unexpected type " + paramMessage.getClass().getName()), null);
  }
  
  protected final void a(String paramString)
  {
    try
    {
      b(a(100, b(paramString)));
      return;
    }
    catch (JSONException localJSONException)
    {
      b(localJSONException, paramString);
    }
  }
  
  public void a(Throwable paramThrowable, JSONArray paramJSONArray) {}
  
  public void a(Throwable paramThrowable, JSONObject paramJSONObject) {}
  
  public void a(JSONObject paramJSONObject) {}
  
  protected final void c(Throwable paramThrowable, String paramString)
  {
    if (paramString != null)
    {
      try
      {
        Object localObject = b(paramString);
        if ((localObject instanceof JSONObject))
        {
          a(paramThrowable, (JSONObject)localObject);
          return;
        }
        if ((localObject instanceof JSONArray))
        {
          a(paramThrowable, (JSONArray)localObject);
          return;
        }
      }
      catch (JSONException localJSONException)
      {
        a(paramThrowable, paramString);
        return;
      }
      a(paramThrowable, paramString);
      return;
    }
    a(paramThrowable, "");
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */