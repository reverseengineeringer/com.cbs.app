package com.conviva;

import com.conviva.monitor.PlayerStates;
import com.conviva.session.SessionFactory;
import com.conviva.utils.PlatformUtils;
import com.conviva.utils.Settings;
import java.util.concurrent.Callable;

final class LivePass$1
  implements Callable<Void>
{
  public final Void call()
  {
    if (LivePass.access$000().booleanValue()) {
      access$100enableLogging = LivePass.access$200().booleanValue();
    }
    LivePass.access$300().log("LivePass.init url=" + access$100gatewayUrl + ", customerKey=" + access$100customerKey);
    PlayerStates.init();
    LivePass.access$402(new SessionFactory());
    LivePass.access$502(Boolean.valueOf(true));
    return null;
  }
}

/* Location:
 * Qualified Name:     com.conviva.LivePass.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */