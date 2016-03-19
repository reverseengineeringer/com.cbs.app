package android.support.v7.app;

import android.support.v7.media.MediaRouter.RouteInfo;
import java.util.Comparator;

final class MediaRouteChooserDialog$RouteComparator
  implements Comparator<MediaRouter.RouteInfo>
{
  public static final RouteComparator sInstance = new RouteComparator();
  
  public final int compare(MediaRouter.RouteInfo paramRouteInfo1, MediaRouter.RouteInfo paramRouteInfo2)
  {
    return paramRouteInfo1.getName().compareTo(paramRouteInfo2.getName());
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.MediaRouteChooserDialog.RouteComparator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */