package com.adobe.mobile;

import java.io.File;
import java.util.concurrent.ExecutorService;

final class af$2
  implements aj.b
{
  af$2(af paramaf) {}
  
  public final void a(final File paramFile)
  {
    am.j().execute(new Runnable()
    {
      public final void run()
      {
        if (paramFile != null)
        {
          am.c("Config - Using remote definition for points of interest", new Object[0]);
          a.b(paramFile);
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.af.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */