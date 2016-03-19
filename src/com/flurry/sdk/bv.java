package com.flurry.sdk;

public class bv
  implements ap, bk.a, Thread.UncaughtExceptionHandler
{
  private static final String a = bv.class.getSimpleName();
  private boolean b;
  
  public final void a(String paramString, Object paramObject)
  {
    if (paramString.equals("CaptureUncaughtExceptions"))
    {
      b = ((Boolean)paramObject).booleanValue();
      am.a(4, a, "onSettingUpdate, CrashReportingEnabled = " + b);
      return;
    }
    am.a(6, a, "onSettingUpdate internal error!");
  }
  
  public final void b()
  {
    bj localbj = bj.a();
    b = ((Boolean)localbj.a("CaptureUncaughtExceptions")).booleanValue();
    localbj.a("CaptureUncaughtExceptions", this);
    am.a(4, a, "initSettings, CrashReportingEnabled = " + b);
    bw.a().a(this);
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    paramThrowable.printStackTrace();
    if (b)
    {
      paramThread = "";
      StackTraceElement[] arrayOfStackTraceElement = paramThrowable.getStackTrace();
      if ((arrayOfStackTraceElement == null) || (arrayOfStackTraceElement.length <= 0)) {
        break label100;
      }
      paramThread = new StringBuilder();
      if (paramThrowable.getMessage() != null) {
        paramThread.append(" (" + paramThrowable.getMessage() + ")\n");
      }
      paramThread = paramThread.toString();
    }
    for (;;)
    {
      a.a().a("uncaught", paramThread, paramThrowable);
      bf.a().d();
      r.a().c();
      return;
      label100:
      if (paramThrowable.getMessage() != null) {
        paramThread = paramThrowable.getMessage();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */