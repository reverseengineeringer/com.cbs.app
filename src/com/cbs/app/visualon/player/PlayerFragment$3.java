package com.cbs.app.visualon.player;

import android.os.Handler;
import com.cbs.app.livetv.callbacks.SyncbakCallback;
import com.cbs.app.view.model.syncbak.SyncbakStream;

final class PlayerFragment$3
  extends SyncbakCallback
{
  PlayerFragment$3(PlayerFragment paramPlayerFragment) {}
  
  public final void a(int paramInt, String paramString)
  {
    PlayerFragment.e(a);
  }
  
  public final void a(SyncbakStream paramSyncbakStream)
  {
    PlayerFragment.e(a);
    PlayerFragment.a(a, paramSyncbakStream);
    if (PlayerFragment.f(a)) {
      new Handler().postDelayed(new Runnable()
      {
        public final void run()
        {
          PlayerFragment.d(a);
        }
      }, 100L);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.PlayerFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */