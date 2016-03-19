package com.cbs.app.visualon.player;

import android.view.View.OnSystemUiVisibilityChangeListener;
import android.widget.LinearLayout;

final class CBSPlayer$15
  implements View.OnSystemUiVisibilityChangeListener
{
  public final void onSystemUiVisibilityChange(int paramInt)
  {
    if ((paramInt == 0) && (CBSPlayer.ay().getVisibility() != 0))
    {
      if (!CBSPlayer.x()) {
        CBSPlayer.j();
      }
      CBSPlayer.o();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.CBSPlayer.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */