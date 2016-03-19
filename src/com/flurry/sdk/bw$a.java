package com.flurry.sdk;

final class bw$a
  implements Thread.UncaughtExceptionHandler
{
  private bw$a(bw parambw) {}
  
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    bw.a(a, paramThread, paramThrowable);
    bw.b(a, paramThread, paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bw.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */