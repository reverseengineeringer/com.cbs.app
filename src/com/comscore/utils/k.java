package com.comscore.utils;

import android.os.Build;
import java.io.File;

public final class k
{
  public static boolean a()
  {
    String str = Build.TAGS;
    int i;
    if ((str != null) && (str.contains("test-keys")))
    {
      i = 1;
      if (i == 0) {
        break label30;
      }
    }
    label30:
    while (b())
    {
      return true;
      i = 0;
      break;
    }
    return false;
  }
  
  private static boolean b()
  {
    try
    {
      boolean bool = new File("/system/app/Superuser.apk").exists();
      if (bool) {
        return true;
      }
    }
    catch (Exception localException) {}
    return false;
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */