package com.conviva;

import com.conviva.session.SessionFactory;
import java.util.concurrent.Callable;

final class LivePass$8
  implements Callable<Void>
{
  LivePass$8(int paramInt) {}
  
  public final Void call()
  {
    LivePass.access$400().cleanupSession(val$sessionId);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.conviva.LivePass.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */