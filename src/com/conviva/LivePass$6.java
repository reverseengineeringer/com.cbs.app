package com.conviva;

import com.conviva.session.Session;
import com.conviva.session.SessionFactory;
import java.util.Map;
import java.util.concurrent.Callable;

final class LivePass$6
  implements Callable<Void>
{
  LivePass$6(int paramInt, String paramString, Map paramMap) {}
  
  public final Void call()
  {
    LivePass.access$400().getSession(val$sessionId).sendCustomEvent(val$name, val$eventAttrDictCS);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.conviva.LivePass.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */