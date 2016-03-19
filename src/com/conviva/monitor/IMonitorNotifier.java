package com.conviva.monitor;

import com.conviva.StreamerError;
import java.util.Map;

public abstract interface IMonitorNotifier
{
  public abstract void Log(String paramString);
  
  public abstract void OnError(StreamerError paramStreamerError);
  
  public abstract void OnMetadata(Map<String, String> paramMap);
  
  public abstract void SetPlayingState(int paramInt);
  
  public abstract void SetStream(int paramInt, String paramString1, String paramString2);
}

/* Location:
 * Qualified Name:     com.conviva.monitor.IMonitorNotifier
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */