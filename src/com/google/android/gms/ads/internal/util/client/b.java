package com.google.android.gms.ads.internal.util.client;

import android.util.Log;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.internal.at;
import com.google.android.gms.internal.aw;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.fs;

@fs
public final class b
{
  public static void a(String paramString)
  {
    if (a(6)) {
      Log.e("Ads", paramString);
    }
  }
  
  public static void a(String paramString, Throwable paramThrowable)
  {
    if (a(6)) {
      Log.e("Ads", paramString, paramThrowable);
    }
  }
  
  public static boolean a(int paramInt)
  {
    if ((paramInt >= 5) || (Log.isLoggable("Ads", paramInt))) {
      if (paramInt == 2)
      {
        at localat = ax.ab;
        if (!((Boolean)o.n().a(localat)).booleanValue()) {}
      }
      else
      {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.util.client.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */