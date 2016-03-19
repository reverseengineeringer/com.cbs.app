package com.adobe.mobile;

import java.util.TimerTask;

public final class g$b
  extends TimerTask
{
  private boolean b = false;
  
  g$b(g paramg, boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public final void run()
  {
    ai.a(true);
    am.c("Analytics - Referrer timeout has expired without referrer data", new Object[0]);
    a.a(b);
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.g.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */