package com.cbs.app.androiddata;

import android.util.Log;

public class LG
{
  public static void a()
  {
    DataManager localDataManager = DataManager.getInstance();
    if (localDataManager.getConfiguration() != null) {
      localDataManager.getConfiguration();
    }
  }
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    DataManager localDataManager = DataManager.getInstance();
    if ((localDataManager.getConfiguration() != null) && (localDataManager.getConfiguration().b())) {
      Log.e(paramString1, paramString2, paramThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.LG
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */