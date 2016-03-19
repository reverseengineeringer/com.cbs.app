package android.support.v7.app;

import android.content.IntentSender;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaControllerCompat.TransportControls;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v7.media.MediaRouter;
import android.support.v7.media.MediaRouter.RouteInfo;
import android.support.v7.mediarouter.R.id;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;

final class MediaRouteControllerDialog$ClickListener
  implements View.OnClickListener
{
  private MediaRouteControllerDialog$ClickListener(MediaRouteControllerDialog paramMediaRouteControllerDialog) {}
  
  public final void onClick(View paramView)
  {
    int i = paramView.getId();
    if ((i == R.id.stop) || (i == R.id.disconnect)) {
      if (MediaRouteControllerDialog.access$600(this$0).isSelected())
      {
        paramView = MediaRouteControllerDialog.access$1200(this$0);
        if (i == R.id.stop)
        {
          i = 2;
          paramView.unselect(i);
        }
      }
      else
      {
        this$0.dismiss();
      }
    }
    label136:
    do
    {
      do
      {
        do
        {
          return;
          i = 1;
          break;
          if (i != R.id.play_pause) {
            break label136;
          }
        } while ((MediaRouteControllerDialog.access$800(this$0) == null) || (MediaRouteControllerDialog.access$1000(this$0) == null));
        if (MediaRouteControllerDialog.access$1000(this$0).getState() == 3)
        {
          MediaRouteControllerDialog.access$800(this$0).getTransportControls().pause();
          return;
        }
        MediaRouteControllerDialog.access$800(this$0).getTransportControls().play();
        return;
      } while (i != R.id.settings);
      paramView = MediaRouteControllerDialog.access$600(this$0).getSettingsIntent();
    } while (paramView == null);
    try
    {
      paramView.sendIntent(null, 0, null, null, null);
      this$0.dismiss();
      return;
    }
    catch (Exception paramView)
    {
      Log.e("MediaRouteControllerDialog", "Error opening route settings.", paramView);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.MediaRouteControllerDialog.ClickListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */