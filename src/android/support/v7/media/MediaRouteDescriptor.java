package android.support.v7.media;

import android.content.IntentFilter;
import android.content.IntentSender;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class MediaRouteDescriptor
{
  private static final String KEY_CAN_DISCONNECT = "canDisconnect";
  private static final String KEY_CONNECTING = "connecting";
  private static final String KEY_CONTROL_FILTERS = "controlFilters";
  private static final String KEY_DESCRIPTION = "status";
  private static final String KEY_ENABLED = "enabled";
  private static final String KEY_EXTRAS = "extras";
  private static final String KEY_ID = "id";
  private static final String KEY_NAME = "name";
  private static final String KEY_PLAYBACK_STREAM = "playbackStream";
  private static final String KEY_PLAYBACK_TYPE = "playbackType";
  private static final String KEY_PRESENTATION_DISPLAY_ID = "presentationDisplayId";
  private static final String KEY_SETTINGS_INTENT = "settingsIntent";
  private static final String KEY_VOLUME = "volume";
  private static final String KEY_VOLUME_HANDLING = "volumeHandling";
  private static final String KEY_VOLUME_MAX = "volumeMax";
  private final Bundle mBundle;
  private List<IntentFilter> mControlFilters;
  
  private MediaRouteDescriptor(Bundle paramBundle, List<IntentFilter> paramList)
  {
    mBundle = paramBundle;
    mControlFilters = paramList;
  }
  
  private void ensureControlFilters()
  {
    if (mControlFilters == null)
    {
      mControlFilters = mBundle.getParcelableArrayList("controlFilters");
      if (mControlFilters == null) {
        mControlFilters = Collections.emptyList();
      }
    }
  }
  
  public static MediaRouteDescriptor fromBundle(Bundle paramBundle)
  {
    if (paramBundle != null) {
      return new MediaRouteDescriptor(paramBundle, null);
    }
    return null;
  }
  
  public final Bundle asBundle()
  {
    return mBundle;
  }
  
  public final boolean canDisconnectAndKeepPlaying()
  {
    return mBundle.getBoolean("canDisconnect", false);
  }
  
  public final List<IntentFilter> getControlFilters()
  {
    ensureControlFilters();
    return mControlFilters;
  }
  
  public final String getDescription()
  {
    return mBundle.getString("status");
  }
  
  public final Bundle getExtras()
  {
    return mBundle.getBundle("extras");
  }
  
  public final String getId()
  {
    return mBundle.getString("id");
  }
  
  public final String getName()
  {
    return mBundle.getString("name");
  }
  
  public final int getPlaybackStream()
  {
    return mBundle.getInt("playbackStream", -1);
  }
  
  public final int getPlaybackType()
  {
    return mBundle.getInt("playbackType", 1);
  }
  
  public final int getPresentationDisplayId()
  {
    return mBundle.getInt("presentationDisplayId", -1);
  }
  
  public final IntentSender getSettingsActivity()
  {
    return (IntentSender)mBundle.getParcelable("settingsIntent");
  }
  
  public final int getVolume()
  {
    return mBundle.getInt("volume");
  }
  
  public final int getVolumeHandling()
  {
    return mBundle.getInt("volumeHandling", 0);
  }
  
  public final int getVolumeMax()
  {
    return mBundle.getInt("volumeMax");
  }
  
  public final boolean isConnecting()
  {
    return mBundle.getBoolean("connecting", false);
  }
  
  public final boolean isEnabled()
  {
    return mBundle.getBoolean("enabled", true);
  }
  
  public final boolean isValid()
  {
    ensureControlFilters();
    return (!TextUtils.isEmpty(getId())) && (!TextUtils.isEmpty(getName())) && (!mControlFilters.contains(null));
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("MediaRouteDescriptor{ ");
    localStringBuilder.append("id=").append(getId());
    localStringBuilder.append(", name=").append(getName());
    localStringBuilder.append(", description=").append(getDescription());
    localStringBuilder.append(", isEnabled=").append(isEnabled());
    localStringBuilder.append(", isConnecting=").append(isConnecting());
    localStringBuilder.append(", controlFilters=").append(Arrays.toString(getControlFilters().toArray()));
    localStringBuilder.append(", playbackType=").append(getPlaybackType());
    localStringBuilder.append(", playbackStream=").append(getPlaybackStream());
    localStringBuilder.append(", volume=").append(getVolume());
    localStringBuilder.append(", volumeMax=").append(getVolumeMax());
    localStringBuilder.append(", volumeHandling=").append(getVolumeHandling());
    localStringBuilder.append(", presentationDisplayId=").append(getPresentationDisplayId());
    localStringBuilder.append(", extras=").append(getExtras());
    localStringBuilder.append(", isValid=").append(isValid());
    localStringBuilder.append(" }");
    return localStringBuilder.toString();
  }
  
  public static final class Builder
  {
    private final Bundle mBundle;
    private ArrayList<IntentFilter> mControlFilters;
    
    public Builder(MediaRouteDescriptor paramMediaRouteDescriptor)
    {
      if (paramMediaRouteDescriptor == null) {
        throw new IllegalArgumentException("descriptor must not be null");
      }
      mBundle = new Bundle(mBundle);
      paramMediaRouteDescriptor.ensureControlFilters();
      if (!mControlFilters.isEmpty()) {
        mControlFilters = new ArrayList(mControlFilters);
      }
    }
    
    public Builder(String paramString1, String paramString2)
    {
      mBundle = new Bundle();
      setId(paramString1);
      setName(paramString2);
    }
    
    public final Builder addControlFilter(IntentFilter paramIntentFilter)
    {
      if (paramIntentFilter == null) {
        throw new IllegalArgumentException("filter must not be null");
      }
      if (mControlFilters == null) {
        mControlFilters = new ArrayList();
      }
      if (!mControlFilters.contains(paramIntentFilter)) {
        mControlFilters.add(paramIntentFilter);
      }
      return this;
    }
    
    public final Builder addControlFilters(Collection<IntentFilter> paramCollection)
    {
      if (paramCollection == null) {
        throw new IllegalArgumentException("filters must not be null");
      }
      if (!paramCollection.isEmpty())
      {
        paramCollection = paramCollection.iterator();
        while (paramCollection.hasNext()) {
          addControlFilter((IntentFilter)paramCollection.next());
        }
      }
      return this;
    }
    
    public final MediaRouteDescriptor build()
    {
      if (mControlFilters != null) {
        mBundle.putParcelableArrayList("controlFilters", mControlFilters);
      }
      return new MediaRouteDescriptor(mBundle, mControlFilters, null);
    }
    
    public final Builder setCanDisconnect(boolean paramBoolean)
    {
      mBundle.putBoolean("canDisconnect", paramBoolean);
      return this;
    }
    
    public final Builder setConnecting(boolean paramBoolean)
    {
      mBundle.putBoolean("connecting", paramBoolean);
      return this;
    }
    
    public final Builder setDescription(String paramString)
    {
      mBundle.putString("status", paramString);
      return this;
    }
    
    public final Builder setEnabled(boolean paramBoolean)
    {
      mBundle.putBoolean("enabled", paramBoolean);
      return this;
    }
    
    public final Builder setExtras(Bundle paramBundle)
    {
      mBundle.putBundle("extras", paramBundle);
      return this;
    }
    
    public final Builder setId(String paramString)
    {
      mBundle.putString("id", paramString);
      return this;
    }
    
    public final Builder setName(String paramString)
    {
      mBundle.putString("name", paramString);
      return this;
    }
    
    public final Builder setPlaybackStream(int paramInt)
    {
      mBundle.putInt("playbackStream", paramInt);
      return this;
    }
    
    public final Builder setPlaybackType(int paramInt)
    {
      mBundle.putInt("playbackType", paramInt);
      return this;
    }
    
    public final Builder setPresentationDisplayId(int paramInt)
    {
      mBundle.putInt("presentationDisplayId", paramInt);
      return this;
    }
    
    public final Builder setSettingsActivity(IntentSender paramIntentSender)
    {
      mBundle.putParcelable("settingsIntent", paramIntentSender);
      return this;
    }
    
    public final Builder setVolume(int paramInt)
    {
      mBundle.putInt("volume", paramInt);
      return this;
    }
    
    public final Builder setVolumeHandling(int paramInt)
    {
      mBundle.putInt("volumeHandling", paramInt);
      return this;
    }
    
    public final Builder setVolumeMax(int paramInt)
    {
      mBundle.putInt("volumeMax", paramInt);
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteDescriptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */