package com.cbs.app.cast;

import android.os.Handler;
import java.util.TimerTask;

final class TestSeekbarFragment$3
  extends TimerTask
{
  TestSeekbarFragment$3(TestSeekbarFragment paramTestSeekbarFragment) {}
  
  public final void run()
  {
    if (a.b % 6 == 0) {
      a.a.sendEmptyMessage(2);
    }
    for (;;)
    {
      TestSeekbarFragment localTestSeekbarFragment = a;
      b += 1;
      return;
      a.a.sendEmptyMessage(3);
      a.a.sendEmptyMessage(1);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.TestSeekbarFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */