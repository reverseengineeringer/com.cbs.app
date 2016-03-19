package android.support.v7.app;

import android.support.v7.media.MediaRouter;
import android.support.v7.media.MediaRouter.Callback;
import android.support.v7.media.MediaRouter.RouteInfo;

final class MediaRouteControllerDialog$MediaRouterCallback
  extends MediaRouter.Callback
{
  private MediaRouteControllerDialog$MediaRouterCallback(MediaRouteControllerDialog paramMediaRouteControllerDialog) {}
  
  public final void onRouteChanged(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
  {
    MediaRouteControllerDialog.access$700(this$0);
  }
  
  public final void onRouteUnselected(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
  {
    MediaRouteControllerDialog.access$700(this$0);
  }
  
  public final void onRouteVolumeChanged(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
  {
    if (paramRouteInfo == MediaRouteControllerDialog.access$600(this$0)) {
      MediaRouteControllerDialog.access$400(this$0);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.MediaRouteControllerDialog.MediaRouterCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */