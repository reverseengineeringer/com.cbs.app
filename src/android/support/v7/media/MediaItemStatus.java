package android.support.v7.media;

import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.util.TimeUtils;

public final class MediaItemStatus
{
  public static final String EXTRA_HTTP_RESPONSE_HEADERS = "android.media.status.extra.HTTP_RESPONSE_HEADERS";
  public static final String EXTRA_HTTP_STATUS_CODE = "android.media.status.extra.HTTP_STATUS_CODE";
  private static final String KEY_CONTENT_DURATION = "contentDuration";
  private static final String KEY_CONTENT_POSITION = "contentPosition";
  private static final String KEY_EXTRAS = "extras";
  private static final String KEY_PLAYBACK_STATE = "playbackState";
  private static final String KEY_TIMESTAMP = "timestamp";
  public static final int PLAYBACK_STATE_BUFFERING = 3;
  public static final int PLAYBACK_STATE_CANCELED = 5;
  public static final int PLAYBACK_STATE_ERROR = 7;
  public static final int PLAYBACK_STATE_FINISHED = 4;
  public static final int PLAYBACK_STATE_INVALIDATED = 6;
  public static final int PLAYBACK_STATE_PAUSED = 2;
  public static final int PLAYBACK_STATE_PENDING = 0;
  public static final int PLAYBACK_STATE_PLAYING = 1;
  private final Bundle mBundle;
  
  private MediaItemStatus(Bundle paramBundle)
  {
    mBundle = paramBundle;
  }
  
  public static MediaItemStatus fromBundle(Bundle paramBundle)
  {
    if (paramBundle != null) {
      return new MediaItemStatus(paramBundle);
    }
    return null;
  }
  
  private static String playbackStateToString(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return Integer.toString(paramInt);
    case 0: 
      return "pending";
    case 3: 
      return "buffering";
    case 1: 
      return "playing";
    case 2: 
      return "paused";
    case 4: 
      return "finished";
    case 5: 
      return "canceled";
    case 6: 
      return "invalidated";
    }
    return "error";
  }
  
  public final Bundle asBundle()
  {
    return mBundle;
  }
  
  public final long getContentDuration()
  {
    return mBundle.getLong("contentDuration", -1L);
  }
  
  public final long getContentPosition()
  {
    return mBundle.getLong("contentPosition", -1L);
  }
  
  public final Bundle getExtras()
  {
    return mBundle.getBundle("extras");
  }
  
  public final int getPlaybackState()
  {
    return mBundle.getInt("playbackState", 7);
  }
  
  public final long getTimestamp()
  {
    return mBundle.getLong("timestamp");
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("MediaItemStatus{ ");
    localStringBuilder.append("timestamp=");
    TimeUtils.formatDuration(SystemClock.elapsedRealtime() - getTimestamp(), localStringBuilder);
    localStringBuilder.append(" ms ago");
    localStringBuilder.append(", playbackState=").append(playbackStateToString(getPlaybackState()));
    localStringBuilder.append(", contentPosition=").append(getContentPosition());
    localStringBuilder.append(", contentDuration=").append(getContentDuration());
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
      setPlaybackState(paramInt);
    }
    
    public Builder(MediaItemStatus paramMediaItemStatus)
    {
      if (paramMediaItemStatus == null) {
        throw new IllegalArgumentException("status must not be null");
      }
      mBundle = new Bundle(mBundle);
    }
    
    public final MediaItemStatus build()
    {
      return new MediaItemStatus(mBundle, null);
    }
    
    public final Builder setContentDuration(long paramLong)
    {
      mBundle.putLong("contentDuration", paramLong);
      return this;
    }
    
    public final Builder setContentPosition(long paramLong)
    {
      mBundle.putLong("contentPosition", paramLong);
      return this;
    }
    
    public final Builder setExtras(Bundle paramBundle)
    {
      mBundle.putBundle("extras", paramBundle);
      return this;
    }
    
    public final Builder setPlaybackState(int paramInt)
    {
      mBundle.putInt("playbackState", paramInt);
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
 * Qualified Name:     android.support.v7.media.MediaItemStatus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */