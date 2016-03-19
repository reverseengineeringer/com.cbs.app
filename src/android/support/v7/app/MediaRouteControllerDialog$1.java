package android.support.v7.app;

import android.support.v7.media.MediaRouter.RouteInfo;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;

class MediaRouteControllerDialog$1
  implements SeekBar.OnSeekBarChangeListener
{
  private final Runnable mStopTrackingTouch = new Runnable()
  {
    public void run()
    {
      if (MediaRouteControllerDialog.access$300(this$0))
      {
        MediaRouteControllerDialog.access$302(this$0, false);
        MediaRouteControllerDialog.access$400(this$0);
      }
    }
  };
  
  MediaRouteControllerDialog$1(MediaRouteControllerDialog paramMediaRouteControllerDialog) {}
  
  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {
      MediaRouteControllerDialog.access$600(this$0).requestSetVolume(paramInt);
    }
  }
  
  public void onStartTrackingTouch(SeekBar paramSeekBar)
  {
    if (MediaRouteControllerDialog.access$300(this$0))
    {
      MediaRouteControllerDialog.access$500(this$0).removeCallbacks(mStopTrackingTouch);
      return;
    }
    MediaRouteControllerDialog.access$302(this$0, true);
  }
  
  public void onStopTrackingTouch(SeekBar paramSeekBar)
  {
    MediaRouteControllerDialog.access$500(this$0).postDelayed(mStopTrackingTouch, 250L);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.MediaRouteControllerDialog.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */