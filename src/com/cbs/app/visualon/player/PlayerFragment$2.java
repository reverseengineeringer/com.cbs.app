package com.cbs.app.visualon.player;

import android.os.Handler;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import com.cbs.app.view.utils.Util;
import com.google.android.libraries.cast.companionlibrary.cast.c;

final class PlayerFragment$2
  implements SurfaceHolder.Callback
{
  PlayerFragment$2(PlayerFragment paramPlayerFragment) {}
  
  public final void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    PlayerFragment.a();
    if (PlayerFragment.c(a))
    {
      boolean bool = false;
      if (Util.H(PlayerFragment.a(a))) {
        bool = c.B().j();
      }
      if (!bool) {
        new Handler().postDelayed(new Runnable()
        {
          public final void run()
          {
            PlayerFragment.d(a);
          }
        }, 100L);
      }
    }
    PlayerFragment.a(a, true);
  }
  
  public final void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    PlayerFragment.a();
    PlayerFragment.a(a, false);
    CBSPlayer.f();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.PlayerFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */