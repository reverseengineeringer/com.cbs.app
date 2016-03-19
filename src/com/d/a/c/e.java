package com.d.a.c;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.IOException;

public final class e
{
  private static File a(Context paramContext)
  {
    File localFile = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), "Android"), "data"), paramContext.getPackageName()), "cache");
    paramContext = localFile;
    if (!localFile.exists())
    {
      if (!localFile.mkdirs())
      {
        c.c("Unable to create external cache directory", new Object[0]);
        paramContext = null;
      }
    }
    else {
      return paramContext;
    }
    try
    {
      new File(localFile, ".nomedia").createNewFile();
      return localFile;
    }
    catch (IOException paramContext)
    {
      c.b("Can't create \".nomedia\" file in application external cache directory", new Object[0]);
    }
    return localFile;
  }
  
  public static File a(Context paramContext, boolean paramBoolean)
  {
    Object localObject3 = null;
    try
    {
      localObject2 = Environment.getExternalStorageState();
      Object localObject1 = localObject3;
      if (paramBoolean)
      {
        localObject1 = localObject3;
        if ("mounted".equals(localObject2))
        {
          if (paramContext.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            break label129;
          }
          i = 1;
          localObject1 = localObject3;
          if (i != 0) {
            localObject1 = a(paramContext);
          }
        }
      }
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = paramContext.getCacheDir();
      }
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        paramContext = "/data/data/" + paramContext.getPackageName() + "/cache/";
        c.c("Can't define system cache directory! '%s' will be used.", new Object[] { paramContext });
        localObject1 = new File(paramContext);
      }
      return (File)localObject1;
    }
    catch (NullPointerException localNullPointerException)
    {
      for (;;)
      {
        Object localObject2 = "";
        continue;
        label129:
        int i = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.d.a.c.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */