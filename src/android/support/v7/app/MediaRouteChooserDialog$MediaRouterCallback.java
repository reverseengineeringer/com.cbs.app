package android.support.v7.app;

import android.support.v7.media.MediaRouter;
import android.support.v7.media.MediaRouter.Callback;
import android.support.v7.media.MediaRouter.RouteInfo;

final class MediaRouteChooserDialog$MediaRouterCallback
  extends MediaRouter.Callback
{
  private MediaRouteChooserDialog$MediaRouterCallback(MediaRouteChooserDialog paramMediaRouteChooserDialog) {}
  
  public final void onRouteAdded(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
  {
    this$0.refreshRoutes();
  }
  
  public final void onRouteChanged(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
  {
    this$0.refreshRoutes();
  }
  
  public final void onRouteRemoved(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
  {
    this$0.refreshRoutes();
  }
  
  public final void onRouteSelected(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
  {
    this$0.dismiss();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.MediaRouteChooserDialog.MediaRouterCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */