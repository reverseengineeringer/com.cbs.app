package com.comscore.utils;

import com.comscore.b.d;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;

public final class f
  implements Thread.UncaughtExceptionHandler
{
  private Thread.UncaughtExceptionHandler a = Thread.getDefaultUncaughtExceptionHandler();
  private com.comscore.a.b b;
  
  public f(com.comscore.a.b paramb)
  {
    b = paramb;
  }
  
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    StackTraceElement[] arrayOfStackTraceElement = paramThrowable.getStackTrace();
    Object localObject1 = "";
    int i = 0;
    if ((i < arrayOfStackTraceElement.length) && (i < 5))
    {
      localObject2 = arrayOfStackTraceElement[i];
      localObject2 = ((StackTraceElement)localObject2).getFileName() + "@" + ((StackTraceElement)localObject2).getLineNumber() + "|" + ((StackTraceElement)localObject2).getClassName() + "." + ((StackTraceElement)localObject2).getMethodName();
      if (((String)localObject1).equals("")) {}
      for (localObject1 = localObject2;; localObject1 = (String)localObject1 + ";" + (String)localObject2)
      {
        i += 1;
        break;
      }
    }
    Object localObject2 = new HashMap();
    if (!((String)localObject1).equals("")) {}
    try
    {
      ((HashMap)localObject2).put("ns_ap_uxc", URLEncoder.encode((String)localObject1, "UTF-8"));
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException1)
    {
      try
      {
        for (;;)
        {
          ((HashMap)localObject2).put("ns_ap_uxs", URLEncoder.encode(paramThrowable.toString(), "UTF-8"));
          b.f().a(d.e, (HashMap)localObject2);
          a.uncaughtException(paramThread, paramThrowable);
          return;
          localUnsupportedEncodingException1 = localUnsupportedEncodingException1;
          b.b(this, "Error encoding the URL (ns_ap_uxc)");
          b.a(localUnsupportedEncodingException1);
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException2)
      {
        for (;;)
        {
          b.b(this, "Error encoding the URL (ns_ap_uxs)");
          b.a(localUnsupportedEncodingException2);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */