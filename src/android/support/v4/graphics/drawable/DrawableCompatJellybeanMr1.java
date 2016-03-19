package android.support.v4.graphics.drawable;

import android.graphics.drawable.Drawable;
import java.lang.reflect.Method;

class DrawableCompatJellybeanMr1
{
  private static final String TAG = "DrawableCompatJellybeanMr1";
  private static Method sGetLayoutDirectionMethod;
  private static boolean sGetLayoutDirectionMethodFetched;
  private static Method sSetLayoutDirectionMethod;
  private static boolean sSetLayoutDirectionMethodFetched;
  
  public static int getLayoutDirection(Drawable paramDrawable)
  {
    if (!sGetLayoutDirectionMethodFetched) {}
    try
    {
      Method localMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
      sGetLayoutDirectionMethod = localMethod;
      localMethod.setAccessible(true);
      sGetLayoutDirectionMethodFetched = true;
      if (sGetLayoutDirectionMethod != null) {
        try
        {
          int i = ((Integer)sGetLayoutDirectionMethod.invoke(paramDrawable, new Object[0])).intValue();
          return i;
        }
        catch (Exception paramDrawable)
        {
          sGetLayoutDirectionMethod = null;
        }
      }
      return -1;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
  }
  
  public static void setLayoutDirection(Drawable paramDrawable, int paramInt)
  {
    if (!sSetLayoutDirectionMethodFetched) {}
    try
    {
      Method localMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", new Class[] { Integer.TYPE });
      sSetLayoutDirectionMethod = localMethod;
      localMethod.setAccessible(true);
      sSetLayoutDirectionMethodFetched = true;
      if (sSetLayoutDirectionMethod != null) {}
      try
      {
        sSetLayoutDirectionMethod.invoke(paramDrawable, new Object[] { Integer.valueOf(paramInt) });
        return;
      }
      catch (Exception paramDrawable)
      {
        sSetLayoutDirectionMethod = null;
        return;
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.graphics.drawable.DrawableCompatJellybeanMr1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */