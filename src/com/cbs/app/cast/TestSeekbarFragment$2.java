package com.cbs.app.cast;

import android.os.Handler;
import android.os.Message;

final class TestSeekbarFragment$2
  extends Handler
{
  TestSeekbarFragment$2(TestSeekbarFragment paramTestSeekbarFragment) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    new StringBuilder("handleMessage: ").append(what);
    if (TestSeekbarFragment.a(a) != null) {}
    switch (what)
    {
    default: 
      return;
    case 1: 
      int i = (int)Math.round(TestSeekbarFragment.a(a).getProgress() + TestSeekbarFragment.a(a).getMax() * 0.1D);
      if (i < TestSeekbarFragment.a(a).getMax())
      {
        TestSeekbarFragment.a(a).setProgress(i);
        return;
      }
      TestSeekbarFragment.a(a).setProgress(0);
      return;
    case 2: 
      TestSeekbarFragment.a(a).setEnabled(false);
      return;
    }
    TestSeekbarFragment.a(a).setEnabled(true);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.TestSeekbarFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */