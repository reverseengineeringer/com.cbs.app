package android.support.v4.media;

import android.os.RemoteException;
import android.support.v4.util.ArrayMap;
import java.util.List;

class MediaBrowserServiceCompat$3
  extends MediaBrowserServiceCompat.Result<List<MediaBrowserCompat.MediaItem>>
{
  MediaBrowserServiceCompat$3(MediaBrowserServiceCompat paramMediaBrowserServiceCompat, Object paramObject, String paramString, MediaBrowserServiceCompat.ConnectionRecord paramConnectionRecord)
  {
    super(paramMediaBrowserServiceCompat, paramObject);
  }
  
  void onResultSent(List<MediaBrowserCompat.MediaItem> paramList)
  {
    if (paramList == null) {
      throw new IllegalStateException("onLoadChildren sent null list for id " + val$parentId);
    }
    if (MediaBrowserServiceCompat.access$100(this$0).get(val$connection.callbacks.asBinder()) != val$connection) {
      return;
    }
    try
    {
      val$connection.callbacks.onLoadChildren(val$parentId, paramList);
      return;
    }
    catch (RemoteException paramList)
    {
      new StringBuilder("Calling onLoadChildren() failed for id=").append(val$parentId).append(" package=").append(val$connection.pkg);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaBrowserServiceCompat.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */