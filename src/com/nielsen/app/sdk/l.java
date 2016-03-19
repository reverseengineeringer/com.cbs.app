package com.nielsen.app.sdk;

import android.content.Context;
import android.util.Log;
import java.io.Closeable;
import java.util.Iterator;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public final class l
  implements Closeable
{
  private static u a = null;
  private static l b = null;
  private static o c = null;
  private static boolean d = false;
  private static boolean e = false;
  
  private l(Context paramContext, String paramString, n paramn)
  {
    q.a(paramn);
    for (;;)
    {
      try
      {
        e = false;
        if ((paramString != null) && (!paramString.isEmpty()) && (paramContext != null))
        {
          paramString = e(paramString);
          boolean bool = paramString.toLowerCase(Locale.getDefault()).contains("\"nol_devdebug\":\"true\"");
          d = bool;
          if ((!bool) || (c == null)) {
            c = o.a(paramContext, paramString, null);
          }
          if ((a == null) && (c != null)) {
            a = u.a(paramString, paramContext);
          }
          if ((c != null) && (a != null))
          {
            o.a(a);
            e = true;
          }
        }
        if (!d) {
          continue;
        }
        paramString = new StringBuilder("Nielsen AppSDK: getInstance API - ");
        if (!e) {
          break label366;
        }
        paramContext = "SUCCESS";
      }
      catch (JSONException paramContext)
      {
        Log.e("AppSdk", "Nielsen AppSDK: getInstance API - JSON EXCEPTION; " + paramContext.getMessage());
        if (!d) {
          continue;
        }
        paramString = new StringBuilder("Nielsen AppSDK: getInstance API - ");
        if (!e) {
          break label348;
        }
        paramContext = "SUCCESS";
        continue;
      }
      catch (Exception paramContext)
      {
        Log.e("AppSdk", "Nielsen AppSDK: getInstance API - EXCEPTION; " + paramContext.getMessage());
        if (!d) {
          continue;
        }
        paramString = new StringBuilder("Nielsen AppSDK: getInstance API - ");
        if (!e) {
          break label354;
        }
        paramContext = "SUCCESS";
        continue;
      }
      catch (Error paramContext)
      {
        Log.e("AppSdk", "Nielsen AppSDK: getInstance API - ERROR; " + paramContext.getMessage());
        if (!d) {
          continue;
        }
        paramString = new StringBuilder("Nielsen AppSDK: getInstance API - ");
        if (!e) {
          break label360;
        }
        paramContext = "SUCCESS";
        continue;
      }
      finally
      {
        if (!d) {
          continue;
        }
        paramn = new StringBuilder("Nielsen AppSDK: getInstance API - ");
        if (!e) {
          break label342;
        }
        paramContext = "SUCCESS";
        paramn.append(paramContext);
      }
      paramString.append(paramContext);
      return;
      label342:
      paramContext = "FAILED";
      continue;
      label348:
      paramContext = "FAILED";
      continue;
      label354:
      paramContext = "FAILED";
      continue;
      label360:
      paramContext = "FAILED";
      continue;
      label366:
      paramContext = "FAILED";
    }
  }
  
  public static l a(long paramLong)
  {
    l locall = null;
    if (c == null) {
      q.a();
    }
    for (;;)
    {
      if ((d) && (locall == null)) {
        new StringBuilder("Nielsen AppSDK: setPlayheadPosition API - FAILED; ").append(String.valueOf(paramLong));
      }
      return locall;
      if (o.a(paramLong)) {
        locall = b;
      }
    }
  }
  
  /* Error */
  public static l a(Context paramContext, String paramString, n paramn)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 21	com/nielsen/app/sdk/l:b	Lcom/nielsen/app/sdk/l;
    //   6: ifnonnull +16 -> 22
    //   9: new 2	com/nielsen/app/sdk/l
    //   12: dup
    //   13: aload_0
    //   14: aload_1
    //   15: aload_2
    //   16: invokespecial 133	com/nielsen/app/sdk/l:<init>	(Landroid/content/Context;Ljava/lang/String;Lcom/nielsen/app/sdk/n;)V
    //   19: putstatic 21	com/nielsen/app/sdk/l:b	Lcom/nielsen/app/sdk/l;
    //   22: getstatic 27	com/nielsen/app/sdk/l:e	Z
    //   25: ifne +16 -> 41
    //   28: invokestatic 121	com/nielsen/app/sdk/q:a	()V
    //   31: getstatic 21	com/nielsen/app/sdk/l:b	Lcom/nielsen/app/sdk/l;
    //   34: invokevirtual 136	com/nielsen/app/sdk/l:close	()V
    //   37: aconst_null
    //   38: putstatic 21	com/nielsen/app/sdk/l:b	Lcom/nielsen/app/sdk/l;
    //   41: getstatic 21	com/nielsen/app/sdk/l:b	Lcom/nielsen/app/sdk/l;
    //   44: astore_0
    //   45: ldc 2
    //   47: monitorexit
    //   48: aload_0
    //   49: areturn
    //   50: astore_0
    //   51: ldc 2
    //   53: monitorexit
    //   54: aload_0
    //   55: athrow
    //   56: astore_0
    //   57: goto -16 -> 41
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	60	0	paramContext	Context
    //   0	60	1	paramString	String
    //   0	60	2	paramn	n
    // Exception table:
    //   from	to	target	type
    //   3	22	50	finally
    //   22	41	50	finally
    //   41	45	50	finally
    //   22	41	56	java/lang/Exception
  }
  
  public static l a(String paramString)
  {
    StringBuilder localStringBuilder;
    Object localObject;
    if (d)
    {
      localStringBuilder = new StringBuilder("Nielsen AppSDK: loadMetadata API - ");
      if ((paramString != null) && (!paramString.isEmpty()))
      {
        localObject = paramString;
        localStringBuilder.append((String)localObject);
      }
    }
    else
    {
      localStringBuilder = null;
      if ((paramString != null) && ((paramString == null) || (!paramString.isEmpty()))) {
        break label94;
      }
      q.a();
      localObject = localStringBuilder;
      label57:
      if (d)
      {
        localStringBuilder = new StringBuilder("Nielsen AppSDK: loadMetadata API - ");
        if (localObject != null) {
          break label183;
        }
      }
    }
    label94:
    label183:
    for (paramString = "FAILED";; paramString = "SUCCESS")
    {
      localStringBuilder.append(paramString);
      return (l)localObject;
      localObject = "EMPTY";
      break;
      localObject = localStringBuilder;
      if (c == null) {
        break label57;
      }
      localObject = localStringBuilder;
      try
      {
        if (!o.a(e(paramString))) {
          break label57;
        }
        localObject = b;
      }
      catch (JSONException paramString)
      {
        Log.e("AppSdk", "Nielsen AppSDK: loadMetadata API - JSON EXCEPTION; " + paramString.getMessage());
        localObject = localStringBuilder;
      }
      catch (Exception paramString)
      {
        Log.e("AppSdk", "Nielsen AppSDK: loadMetadata API - EXCEPTION; " + paramString.getMessage());
        localObject = localStringBuilder;
      }
      break label57;
    }
  }
  
  static boolean a()
  {
    return d;
  }
  
  public static l b(String paramString)
  {
    StringBuilder localStringBuilder2;
    Object localObject;
    if (d)
    {
      localStringBuilder2 = new StringBuilder("Nielsen AppSDK: sendID3 API - ");
      if ((paramString == null) || (paramString.isEmpty())) {
        break label46;
      }
      localObject = paramString;
    }
    for (;;)
    {
      localStringBuilder2.append((String)localObject);
      try
      {
        if (c == null) {
          q.a();
        }
        label46:
        while (!c.b(paramString))
        {
          return null;
          localObject = "EMPTY";
          break;
        }
        localObject = b;
        return (l)localObject;
      }
      catch (Exception localException)
      {
        if (!d) {
          break label114;
        }
      }
    }
    StringBuilder localStringBuilder1 = new StringBuilder("Nielsen AppSDK: sendID3 API - FAILED - ").append(localException.getMessage()).append(" - ");
    if ((paramString != null) && (!paramString.isEmpty())) {}
    for (;;)
    {
      localStringBuilder1.append(paramString);
      label114:
      q.a();
      return null;
      paramString = "EMPTY";
    }
  }
  
  public static boolean b()
  {
    if (c == null) {
      e = false;
    }
    StringBuilder localStringBuilder;
    if (d)
    {
      localStringBuilder = new StringBuilder("Nielsen AppSDK: isValid API - ");
      if (!e) {
        break label45;
      }
    }
    label45:
    for (String str = "TRUE";; str = "FALSE")
    {
      localStringBuilder.append(str);
      return e;
    }
  }
  
  public static l c()
  {
    int i = 1;
    int j = 0;
    Object localObject;
    String str;
    if (c == null)
    {
      q.a();
      localObject = null;
      if (d)
      {
        StringBuilder localStringBuilder = new StringBuilder("Nielsen AppSDK: stop API - ");
        if (i != 0)
        {
          str = "BACKGROUND";
          label39:
          localStringBuilder = localStringBuilder.append(str).append(" - ");
          if (localObject != null) {
            break label112;
          }
          str = "FAILED";
          label59:
          localStringBuilder.append(str);
        }
      }
      else
      {
        return (l)localObject;
      }
    }
    else
    {
      localObject = new boolean[1];
      localObject[0] = 0;
      if ((!c.a((boolean[])localObject)) || (localObject[0] != 1)) {
        break label118;
      }
      c = null;
    }
    label112:
    label118:
    for (i = j;; i = 1)
    {
      localObject = b;
      break;
      str = "STOPPED";
      break label39;
      str = "SUCCESS";
      break label59;
    }
  }
  
  public static l c(String paramString)
  {
    Object localObject;
    if (d)
    {
      localObject = new StringBuilder("Nielsen AppSDK: play API - ");
      if ((paramString != null) && (!paramString.isEmpty()))
      {
        str = paramString;
        ((StringBuilder)localObject).append(str);
      }
    }
    else
    {
      str = null;
    }
    for (;;)
    {
      try
      {
        localObject = e(paramString);
        if (c != null) {
          continue;
        }
        q.a();
        paramString = str;
      }
      catch (JSONException paramString)
      {
        Log.e("AppSdk", "Nielsen AppSDK: play API - JSON EXCEPTION; " + paramString.getMessage());
        paramString = str;
        continue;
      }
      catch (Exception paramString)
      {
        Log.e("AppSdk", "Nielsen AppSDK: play API - EXCEPTION; " + paramString.getMessage());
        paramString = str;
        continue;
        str = "SUCCESS";
        continue;
      }
      if (d)
      {
        localObject = new StringBuilder("Nielsen AppSDK: play API - ");
        if (paramString != null) {
          continue;
        }
        str = "FAILED";
        ((StringBuilder)localObject).append(str);
      }
      return paramString;
      str = "EMPTY";
      break;
      paramString = str;
      if (o.c((String)localObject)) {
        paramString = b;
      }
    }
  }
  
  public static l d(String paramString)
  {
    StringBuilder localStringBuilder;
    Object localObject;
    if (d)
    {
      localStringBuilder = new StringBuilder("Nielsen AppSDK: userOptOut API - ");
      if ((paramString != null) && (!paramString.isEmpty()))
      {
        localObject = paramString;
        localStringBuilder.append((String)localObject);
      }
    }
    else
    {
      localObject = null;
      if (c != null) {
        break label83;
      }
      q.a();
      label46:
      if (d)
      {
        localStringBuilder = new StringBuilder("Nielsen AppSDK: userOptOut API - ");
        if (localObject != null) {
          break label114;
        }
      }
    }
    label83:
    label114:
    for (paramString = "FAILED";; paramString = "SUCCESS")
    {
      localStringBuilder.append(paramString);
      return (l)localObject;
      localObject = "NULL";
      break;
      if ((paramString == null) || (paramString.isEmpty()))
      {
        q.a();
        break label46;
      }
      if (!o.d(paramString)) {
        break label46;
      }
      localObject = b;
      break label46;
    }
  }
  
  public static String d()
  {
    String str = "";
    if (c == null) {
      q.a();
    }
    for (;;)
    {
      if ((d) && (str != null) && (!str.isEmpty())) {}
      return str;
      str = o.f();
    }
  }
  
  public static String e()
  {
    String str1 = "";
    StringBuilder localStringBuilder;
    if (c == null)
    {
      q.a();
      if (d)
      {
        localStringBuilder = new StringBuilder("Nielsen AppSDK: getNielsenId API - ");
        if ((str1 == null) || (str1.isEmpty())) {
          break label56;
        }
      }
    }
    label56:
    for (String str2 = str1;; str2 = "NONE")
    {
      localStringBuilder.append(str2);
      return str1;
      str1 = o.d();
      break;
    }
  }
  
  private static String e(String paramString)
  {
    if (d) {}
    paramString = new JSONObject(paramString);
    JSONObject localJSONObject = new JSONObject();
    Iterator localIterator = paramString.keys();
    while (localIterator.hasNext())
    {
      String str1 = (String)localIterator.next();
      String str2 = paramString.getString(str1);
      localJSONObject.put(str1.trim(), str2.trim());
    }
    paramString = localJSONObject.toString();
    if (d) {}
    return paramString;
  }
  
  public static String f()
  {
    String str1 = "";
    StringBuilder localStringBuilder;
    if (c == null)
    {
      q.a();
      if (d)
      {
        localStringBuilder = new StringBuilder("Nielsen AppSDK: getDeviceId API - ");
        if ((str1 == null) || (str1.isEmpty())) {
          break label56;
        }
      }
    }
    label56:
    for (String str2 = str1;; str2 = "NONE")
    {
      localStringBuilder.append(str2);
      return str1;
      str1 = o.e();
      break;
    }
  }
  
  public static String g()
  {
    String str2 = o.c();
    StringBuilder localStringBuilder;
    if (d)
    {
      localStringBuilder = new StringBuilder("Nielsen AppSDK: getMeterVersion API - ");
      if ((str2 == null) || (str2.isEmpty())) {
        break label41;
      }
    }
    label41:
    for (String str1 = str2;; str1 = "NONE")
    {
      localStringBuilder.append(str1);
      return str2;
    }
  }
  
  public final void close()
  {
    if (a != null)
    {
      a.close();
      a = null;
    }
    if (c != null)
    {
      e = false;
      c.close();
      c = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.nielsen.app.sdk.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */