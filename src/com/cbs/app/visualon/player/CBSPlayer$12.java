package com.cbs.app.visualon.player;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.Date;

final class CBSPlayer$12
  implements View.OnClickListener
{
  CBSPlayer$12(Context paramContext) {}
  
  public final void onClick(View paramView)
  {
    CBSPlayer.b(new Date(System.currentTimeMillis()));
    if (CBSPlayer.E() == null) {
      return;
    }
    if (CBSPlayer.au())
    {
      if (CBSPlayer.av() == null)
      {
        CBSPlayer.a(a);
        return;
      }
      CBSPlayer.g();
      return;
    }
    if (CBSPlayer.av() == null)
    {
      CBSPlayer.a(a);
      return;
    }
    CBSPlayer.g();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.CBSPlayer.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */