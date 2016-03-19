package com.b.a.a;

import android.util.Base64;
import java.io.UnsupportedEncodingException;

public final class b
{
  public static String a(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("UTF-8");
      return Base64.encodeToString(paramString, 2);
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw paramString;
    }
    finally
    {
      Base64.encodeToString(null, 2);
    }
  }
}

/* Location:
 * Qualified Name:     com.b.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */