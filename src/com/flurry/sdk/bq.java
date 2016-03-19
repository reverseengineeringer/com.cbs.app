package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.os.Build.VERSION;
import android.view.Display;
import android.view.WindowManager;
import java.lang.reflect.Method;

public final class bq
{
  @SuppressLint({"NewApi"})
  public static Point a()
  {
    Display localDisplay = ((WindowManager)y.a().b().getSystemService("window")).getDefaultDisplay();
    Point localPoint = new Point();
    if (Build.VERSION.SDK_INT >= 17)
    {
      localDisplay.getRealSize(localPoint);
      return localPoint;
    }
    if (Build.VERSION.SDK_INT >= 14) {
      try
      {
        Method localMethod = Display.class.getMethod("getRawHeight", new Class[0]);
        x = ((Integer)Display.class.getMethod("getRawWidth", new Class[0]).invoke(localDisplay, new Object[0])).intValue();
        y = ((Integer)localMethod.invoke(localDisplay, new Object[0])).intValue();
        return localPoint;
      }
      catch (Throwable localThrowable)
      {
        localDisplay.getSize(localPoint);
        return localPoint;
      }
    }
    if (Build.VERSION.SDK_INT >= 13)
    {
      localDisplay.getSize(localPoint);
      return localPoint;
    }
    x = localDisplay.getWidth();
    y = localDisplay.getHeight();
    return localPoint;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */