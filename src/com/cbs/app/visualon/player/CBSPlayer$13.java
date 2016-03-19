package com.cbs.app.visualon.player;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.view.NavigationActivity;
import java.util.Date;

final class CBSPlayer$13
  implements View.OnClickListener
{
  CBSPlayer$13(Context paramContext) {}
  
  public final void onClick(View paramView)
  {
    CBSPlayer.b(new Date(System.currentTimeMillis()));
    if (CBSPlayer.E() == null) {
      return;
    }
    new StringBuilder("onClick m_ibVideoExpand isFullScreen = ").append(CBSPlayer.aw());
    if (CBSPlayer.ax())
    {
      CBSPlayer.t();
      return;
    }
    if (CBSPlayer.aw())
    {
      CBSPlayer.a(false);
      CBSPlayer.g(false);
      return;
    }
    if ((a instanceof NavigationActivity)) {
      ((NavigationActivity)a).i();
    }
    CBSPlayer.a(true);
    CBSPlayer.g(true);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.CBSPlayer.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */