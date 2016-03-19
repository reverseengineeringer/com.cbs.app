package android.support.v7.app;

import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaControllerCompat.Callback;
import android.support.v4.media.session.PlaybackStateCompat;

final class MediaRouteControllerDialog$MediaControllerCallback
  extends MediaControllerCompat.Callback
{
  private MediaRouteControllerDialog$MediaControllerCallback(MediaRouteControllerDialog paramMediaRouteControllerDialog) {}
  
  public final void onMetadataChanged(MediaMetadataCompat paramMediaMetadataCompat)
  {
    MediaRouteControllerDialog localMediaRouteControllerDialog = this$0;
    if (paramMediaMetadataCompat == null) {}
    for (paramMediaMetadataCompat = null;; paramMediaMetadataCompat = paramMediaMetadataCompat.getDescription())
    {
      MediaRouteControllerDialog.access$1102(localMediaRouteControllerDialog, paramMediaMetadataCompat);
      MediaRouteControllerDialog.access$700(this$0);
      return;
    }
  }
  
  public final void onPlaybackStateChanged(PlaybackStateCompat paramPlaybackStateCompat)
  {
    MediaRouteControllerDialog.access$1002(this$0, paramPlaybackStateCompat);
    MediaRouteControllerDialog.access$700(this$0);
  }
  
  public final void onSessionDestroyed()
  {
    if (MediaRouteControllerDialog.access$800(this$0) != null)
    {
      MediaRouteControllerDialog.access$800(this$0).unregisterCallback(MediaRouteControllerDialog.access$900(this$0));
      MediaRouteControllerDialog.access$802(this$0, null);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.MediaRouteControllerDialog.MediaControllerCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */