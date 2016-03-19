package android.support.v7.media;

import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.MediaSessionCompat.OnActiveChangeListener;

class MediaRouter$GlobalMediaRouter$1
  implements MediaSessionCompat.OnActiveChangeListener
{
  MediaRouter$GlobalMediaRouter$1(MediaRouter.GlobalMediaRouter paramGlobalMediaRouter) {}
  
  public void onActiveChanged()
  {
    if (MediaRouter.GlobalMediaRouter.access$300(this$0) != null)
    {
      if (MediaRouter.GlobalMediaRouter.access$300(this$0).isActive()) {
        this$0.addRemoteControlClient(MediaRouter.GlobalMediaRouter.access$300(this$0).getRemoteControlClient());
      }
    }
    else {
      return;
    }
    this$0.removeRemoteControlClient(MediaRouter.GlobalMediaRouter.access$300(this$0).getRemoteControlClient());
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouter.GlobalMediaRouter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */