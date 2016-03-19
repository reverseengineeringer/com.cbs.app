package com.cbs.app.visualon.player;

import android.app.Activity;
import android.support.v7.app.MediaRouteButton;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.utils.Util;

final class PlayerFragment$1
  implements FullScreenButtonListener
{
  PlayerFragment$1(PlayerFragment paramPlayerFragment) {}
  
  public final PlayerRect a(int paramInt)
  {
    PlayerFragment.a();
    PlayerRect localPlayerRect = null;
    if ((PlayerFragment.a(a) instanceof PlayerActivityV2))
    {
      PlayerFragment.a();
      localPlayerRect = new PlayerRect();
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      PlayerFragment.a(a).getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
      a = widthPixels;
      b = heightPixels;
    }
    return localPlayerRect;
  }
  
  public final void a()
  {
    PlayerFragment.a();
    MediaRouteButton localMediaRouteButton;
    if ((a.isAdded()) && (Util.H(PlayerFragment.a(a))) && (PlayerFragment.b(a) != null))
    {
      localMediaRouteButton = PlayerFragment.b(a);
      if (!MainApplication.d()) {
        break label79;
      }
    }
    label79:
    for (int i = 0;; i = 8)
    {
      localMediaRouteButton.setVisibility(i);
      PlayerFragment.a();
      new StringBuilder("castPresent: ").append(MainApplication.d());
      return;
    }
  }
  
  public final void b()
  {
    PlayerFragment.a();
    if ((a.isAdded()) && (Util.H(PlayerFragment.a(a))) && (PlayerFragment.b(a) != null))
    {
      PlayerFragment.b(a).setVisibility(8);
      PlayerFragment.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.PlayerFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */