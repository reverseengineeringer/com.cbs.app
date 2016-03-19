package com.cbs.app.livetv.controllers;

import android.os.Handler;
import android.os.Message;

final class MVPDController$2
  extends Handler
{
  MVPDController$2(MVPDController paramMVPDController) {}
  
  public final void handleMessage(Message paramMessage)
  {
    if (!MVPDController.d(a)) {
      sendEmptyMessageDelayed(0, 10000L);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.controllers.MVPDController.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */