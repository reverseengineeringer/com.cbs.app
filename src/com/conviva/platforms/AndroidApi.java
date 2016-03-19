package com.conviva.platforms;

import java.util.TimerTask;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class AndroidApi
  implements PlatformApi
{
  private ScheduledThreadPoolExecutor _pool = new ScheduledThreadPoolExecutor(2);
  private ScheduledFuture<?> _scheduledPollTask;
  private ScheduledFuture<?> _scheduledTask;
  
  public AndroidApi(Object paramObject) {}
  
  public void cleanup()
  {
    if (_scheduledTask != null) {
      _scheduledTask.cancel(false);
    }
    if (_scheduledPollTask != null) {
      _scheduledPollTask.cancel(false);
    }
  }
  
  public void createPollTask(TimerTask paramTimerTask, int paramInt)
  {
    if (_scheduledPollTask != null) {
      _scheduledPollTask.cancel(false);
    }
    _scheduledPollTask = _pool.scheduleAtFixedRate(paramTimerTask, 0L, paramInt, TimeUnit.MILLISECONDS);
  }
  
  public void createTimer(TimerTask paramTimerTask, int paramInt1, int paramInt2, String paramString)
  {
    if (_scheduledTask != null) {
      _scheduledTask.cancel(false);
    }
    _scheduledTask = _pool.scheduleAtFixedRate(paramTimerTask, paramInt1, paramInt2, TimeUnit.MILLISECONDS);
  }
}

/* Location:
 * Qualified Name:     com.conviva.platforms.AndroidApi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */