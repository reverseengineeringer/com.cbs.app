package com.adobe.adobepass.accessenabler.d;

import java.io.IOException;
import java.io.StringWriter;

public final class e
{
  public static String a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      StringWriter localStringWriter = new StringWriter((int)(paramString.length() * 1.5D));
      if (paramString != null) {
        a.c.a(localStringWriter, paramString);
      }
      paramString = localStringWriter.toString();
      return paramString;
    }
    catch (IOException paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.d.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */