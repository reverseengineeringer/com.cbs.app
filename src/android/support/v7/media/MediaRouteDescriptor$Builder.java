package android.support.v7.media;

import android.content.IntentFilter;
import android.content.IntentSender;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class MediaRouteDescriptor$Builder
{
  private final Bundle mBundle;
  private ArrayList<IntentFilter> mControlFilters;
  
  public MediaRouteDescriptor$Builder(MediaRouteDescriptor paramMediaRouteDescriptor)
  {
    if (paramMediaRouteDescriptor == null) {
      throw new IllegalArgumentException("descriptor must not be null");
    }
    mBundle = new Bundle(MediaRouteDescriptor.access$000(paramMediaRouteDescriptor));
    MediaRouteDescriptor.access$100(paramMediaRouteDescriptor);
    if (!MediaRouteDescriptor.access$200(paramMediaRouteDescriptor).isEmpty()) {
      mControlFilters = new ArrayList(MediaRouteDescriptor.access$200(paramMediaRouteDescriptor));
    }
  }
  
  public MediaRouteDescriptor$Builder(String paramString1, String paramString2)
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

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteDescriptor.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */