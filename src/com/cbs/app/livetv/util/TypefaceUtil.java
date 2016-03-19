package com.cbs.app.livetv.util;

import android.content.Context;
import android.graphics.Typeface;
import java.util.HashMap;
import java.util.Map;

public class TypefaceUtil
{
  private static final Map<String, Typeface> a = new HashMap();
  
  public static Typeface a(Context paramContext, String paramString)
  {
    synchronized (a)
    {
      if (!a.containsKey(paramString))
      {
        paramContext = Typeface.createFromAsset(paramContext.getApplicationContext().getAssets(), paramString);
        a.put(paramString, paramContext);
      }
      paramContext = (Typeface)a.get(paramString);
      return paramContext;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.util.TypefaceUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */