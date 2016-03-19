package android.support.v7.media;

import android.os.Bundle;

public final class MediaRouteDiscoveryRequest
{
  private static final String KEY_ACTIVE_SCAN = "activeScan";
  private static final String KEY_SELECTOR = "selector";
  private final Bundle mBundle;
  private MediaRouteSelector mSelector;
  
  private MediaRouteDiscoveryRequest(Bundle paramBundle)
  {
    mBundle = paramBundle;
  }
  
  public MediaRouteDiscoveryRequest(MediaRouteSelector paramMediaRouteSelector, boolean paramBoolean)
  {
    if (paramMediaRouteSelector == null) {
      throw new IllegalArgumentException("selector must not be null");
    }
    mBundle = new Bundle();
    mSelector = paramMediaRouteSelector;
    mBundle.putBundle("selector", paramMediaRouteSelector.asBundle());
    mBundle.putBoolean("activeScan", paramBoolean);
  }
  
  private void ensureSelector()
  {
    if (mSelector == null)
    {
      mSelector = MediaRouteSelector.fromBundle(mBundle.getBundle("selector"));
      if (mSelector == null) {
        mSelector = MediaRouteSelector.EMPTY;
      }
    }
  }
  
  public static MediaRouteDiscoveryRequest fromBundle(Bundle paramBundle)
  {
    if (paramBundle != null) {
      return new MediaRouteDiscoveryRequest(paramBundle);
    }
    return null;
  }
  
  public final Bundle asBundle()
  {
    return mBundle;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof MediaRouteDiscoveryRequest))
    {
      paramObject = (MediaRouteDiscoveryRequest)paramObject;
      bool1 = bool2;
      if (getSelector().equals(((MediaRouteDiscoveryRequest)paramObject).getSelector()))
      {
        bool1 = bool2;
        if (isActiveScan() == ((MediaRouteDiscoveryRequest)paramObject).isActiveScan()) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public final MediaRouteSelector getSelector()
  {
    ensureSelector();
    return mSelector;
  }
  
  public final int hashCode()
  {
    int j = getSelector().hashCode();
    if (isActiveScan()) {}
    for (int i = 1;; i = 0) {
      return i ^ j;
    }
  }
  
  public final boolean isActiveScan()
  {
    return mBundle.getBoolean("activeScan");
  }
  
  public final boolean isValid()
  {
    ensureSelector();
    return mSelector.isValid();
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("DiscoveryRequest{ selector=").append(getSelector());
    localStringBuilder.append(", activeScan=").append(isActiveScan());
    localStringBuilder.append(", isValid=").append(isValid());
    localStringBuilder.append(" }");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteDiscoveryRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */