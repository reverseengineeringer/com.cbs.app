package android.support.v7.media;

import android.content.ContentResolver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.os.Bundle;
import android.view.Display;
import java.util.ArrayList;
import java.util.List;

public final class MediaRouter$RouteInfo
{
  static final int CHANGE_GENERAL = 1;
  static final int CHANGE_PRESENTATION_DISPLAY = 4;
  static final int CHANGE_VOLUME = 2;
  public static final int PLAYBACK_TYPE_LOCAL = 0;
  public static final int PLAYBACK_TYPE_REMOTE = 1;
  public static final int PLAYBACK_VOLUME_FIXED = 0;
  public static final int PLAYBACK_VOLUME_VARIABLE = 1;
  private boolean mCanDisconnect;
  private boolean mConnecting;
  private final ArrayList<IntentFilter> mControlFilters = new ArrayList();
  private String mDescription;
  private MediaRouteDescriptor mDescriptor;
  private final String mDescriptorId;
  private boolean mEnabled;
  private Bundle mExtras;
  private String mName;
  private int mPlaybackStream;
  private int mPlaybackType;
  private Display mPresentationDisplay;
  private int mPresentationDisplayId = -1;
  private final MediaRouter.ProviderInfo mProvider;
  private IntentSender mSettingsIntent;
  private final String mUniqueId;
  private int mVolume;
  private int mVolumeHandling;
  private int mVolumeMax;
  
  MediaRouter$RouteInfo(MediaRouter.ProviderInfo paramProviderInfo, String paramString1, String paramString2)
  {
    mProvider = paramProviderInfo;
    mDescriptorId = paramString1;
    mUniqueId = paramString2;
  }
  
  public final boolean canDisconnect()
  {
    return mCanDisconnect;
  }
  
  public final List<IntentFilter> getControlFilters()
  {
    return mControlFilters;
  }
  
  public final String getDescription()
  {
    return mDescription;
  }
  
  final String getDescriptorId()
  {
    return mDescriptorId;
  }
  
  public final Bundle getExtras()
  {
    return mExtras;
  }
  
  public final String getId()
  {
    return mUniqueId;
  }
  
  public final String getName()
  {
    return mName;
  }
  
  public final int getPlaybackStream()
  {
    return mPlaybackStream;
  }
  
  public final int getPlaybackType()
  {
    return mPlaybackType;
  }
  
  public final Display getPresentationDisplay()
  {
    
    if ((mPresentationDisplayId >= 0) && (mPresentationDisplay == null)) {
      mPresentationDisplay = MediaRouter.sGlobal.getDisplay(mPresentationDisplayId);
    }
    return mPresentationDisplay;
  }
  
  public final MediaRouter.ProviderInfo getProvider()
  {
    return mProvider;
  }
  
  final MediaRouteProvider getProviderInstance()
  {
    return mProvider.getProviderInstance();
  }
  
  public final IntentSender getSettingsIntent()
  {
    return mSettingsIntent;
  }
  
  public final int getVolume()
  {
    return mVolume;
  }
  
  public final int getVolumeHandling()
  {
    return mVolumeHandling;
  }
  
  public final int getVolumeMax()
  {
    return mVolumeMax;
  }
  
  public final boolean isConnecting()
  {
    return mConnecting;
  }
  
  public final boolean isDefault()
  {
    MediaRouter.checkCallingThread();
    return MediaRouter.sGlobal.getDefaultRoute() == this;
  }
  
  public final boolean isEnabled()
  {
    return mEnabled;
  }
  
  public final boolean isSelected()
  {
    MediaRouter.checkCallingThread();
    return MediaRouter.sGlobal.getSelectedRoute() == this;
  }
  
  public final boolean matchesSelector(MediaRouteSelector paramMediaRouteSelector)
  {
    if (paramMediaRouteSelector == null) {
      throw new IllegalArgumentException("selector must not be null");
    }
    MediaRouter.checkCallingThread();
    return paramMediaRouteSelector.matchesControlFilters(mControlFilters);
  }
  
  public final void requestSetVolume(int paramInt)
  {
    MediaRouter.checkCallingThread();
    MediaRouter.sGlobal.requestSetVolume(this, Math.min(mVolumeMax, Math.max(0, paramInt)));
  }
  
  public final void requestUpdateVolume(int paramInt)
  {
    
    if (paramInt != 0) {
      MediaRouter.sGlobal.requestUpdateVolume(this, paramInt);
    }
  }
  
  public final void select()
  {
    MediaRouter.checkCallingThread();
    MediaRouter.sGlobal.selectRoute(this);
  }
  
  public final void sendControlRequest(Intent paramIntent, MediaRouter.ControlRequestCallback paramControlRequestCallback)
  {
    if (paramIntent == null) {
      throw new IllegalArgumentException("intent must not be null");
    }
    MediaRouter.checkCallingThread();
    MediaRouter.sGlobal.sendControlRequest(this, paramIntent, paramControlRequestCallback);
  }
  
  public final boolean supportsControlAction(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new IllegalArgumentException("category must not be null");
    }
    if (paramString2 == null) {
      throw new IllegalArgumentException("action must not be null");
    }
    MediaRouter.checkCallingThread();
    int j = mControlFilters.size();
    int i = 0;
    while (i < j)
    {
      IntentFilter localIntentFilter = (IntentFilter)mControlFilters.get(i);
      if ((localIntentFilter.hasCategory(paramString1)) && (localIntentFilter.hasAction(paramString2))) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public final boolean supportsControlCategory(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("category must not be null");
    }
    MediaRouter.checkCallingThread();
    int j = mControlFilters.size();
    int i = 0;
    while (i < j)
    {
      if (((IntentFilter)mControlFilters.get(i)).hasCategory(paramString)) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public final boolean supportsControlRequest(Intent paramIntent)
  {
    if (paramIntent == null) {
      throw new IllegalArgumentException("intent must not be null");
    }
    MediaRouter.checkCallingThread();
    ContentResolver localContentResolver = MediaRouter.sGlobal.getContentResolver();
    int j = mControlFilters.size();
    int i = 0;
    while (i < j)
    {
      if (((IntentFilter)mControlFilters.get(i)).match(localContentResolver, paramIntent, true, "MediaRouter") >= 0) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public final String toString()
  {
    return "MediaRouter.RouteInfo{ uniqueId=" + mUniqueId + ", name=" + mName + ", description=" + mDescription + ", enabled=" + mEnabled + ", connecting=" + mConnecting + ", canDisconnect=" + mCanDisconnect + ", playbackType=" + mPlaybackType + ", playbackStream=" + mPlaybackStream + ", volumeHandling=" + mVolumeHandling + ", volume=" + mVolume + ", volumeMax=" + mVolumeMax + ", presentationDisplayId=" + mPresentationDisplayId + ", extras=" + mExtras + ", settingsIntent=" + mSettingsIntent + ", providerPackageName=" + mProvider.getPackageName() + " }";
  }
  
  final int updateDescriptor(MediaRouteDescriptor paramMediaRouteDescriptor)
  {
    int j = 1;
    int m = 0;
    int k = 0;
    int i = m;
    if (mDescriptor != paramMediaRouteDescriptor)
    {
      mDescriptor = paramMediaRouteDescriptor;
      i = m;
      if (paramMediaRouteDescriptor != null)
      {
        i = k;
        if (!MediaRouter.equal(mName, paramMediaRouteDescriptor.getName()))
        {
          mName = paramMediaRouteDescriptor.getName();
          i = 1;
        }
        if (!MediaRouter.equal(mDescription, paramMediaRouteDescriptor.getDescription()))
        {
          mDescription = paramMediaRouteDescriptor.getDescription();
          i = 1;
        }
        if (mEnabled == paramMediaRouteDescriptor.isEnabled()) {
          break label403;
        }
        mEnabled = paramMediaRouteDescriptor.isEnabled();
      }
    }
    for (;;)
    {
      i = j;
      if (mConnecting != paramMediaRouteDescriptor.isConnecting())
      {
        mConnecting = paramMediaRouteDescriptor.isConnecting();
        i = j | 0x1;
      }
      j = i;
      if (!mControlFilters.equals(paramMediaRouteDescriptor.getControlFilters()))
      {
        mControlFilters.clear();
        mControlFilters.addAll(paramMediaRouteDescriptor.getControlFilters());
        j = i | 0x1;
      }
      i = j;
      if (mPlaybackType != paramMediaRouteDescriptor.getPlaybackType())
      {
        mPlaybackType = paramMediaRouteDescriptor.getPlaybackType();
        i = j | 0x1;
      }
      j = i;
      if (mPlaybackStream != paramMediaRouteDescriptor.getPlaybackStream())
      {
        mPlaybackStream = paramMediaRouteDescriptor.getPlaybackStream();
        j = i | 0x1;
      }
      i = j;
      if (mVolumeHandling != paramMediaRouteDescriptor.getVolumeHandling())
      {
        mVolumeHandling = paramMediaRouteDescriptor.getVolumeHandling();
        i = j | 0x3;
      }
      j = i;
      if (mVolume != paramMediaRouteDescriptor.getVolume())
      {
        mVolume = paramMediaRouteDescriptor.getVolume();
        j = i | 0x3;
      }
      i = j;
      if (mVolumeMax != paramMediaRouteDescriptor.getVolumeMax())
      {
        mVolumeMax = paramMediaRouteDescriptor.getVolumeMax();
        i = j | 0x3;
      }
      j = i;
      if (mPresentationDisplayId != paramMediaRouteDescriptor.getPresentationDisplayId())
      {
        mPresentationDisplayId = paramMediaRouteDescriptor.getPresentationDisplayId();
        mPresentationDisplay = null;
        j = i | 0x5;
      }
      i = j;
      if (!MediaRouter.equal(mExtras, paramMediaRouteDescriptor.getExtras()))
      {
        mExtras = paramMediaRouteDescriptor.getExtras();
        i = j | 0x1;
      }
      j = i;
      if (!MediaRouter.equal(mSettingsIntent, paramMediaRouteDescriptor.getSettingsActivity()))
      {
        mSettingsIntent = paramMediaRouteDescriptor.getSettingsActivity();
        j = i | 0x1;
      }
      if (mCanDisconnect != paramMediaRouteDescriptor.canDisconnectAndKeepPlaying())
      {
        mCanDisconnect = paramMediaRouteDescriptor.canDisconnectAndKeepPlaying();
        i = j | 0x5;
        return i;
      }
      return j;
      label403:
      j = i;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouter.RouteInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */