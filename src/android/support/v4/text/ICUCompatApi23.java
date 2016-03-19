package android.support.v4.text;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

public class ICUCompatApi23
{
  private static final String TAG = "ICUCompatIcs";
  private static Method sAddLikelySubtagsMethod;
  
  static
  {
    try
    {
      sAddLikelySubtagsMethod = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", new Class[] { Locale.class });
      return;
    }
    catch (Exception localException)
    {
      throw new IllegalStateException(localException);
    }
  }
  
  public static String maximizeAndGetScript(Locale paramLocale)
  {
    try
    {
      String str = ((Locale)sAddLikelySubtagsMethod.invoke(null, new Object[] { paramLocale })).getScript();
      return str;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return paramLocale.getScript();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.text.ICUCompatApi23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */