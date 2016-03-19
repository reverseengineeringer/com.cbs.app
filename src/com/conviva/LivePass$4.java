package com.conviva;

import com.conviva.session.Session;
import com.conviva.session.SessionFactory;
import java.util.concurrent.Callable;

final class LivePass$4
  implements Callable<Void>
{
  LivePass$4(int paramInt1, int paramInt2) {}
  
  public final Void call()
  {
    LivePass.access$400().getSession(val$sessionId).setBitrate(val$bitrateKbps);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.conviva.LivePass.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */