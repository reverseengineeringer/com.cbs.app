package com.cbs.app.player;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class SimplePlayerActivity$1
  implements View.OnTouchListener
{
  SimplePlayerActivity$1(SimplePlayerActivity paramSimplePlayerActivity) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (!a.isFinishing()) {
      SimplePlayerActivity.a(a);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.player.SimplePlayerActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */