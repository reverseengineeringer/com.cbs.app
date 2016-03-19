package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

@fs
public final class fr
  implements Thread.UncaughtExceptionHandler
{
  private Thread.UncaughtExceptionHandler a;
  private Thread.UncaughtExceptionHandler b;
  private Context c;
  private VersionInfoParcel d;
  
  public fr(Context paramContext, VersionInfoParcel paramVersionInfoParcel, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler1, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler2)
  {
    a = paramUncaughtExceptionHandler1;
    b = paramUncaughtExceptionHandler2;
    c = paramContext;
    d = paramVersionInfoParcel;
  }
  
  public static fr a(Context paramContext, Thread paramThread, VersionInfoParcel paramVersionInfoParcel)
  {
    if ((paramContext == null) || (paramThread == null) || (paramVersionInfoParcel == null)) {
      return null;
    }
    if (!a()) {
      return null;
    }
    Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = paramThread.getUncaughtExceptionHandler();
    paramContext = new fr(paramContext, paramVersionInfoParcel, localUncaughtExceptionHandler, Thread.getDefaultUncaughtExceptionHandler());
    if ((localUncaughtExceptionHandler == null) || (!(localUncaughtExceptionHandler instanceof fr))) {
      try
      {
        paramThread.setUncaughtExceptionHandler(paramContext);
        return paramContext;
      }
      catch (SecurityException paramContext)
      {
        b.a(4);
        return null;
      }
    }
    return (fr)localUncaughtExceptionHandler;
  }
  
  private static boolean a()
  {
    at localat = ax.g;
    return ((Boolean)o.n().a(localat)).booleanValue();
  }
  
  private static boolean a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    if (paramString.startsWith("com.google.android.gms.ads")) {
      return true;
    }
    if (paramString.startsWith("com.google.ads")) {
      return true;
    }
    try
    {
      boolean bool = Class.forName(paramString).isAnnotationPresent(fs.class);
      return bool;
    }
    catch (Exception localException)
    {
      new StringBuilder("Fail to check class type for class ").append(paramString);
      b.a(3);
    }
    return false;
  }
  
  public final void a(Throwable paramThrowable, boolean paramBoolean)
  {
    if (!a()) {
      return;
    }
    Object localObject1 = ax.h;
    label29:
    Object localObject2;
    label245:
    Throwable localThrowable;
    if (((Boolean)o.n().a((at)localObject1)).booleanValue())
    {
      if (paramThrowable != null)
      {
        localObject1 = new ArrayList();
        localObject2 = new StringWriter();
        paramThrowable.printStackTrace(new PrintWriter((Writer)localObject2));
        paramThrowable = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
        o.e();
        ((ArrayList)localObject1).add(paramThrowable.appendQueryParameter("device", gw.c()).appendQueryParameter("js", d.b).appendQueryParameter("appid", c.getApplicationContext().getPackageName()).appendQueryParameter("stacktrace", ((StringWriter)localObject2).toString()).appendQueryParameter("eids", TextUtils.join(",", ax.a())).appendQueryParameter("trapped", String.valueOf(paramBoolean)).toString());
        o.e();
        gw.a(c, d.b, (List)localObject1, o.h().g());
      }
    }
    else
    {
      localObject1 = new LinkedList();
      while (paramThrowable != null)
      {
        ((LinkedList)localObject1).push(paramThrowable);
        paramThrowable = paramThrowable.getCause();
      }
      paramThrowable = null;
      if (!((LinkedList)localObject1).isEmpty())
      {
        localThrowable = (Throwable)((LinkedList)localObject1).pop();
        StackTraceElement[] arrayOfStackTraceElement = localThrowable.getStackTrace();
        localObject2 = new ArrayList();
        ((ArrayList)localObject2).add(new StackTraceElement(localThrowable.getClass().getName(), "<filtered>", "<filtered>", 1));
        int m = arrayOfStackTraceElement.length;
        int i = 0;
        int j = 0;
        if (i < m)
        {
          StackTraceElement localStackTraceElement = arrayOfStackTraceElement[i];
          if (a(localStackTraceElement.getClassName()))
          {
            j = 1;
            ((ArrayList)localObject2).add(localStackTraceElement);
          }
          for (;;)
          {
            i += 1;
            break;
            String str = localStackTraceElement.getClassName();
            if ((!TextUtils.isEmpty(str)) && ((str.startsWith("android.")) || (str.startsWith("java.")))) {}
            for (int k = 1;; k = 0)
            {
              if (k == 0) {
                break label420;
              }
              ((ArrayList)localObject2).add(localStackTraceElement);
              break;
            }
            label420:
            ((ArrayList)localObject2).add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
          }
        }
        if (j == 0) {
          break label507;
        }
        if (paramThrowable == null)
        {
          paramThrowable = new Throwable(localThrowable.getMessage());
          label468:
          paramThrowable.setStackTrace((StackTraceElement[])((ArrayList)localObject2).toArray(new StackTraceElement[0]));
        }
      }
    }
    label507:
    for (;;)
    {
      break label245;
      paramThrowable = new Throwable(localThrowable.getMessage(), paramThrowable);
      break label468;
      break label29;
      break;
    }
  }
  
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    int i;
    if (paramThrowable != null)
    {
      int j = 0;
      int k = 0;
      for (Throwable localThrowable = paramThrowable; localThrowable != null; localThrowable = localThrowable.getCause())
      {
        StackTraceElement[] arrayOfStackTraceElement = localThrowable.getStackTrace();
        int m = arrayOfStackTraceElement.length;
        i = 0;
        while (i < m)
        {
          StackTraceElement localStackTraceElement = arrayOfStackTraceElement[i];
          if (a(localStackTraceElement.getClassName())) {
            k = 1;
          }
          if (getClass().getName().equals(localStackTraceElement.getClassName())) {
            j = 1;
          }
          i += 1;
        }
      }
      if ((k != 0) && (j == 0))
      {
        i = 1;
        if (i == 0) {
          break label140;
        }
        if (Looper.getMainLooper().getThread() == paramThread) {
          break label134;
        }
        a(paramThrowable, true);
      }
    }
    label134:
    label140:
    do
    {
      return;
      i = 0;
      break;
      a(paramThrowable, false);
      if (a != null)
      {
        a.uncaughtException(paramThread, paramThrowable);
        return;
      }
    } while (b == null);
    b.uncaughtException(paramThread, paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */