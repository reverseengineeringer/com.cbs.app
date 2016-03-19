package android.support.v4.media;

import android.support.v4.util.ArrayMap;
import java.util.HashSet;

class MediaBrowserServiceCompat$ServiceBinder$4
  implements Runnable
{
  MediaBrowserServiceCompat$ServiceBinder$4(MediaBrowserServiceCompat.ServiceBinder paramServiceBinder, IMediaBrowserServiceCompatCallbacks paramIMediaBrowserServiceCompatCallbacks, String paramString) {}
  
  public void run()
  {
    Object localObject = val$callbacks.asBinder();
    localObject = (MediaBrowserServiceCompat.ConnectionRecord)MediaBrowserServiceCompat.access$100(this$1.this$0).get(localObject);
    if (localObject == null) {
      new StringBuilder("removeSubscription for callback that isn't registered id=").append(val$id);
    }
    while (subscriptions.remove(val$id)) {
      return;
    }
    new StringBuilder("removeSubscription called for ").append(val$id).append(" which is not subscribed");
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaBrowserServiceCompat.ServiceBinder.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */