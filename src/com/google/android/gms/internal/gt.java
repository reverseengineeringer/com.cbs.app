package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.ads.internal.o;

@fs
public final class gt
  extends Handler
{
  public gt(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    try
    {
      super.handleMessage(paramMessage);
      return;
    }
    catch (Exception paramMessage)
    {
      o.h().a(paramMessage, false);
      throw paramMessage;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */