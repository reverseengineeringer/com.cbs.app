package com.cbs.app.cast;

import com.google.android.libraries.cast.companionlibrary.a.b;
import java.util.TimerTask;

final class ReconnectionService$3
  extends TimerTask
{
  ReconnectionService$3(ReconnectionService paramReconnectionService) {}
  
  public final void run()
  {
    ReconnectionService.a();
    b.a("setUpEndTimer(): stopping ReconnectionService since reached the end of allotted time");
    ReconnectionService.b(a);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.ReconnectionService.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */