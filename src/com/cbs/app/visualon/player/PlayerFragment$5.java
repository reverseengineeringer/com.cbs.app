package com.cbs.app.visualon.player;

import android.support.v7.app.MediaRouteButton;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.libraries.cast.companionlibrary.cast.a.d;

final class PlayerFragment$5
  extends d
{
  PlayerFragment$5(PlayerFragment paramPlayerFragment, boolean paramBoolean) {}
  
  public final void a(ApplicationMetadata paramApplicationMetadata, String paramString, boolean paramBoolean)
  {
    super.a(paramApplicationMetadata, paramString, paramBoolean);
    if (b.isAdded()) {
      PlayerFragment.g(b);
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    int i = 8;
    super.a(paramBoolean);
    if (b.isAdded())
    {
      boolean bool1 = CBSPlayer.y();
      boolean bool2 = CBSPlayer.i();
      PlayerFragment.a();
      if ((a) || ((bool1 | bool2)))
      {
        MediaRouteButton localMediaRouteButton = PlayerFragment.b(b);
        if (paramBoolean) {
          i = 0;
        }
        localMediaRouteButton.setVisibility(i);
      }
    }
    else
    {
      return;
    }
    PlayerFragment.b(b).setVisibility(8);
  }
  
  public final void b(String paramString)
  {
    super.b(paramString);
    if (b.isAdded()) {
      PlayerFragment.b(b).setVisibility(8);
    }
  }
  
  public final void c(int paramInt)
  {
    super.c(paramInt);
    PlayerFragment.a();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.PlayerFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */