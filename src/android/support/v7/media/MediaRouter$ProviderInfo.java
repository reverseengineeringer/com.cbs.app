package android.support.v7.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.res.Resources;
import java.util.ArrayList;
import java.util.List;

public final class MediaRouter$ProviderInfo
{
  private MediaRouteProviderDescriptor mDescriptor;
  private final MediaRouteProvider.ProviderMetadata mMetadata;
  private final MediaRouteProvider mProviderInstance;
  private Resources mResources;
  private boolean mResourcesNotAvailable;
  private final ArrayList<MediaRouter.RouteInfo> mRoutes = new ArrayList();
  
  MediaRouter$ProviderInfo(MediaRouteProvider paramMediaRouteProvider)
  {
    mProviderInstance = paramMediaRouteProvider;
    mMetadata = paramMediaRouteProvider.getMetadata();
  }
  
  final int findRouteByDescriptorId(String paramString)
  {
    int j = mRoutes.size();
    int i = 0;
    while (i < j)
    {
      if (MediaRouter.RouteInfo.access$000((MediaRouter.RouteInfo)mRoutes.get(i)).equals(paramString)) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public final ComponentName getComponentName()
  {
    return mMetadata.getComponentName();
  }
  
  public final String getPackageName()
  {
    return mMetadata.getPackageName();
  }
  
  public final MediaRouteProvider getProviderInstance()
  {
    MediaRouter.checkCallingThread();
    return mProviderInstance;
  }
  
  final Resources getResources()
  {
    if ((mResources == null) && (!mResourcesNotAvailable))
    {
      Object localObject = getPackageName();
      localObject = MediaRouter.sGlobal.getProviderContext((String)localObject);
      if (localObject == null) {
        break label44;
      }
      mResources = ((Context)localObject).getResources();
    }
    for (;;)
    {
      return mResources;
      label44:
      mResourcesNotAvailable = true;
    }
  }
  
  public final List<MediaRouter.RouteInfo> getRoutes()
  {
    MediaRouter.checkCallingThread();
    return mRoutes;
  }
  
  public final String toString()
  {
    return "MediaRouter.RouteProviderInfo{ packageName=" + getPackageName() + " }";
  }
  
  final boolean updateDescriptor(MediaRouteProviderDescriptor paramMediaRouteProviderDescriptor)
  {
    if (mDescriptor != paramMediaRouteProviderDescriptor)
    {
      mDescriptor = paramMediaRouteProviderDescriptor;
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouter.ProviderInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */