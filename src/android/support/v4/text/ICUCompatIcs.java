package android.support.v4.text;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

class ICUCompatIcs
{
  private static final String TAG = "ICUCompatIcs";
  private static Method sAddLikelySubtagsMethod;
  private static Method sGetScriptMethod;
  
  static
  {
    try
    {
      Class localClass = Class.forName("libcore.icu.ICU");
      if (localClass != null)
      {
        sGetScriptMethod = localClass.getMethod("getScript", new Class[] { String.class });
        sAddLikelySubtagsMethod = localClass.getMethod("addLikelySubtags", new Class[] { String.class });
      }
      return;
    }
    catch (Exception localException)
    {
      sGetScriptMethod = null;
      sAddLikelySubtagsMethod = null;
    }
  }
  
  private static String addLikelySubtags(Locale paramLocale)
  {
    paramLocale = paramLocale.toString();
    try
    {
      if (sAddLikelySubtagsMethod != null)
      {
        String str = (String)sAddLikelySubtagsMethod.invoke(null, new Object[] { paramLocale });
        return str;
      }
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      return paramLocale;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;) {}
    }
  }
  
  private static String getScript(String paramString)
  {
    try
    {
      if (sGetScriptMethod != null)
      {
        paramString = (String)sGetScriptMethod.invoke(null, new Object[] { paramString });
        return paramString;
      }
    }
    catch (InvocationTargetException paramString)
    {
      return null;
    }
    catch (IllegalAccessException paramString)
    {
      for (;;) {}
    }
  }
  
  public static String maximizeAndGetScript(Locale paramLocale)
  {
    paramLocale = addLikelySubtags(paramLocale);
    if (paramLocale != null) {
      return getScript(paramLocale);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.text.ICUCompatIcs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */