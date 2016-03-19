package com.conviva;

import com.conviva.monitor.IMonitorNotifier;

public abstract interface ConvivaStreamerProxy
{
  public static final int BOOLEAN_FALSE = -1;
  public static final int BOOLEAN_TRUE = 1;
  public static final int BOOLEAN_UNAVAILABLE = 0;
  public static final String BUFFERING = "BUFFERING";
  public static final int CAPABILITY_BITRATE_EXTERNAL = 16;
  public static final int CAPABILITY_BITRATE_METRICS = 4;
  public static final int CAPABILITY_QUALITY_METRICS = 2;
  public static final int CAPABILITY_VIDEO = 1;
  public static final String ERROR = "ERROR";
  public static final String METADATA_DURATION = "duration";
  public static final String METADATA_ENCODED_FRAMERATE = "framerate";
  public static final String PAUSED = "PAUSED";
  public static final String PLAYING = "PLAYING";
  public static final String STOPPED = "STOPPED";
  public static final String UNKNOWN = "UNKNOWN";
  
  public abstract void Cleanup();
  
  public abstract int GetBufferLengthMs();
  
  public abstract int GetCapabilities();
  
  public abstract int GetDroppedFrames();
  
  public abstract int GetIsLive();
  
  public abstract int GetMinBufferLengthMs();
  
  public abstract int GetPlayheadTimeMs();
  
  public abstract double GetRenderedFrameRate();
  
  public abstract String GetServerAddress();
  
  public abstract int GetStartingBufferLengthMs();
  
  public abstract String GetStreamerType();
  
  public abstract String GetStreamerVersion();
  
  public abstract void setMonitoringNotifier(IMonitorNotifier paramIMonitorNotifier);
}

/* Location:
 * Qualified Name:     com.conviva.ConvivaStreamerProxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */