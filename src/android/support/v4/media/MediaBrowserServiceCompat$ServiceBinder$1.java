package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.util.ArrayMap;

class MediaBrowserServiceCompat$ServiceBinder$1
  implements Runnable
{
  MediaBrowserServiceCompat$ServiceBinder$1(MediaBrowserServiceCompat.ServiceBinder paramServiceBinder, IMediaBrowserServiceCompatCallbacks paramIMediaBrowserServiceCompatCallbacks, String paramString, Bundle paramBundle, int paramInt) {}
  
  public void run()
  {
    IBinder localIBinder = val$callbacks.asBinder();
    MediaBrowserServiceCompat.access$100(this$1.this$0).remove(localIBinder);
    MediaBrowserServiceCompat.ConnectionRecord localConnectionRecord = new MediaBrowserServiceCompat.ConnectionRecord(this$1.this$0, null);
    pkg = val$pkg;
    rootHints = val$rootHints;
    callbacks = val$callbacks;
    root = this$1.this$0.onGetRoot(val$pkg, val$uid, val$rootHints);
    if (root == null) {
      new StringBuilder("No root for client ").append(val$pkg).append(" from service ").append(getClass().getName());
    }
    for (;;)
    {
      try
      {
        val$callbacks.onConnectFailed();
        return;
      }
      catch (RemoteException localRemoteException1)
      {
        new StringBuilder("Calling onConnectFailed() failed. Ignoring. pkg=").append(val$pkg);
        return;
      }
      try
      {
        MediaBrowserServiceCompat.access$100(this$1.this$0).put(localRemoteException1, localConnectionRecord);
        if (this$1.this$0.mSession != null)
        {
          val$callbacks.onConnect(root.getRootId(), this$1.this$0.mSession, root.getExtras());
          return;
        }
      }
      catch (RemoteException localRemoteException2)
      {
        new StringBuilder("Calling onConnect() failed. Dropping client. pkg=").append(val$pkg);
        MediaBrowserServiceCompat.access$100(this$1.this$0).remove(localRemoteException1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaBrowserServiceCompat.ServiceBinder.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */