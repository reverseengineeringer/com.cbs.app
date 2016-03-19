package com.conviva;

import com.conviva.session.SessionFactory;
import com.conviva.utils.PlatformUtils;
import java.util.concurrent.Callable;

final class LivePass$2
  implements Callable<Void>
{
  public final Void call()
  {
    if (LivePass.access$400() != null) {
      LivePass.access$400().cleanup();
    }
    LivePass.access$402(null);
    LivePass.access$602(-1);
    if (LivePass.access$300() != null) {
      LivePass.access$300().cleanup();
    }
    LivePass.access$302(null);
    LivePass.access$502(Boolean.valueOf(false));
    return null;
  }
}

/* Location:
 * Qualified Name:     com.conviva.LivePass.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */