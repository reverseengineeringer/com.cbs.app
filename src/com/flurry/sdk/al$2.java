package com.flurry.sdk;

import java.util.HashMap;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardPolicy;

final class al$2
  extends ThreadPoolExecutor.DiscardPolicy
{
  al$2(al paramal) {}
  
  public final void rejectedExecution(Runnable arg1, final ThreadPoolExecutor paramThreadPoolExecutor)
  {
    super.rejectedExecution(???, paramThreadPoolExecutor);
    paramThreadPoolExecutor = al.a(???);
    if (paramThreadPoolExecutor == null) {
      return;
    }
    synchronized (al.a(a))
    {
      al.a(a).remove(paramThreadPoolExecutor);
      al.a(a, paramThreadPoolExecutor);
      new bt()
      {
        public final void a() {}
      }.run();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.al.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */