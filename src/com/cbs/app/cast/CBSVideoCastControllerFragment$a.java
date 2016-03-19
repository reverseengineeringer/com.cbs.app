package com.cbs.app.cast;

import android.os.Handler;
import com.google.android.libraries.cast.companionlibrary.cast.player.a;
import com.google.android.libraries.cast.companionlibrary.cast.player.d;
import java.util.TimerTask;

final class CBSVideoCastControllerFragment$a
  extends TimerTask
{
  private final Thread b;
  
  public CBSVideoCastControllerFragment$a(CBSVideoCastControllerFragment paramCBSVideoCastControllerFragment, Thread paramThread)
  {
    b = paramThread;
  }
  
  public final void run()
  {
    if (b != null)
    {
      com.google.android.libraries.cast.companionlibrary.a.b.a("Timer is expired, going to interrupt the thread");
      b.interrupt();
      CBSVideoCastControllerFragment.f(a).post(new Runnable()
      {
        public final void run()
        {
          CBSVideoCastControllerFragment.b(a).b(false);
          CBSVideoCastControllerFragment.a(a, a.getString(2131230897));
          a.a = false;
          if ((CBSVideoCastControllerFragment.e(a) != null) && (CBSVideoCastControllerFragment.e(a).c() == com.google.android.libraries.cast.companionlibrary.cast.player.b.b))
          {
            CBSVideoCastControllerFragment.e(a);
            com.google.android.libraries.cast.companionlibrary.cast.player.b localb = com.google.android.libraries.cast.companionlibrary.cast.player.b.f;
          }
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.CBSVideoCastControllerFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */