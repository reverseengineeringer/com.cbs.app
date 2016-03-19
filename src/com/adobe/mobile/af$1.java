package com.adobe.mobile;

import java.io.File;

final class af$1
  implements Runnable
{
  af$1(af paramaf) {}
  
  public final void run()
  {
    if ((af.a(a) == null) || (af.a(a).length() <= 0))
    {
      af.b(a);
      return;
    }
    aj.a(af.a(a), new aj.b()
    {
      public final void a(File paramAnonymousFile)
      {
        a.a(paramAnonymousFile);
        af.b(a);
        af.c(a);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.af.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */