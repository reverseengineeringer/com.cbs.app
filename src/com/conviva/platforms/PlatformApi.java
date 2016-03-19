package com.conviva.platforms;

import java.util.TimerTask;

public abstract interface PlatformApi
{
  public abstract void cleanup();
  
  public abstract void createPollTask(TimerTask paramTimerTask, int paramInt);
  
  public abstract void createTimer(TimerTask paramTimerTask, int paramInt1, int paramInt2, String paramString);
}

/* Location:
 * Qualified Name:     com.conviva.platforms.PlatformApi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */