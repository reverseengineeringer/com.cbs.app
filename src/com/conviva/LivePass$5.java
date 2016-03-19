package com.conviva;

import com.conviva.session.Session;
import com.conviva.session.SessionFactory;
import java.util.Map;
import java.util.concurrent.Callable;

final class LivePass$5
  implements Callable<Void>
{
  LivePass$5(int paramInt, Map paramMap) {}
  
  public final Void call()
  {
    LivePass.access$400().getSession(val$sessionId).setMetadata(val$localMetadata);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.conviva.LivePass.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */