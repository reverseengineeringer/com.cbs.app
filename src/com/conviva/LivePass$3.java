package com.conviva;

import com.conviva.session.SessionFactory;
import com.conviva.utils.PlatformUtils;
import java.util.Map;
import java.util.concurrent.Callable;

final class LivePass$3
  implements Callable<Void>
{
  LivePass$3(Object paramObject, ConvivaContentInfo paramConvivaContentInfo, Map paramMap, int paramInt, boolean paramBoolean) {}
  
  public final Void call()
  {
    LivePass.access$400().makeSession(val$streamer, val$contentInfo, val$sessionOptions, val$sid, val$global);
    LivePass.access$300().log("LivePass Session Created");
    return null;
  }
}

/* Location:
 * Qualified Name:     com.conviva.LivePass.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */