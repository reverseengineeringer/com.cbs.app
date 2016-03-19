package com.cbs.app.visualon.player;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.LinearLayout;

final class CBSPlayer$14
  implements View.OnTouchListener
{
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      if (CBSPlayer.ay().getVisibility() == 0) {
        break label21;
      }
      CBSPlayer.o();
    }
    for (;;)
    {
      return true;
      label21:
      CBSPlayer.q();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.CBSPlayer.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */