package com.cbs.app.visualon.player;

import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import java.util.Date;

final class CBSPlayer$9
  extends Handler
{
  public final void handleMessage(Message paramMessage)
  {
    if (what == CBSPlayer.an())
    {
      CBSPlayer.l();
      CBSPlayer.m();
    }
    do
    {
      do
      {
        do
        {
          return;
        } while (CBSPlayer.E() == null);
        if (what == CBSPlayer.ao())
        {
          CBSPlayer.p();
          return;
        }
        if (what == CBSPlayer.ap())
        {
          CBSPlayer.r();
          return;
        }
        if (what == CBSPlayer.aq())
        {
          CBSPlayer.P();
          return;
        }
        if (what == CBSPlayer.L())
        {
          CBSPlayer.t();
          CBSPlayer.b(CBSPlayer.H());
          return;
        }
        if (what != CBSPlayer.ag()) {
          break;
        }
      } while (CBSPlayer.aa() == null);
      CBSPlayer.a(new Date(System.currentTimeMillis()));
      return;
      if (what == CBSPlayer.ad())
      {
        CBSPlayer.ar().setVisibility(8);
        CBSPlayer.as().setVisibility(8);
        return;
      }
    } while (what != CBSPlayer.am());
    CBSPlayer.P();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.CBSPlayer.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */