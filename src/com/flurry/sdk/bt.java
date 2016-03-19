package com.flurry.sdk;

import java.io.PrintStream;
import java.io.PrintWriter;

public abstract class bt
  implements Runnable
{
  private static final String a = bt.class.getSimpleName();
  PrintStream e;
  PrintWriter f;
  
  public abstract void a();
  
  public final void run()
  {
    try
    {
      a();
      return;
    }
    catch (Throwable localThrowable)
    {
      if (e == null) {
        break label33;
      }
    }
    localThrowable.printStackTrace(e);
    for (;;)
    {
      am.a(6, a, "", localThrowable);
      return;
      label33:
      if (f != null) {
        localThrowable.printStackTrace(f);
      } else {
        localThrowable.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */