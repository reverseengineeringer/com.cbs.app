package android.support.v7.app;

import android.support.v7.media.MediaRouter;
import android.support.v7.media.MediaRouter.Callback;
import android.support.v7.media.MediaRouter.ProviderInfo;
import android.support.v7.media.MediaRouter.RouteInfo;
import java.lang.ref.WeakReference;

final class MediaRouteActionProvider$MediaRouterCallback
  extends MediaRouter.Callback
{
  private final WeakReference<MediaRouteActionProvider> mProviderWeak;
  
  public MediaRouteActionProvider$MediaRouterCallback(MediaRouteActionProvider paramMediaRouteActionProvider)
  {
    mProviderWeak = new WeakReference(paramMediaRouteActionProvider);
  }
  
  private void refreshRoute(MediaRouter paramMediaRouter)
  {
    MediaRouteActionProvider localMediaRouteActionProvider = (MediaRouteActionProvider)mProviderWeak.get();
    if (localMediaRouteActionProvider != null)
    {
      MediaRouteActionProvider.access$000(localMediaRouteActionProvider);
      return;
    }
    paramMediaRouter.removeCallback(this);
  }
  
  public final void onProviderAdded(MediaRouter paramMediaRouter, MediaRouter.ProviderInfo paramProviderInfo)
  {
    refreshRoute(paramMediaRouter);
  }
  
  public final void onProviderChanged(MediaRouter paramMediaRouter, MediaRouter.ProviderInfo paramProviderInfo)
  {
    refreshRoute(paramMediaRouter);
  }
  
  public final void onProviderRemoved(MediaRouter paramMediaRouter, MediaRouter.ProviderInfo paramProviderInfo)
  {
    refreshRoute(paramMediaRouter);
  }
  
  public final void onRouteAdded(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
  {
    refreshRoute(paramMediaRouter);
  }
  
  public final void onRouteChanged(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
  {
    refreshRoute(paramMediaRouter);
  }
  
  public final void onRouteRemoved(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
  {
    refreshRoute(paramMediaRouter);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.MediaRouteActionProvider.MediaRouterCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */