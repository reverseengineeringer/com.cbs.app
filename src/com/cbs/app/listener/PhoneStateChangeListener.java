package com.cbs.app.listener;

import android.telephony.PhoneStateListener;
import com.cbs.app.visualon.player.CBSPlayer;

public class PhoneStateChangeListener
  extends PhoneStateListener
{
  public static final String a = PhoneStateChangeListener.class.getSimpleName();
  private static boolean b;
  
  public void onCallStateChanged(int paramInt, String paramString)
  {
    switch (paramInt)
    {
    default: 
    case 1: 
      do
      {
        return;
        b = true;
      } while (!CBSPlayer.b());
      CBSPlayer.t();
      return;
    case 2: 
      b = true;
      return;
    }
    b = true;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.listener.PhoneStateChangeListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */