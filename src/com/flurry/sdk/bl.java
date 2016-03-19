package com.flurry.sdk;

import java.util.concurrent.ThreadFactory;

public final class bl
  implements ThreadFactory
{
  private final ThreadGroup a;
  private final int b;
  
  public bl(String paramString)
  {
    a = new ThreadGroup(paramString);
    b = 1;
  }
  
  public final Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(a, paramRunnable);
    paramRunnable.setName(a.getName() + ":" + paramRunnable.getId());
    paramRunnable.setPriority(b);
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */