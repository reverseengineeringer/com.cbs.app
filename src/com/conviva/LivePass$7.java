package com.conviva;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;

final class LivePass$7
  implements Callable<Void>
{
  LivePass$7(String paramString, Map paramMap) {}
  
  public final Void call()
  {
    if (LivePass.access$600() < 0) {
      LivePass.access$602(LivePass.access$700(null, new ConvivaContentInfo("", new HashMap()), null, true));
    }
    LivePass.sendSessionEvent(LivePass.access$600(), val$name, val$attributes);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.conviva.LivePass.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */