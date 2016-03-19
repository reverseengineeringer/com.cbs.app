package android.support.v7.media;

import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.util.TimeUtils;

public final class MediaSessionStatus
{
  private static final String KEY_EXTRAS = "extras";
  private static final String KEY_QUEUE_PAUSED = "queuePaused";
  private static final String KEY_SESSION_STATE = "sessionState";
  private static final String KEY_TIMESTAMP = "timestamp";
  public static final int SESSION_STATE_ACTIVE = 0;
  public static final int SESSION_STATE_ENDED = 1;
  public static final int SESSION_STATE_INVALIDATED = 2;
  private final Bundle mBundle;
  
  private MediaSessionStatus(Bundle paramBundle)
  {
    mBundle = paramBundle;
  }
  
  public static MediaSessionStatus fromBundle(Bundle paramBundle)
  {
    if (paramBundle != null) {
      return new MediaSessionStatus(paramBundle);
    }
    return null;
  }
  
  private static String sessionStateToString(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return Integer.toString(paramInt);
    case 0: 
      return "active";
    case 1: 
      return "ended";
    }
    return "invalidated";
  }
  
  public final Bundle asBundle()
  {
    return mBundle;
  }
  
  public final Bundle getExtras()
  {
    return mBundle.getBundle("extras");
  }
  
  public final int getSessionState()
  {
    return mBundle.getInt("sessionState", 2);
  }
  
  public final long getTimestamp()
  {
    return mBundle.getLong("timestamp");
  }
  
  public final boolean isQueuePaused()
  {
    return mBundle.getBoolean("queuePaused");
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("MediaSessionStatus{ ");
    localStringBuilder.append("timestamp=");
    TimeUtils.formatDuration(SystemClock.elapsedRealtime() - getTimestamp(), localStringBuilder);
    localStringBuilder.append(" ms ago");
    localStringBuilder.append(", sessionState=").append(sessionStateToString(getSessionState()));
    localStringBuilder.append(", queuePaused=").append(isQueuePaused());
    localStringBuilder.append(", extras=").append(getExtras());
    localStringBuilder.append(" }");
    return localStringBuilder.toString();
  }
  
  public static final class Builder
  {
    private final Bundle mBundle;
    
    public Builder(int paramInt)
    {
      mBundle = new Bundle();
      setTimestamp(SystemClock.elapsedRealtime());
      setSessionState(paramInt);
    }
    
    public Builder(MediaSessionStatus paramMediaSessionStatus)
    {
      if (paramMediaSessionStatus == null) {
        throw new IllegalArgumentException("status must not be null");
      }
      mBundle = new Bundle(mBundle);
    }
    
    public final MediaSessionStatus build()
    {
      return new MediaSessionStatus(mBundle, null);
    }
    
    public final Builder setExtras(Bundle paramBundle)
    {
      mBundle.putBundle("extras", paramBundle);
      return this;
    }
    
    public final Builder setQueuePaused(boolean paramBoolean)
    {
      mBundle.putBoolean("queuePaused", paramBoolean);
      return this;
    }
    
    public final Builder setSessionState(int paramInt)
    {
      mBundle.putInt("sessionState", paramInt);
      return this;
    }
    
    public final Builder setTimestamp(long paramLong)
    {
      mBundle.putLong("timestamp", paramLong);
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaSessionStatus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */