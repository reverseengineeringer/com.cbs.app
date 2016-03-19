package com.google.android.gms.ads.internal.util.client;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings.Secure;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.common.e;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.ka;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

@fs
public final class a
{
  public static final Handler a = new Handler(Looper.getMainLooper());
  
  public static int a(Context paramContext, int paramInt)
  {
    return a(paramContext.getResources().getDisplayMetrics(), paramInt);
  }
  
  public static int a(DisplayMetrics paramDisplayMetrics, int paramInt)
  {
    return (int)TypedValue.applyDimension(1, paramInt, paramDisplayMetrics);
  }
  
  public static String a(Context paramContext)
  {
    paramContext = paramContext.getContentResolver();
    if (paramContext == null) {}
    for (paramContext = null;; paramContext = Settings.Secure.getString(paramContext, "android_id"))
    {
      if ((paramContext == null) || (a())) {
        paramContext = "emulator";
      }
      return a(paramContext);
    }
  }
  
  public static String a(String paramString)
  {
    int i = 0;
    while (i < 2) {
      try
      {
        Object localObject = MessageDigest.getInstance("MD5");
        ((MessageDigest)localObject).update(paramString.getBytes());
        localObject = String.format(Locale.US, "%032X", new Object[] { new BigInteger(1, ((MessageDigest)localObject).digest()) });
        return (String)localObject;
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        i += 1;
      }
    }
    return null;
  }
  
  private void a(ViewGroup paramViewGroup, AdSizeParcel paramAdSizeParcel, String paramString, int paramInt1, int paramInt2)
  {
    if (paramViewGroup.getChildCount() != 0) {
      return;
    }
    Context localContext = paramViewGroup.getContext();
    TextView localTextView = new TextView(localContext);
    localTextView.setGravity(17);
    localTextView.setText(paramString);
    localTextView.setTextColor(paramInt1);
    localTextView.setBackgroundColor(paramInt2);
    paramString = new FrameLayout(localContext);
    paramString.setBackgroundColor(paramInt1);
    paramInt1 = a(localContext, 3);
    paramString.addView(localTextView, new FrameLayout.LayoutParams(g - paramInt1, d - paramInt1, 17));
    paramViewGroup.addView(paramString, g, d);
  }
  
  public static boolean a()
  {
    return Build.DEVICE.startsWith("generic");
  }
  
  public static int b(Context paramContext, int paramInt)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramContext.getMetrics(localDisplayMetrics);
    return b(localDisplayMetrics, paramInt);
  }
  
  public static int b(DisplayMetrics paramDisplayMetrics, int paramInt)
  {
    return Math.round(paramInt / density);
  }
  
  public static boolean b()
  {
    return Looper.myLooper() == Looper.getMainLooper();
  }
  
  public static boolean b(Context paramContext)
  {
    return e.a(paramContext) == 0;
  }
  
  public static boolean c(Context paramContext)
  {
    if (getResourcesgetConfigurationorientation != 2) {}
    do
    {
      return false;
      paramContext = paramContext.getResources().getDisplayMetrics();
    } while ((int)(heightPixels / density) >= 600);
    return true;
  }
  
  public static boolean d(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    int j;
    int i;
    if (ka.d())
    {
      paramContext.getRealMetrics(localDisplayMetrics);
      j = heightPixels;
      i = widthPixels;
    }
    for (;;)
    {
      paramContext.getMetrics(localDisplayMetrics);
      int k = heightPixels;
      int m = widthPixels;
      if ((k == j) && (m == i))
      {
        return true;
        try
        {
          j = ((Integer)Display.class.getMethod("getRawHeight", new Class[0]).invoke(paramContext, new Object[0])).intValue();
          i = ((Integer)Display.class.getMethod("getRawWidth", new Class[0]).invoke(paramContext, new Object[0])).intValue();
        }
        catch (Exception paramContext)
        {
          return false;
        }
      }
    }
    return false;
  }
  
  public static int e(Context paramContext)
  {
    int i = paramContext.getResources().getIdentifier("navigation_bar_width", "dimen", "android");
    if (i > 0) {
      return paramContext.getResources().getDimensionPixelSize(i);
    }
    return 0;
  }
  
  public final void a(ViewGroup paramViewGroup, AdSizeParcel paramAdSizeParcel, String paramString)
  {
    a(paramViewGroup, paramAdSizeParcel, paramString, -16777216, -1);
  }
  
  public final void a(ViewGroup paramViewGroup, AdSizeParcel paramAdSizeParcel, String paramString1, String paramString2)
  {
    b.a(5);
    a(paramViewGroup, paramAdSizeParcel, paramString1, -65536, -16777216);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.util.client.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */