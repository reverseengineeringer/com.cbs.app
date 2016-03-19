package android.support.v4.media;

import android.app.Service;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat.Token;
import android.support.v4.os.ResultReceiver;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public abstract class MediaBrowserServiceCompat
  extends Service
{
  private static final boolean DBG = false;
  public static final String KEY_MEDIA_ITEM = "media_item";
  public static final String SERVICE_INTERFACE = "android.media.browse.MediaBrowserServiceCompat";
  private static final String TAG = "MediaBrowserServiceCompat";
  private ServiceBinder mBinder;
  private final ArrayMap<IBinder, ConnectionRecord> mConnections = new ArrayMap();
  private final Handler mHandler = new Handler();
  MediaSessionCompat.Token mSession;
  
  private void addSubscription(String paramString, ConnectionRecord paramConnectionRecord)
  {
    subscriptions.add(paramString);
    performLoadChildren(paramString, paramConnectionRecord);
  }
  
  private boolean isValidPackage(String paramString, int paramInt)
  {
    if (paramString == null) {}
    for (;;)
    {
      return false;
      String[] arrayOfString = getPackageManager().getPackagesForUid(paramInt);
      int i = arrayOfString.length;
      paramInt = 0;
      while (paramInt < i)
      {
        if (arrayOfString[paramInt].equals(paramString)) {
          return true;
        }
        paramInt += 1;
      }
    }
  }
  
  private void performLoadChildren(final String paramString, final ConnectionRecord paramConnectionRecord)
  {
    Result local3 = new Result(paramString, paramString)
    {
      void onResultSent(List<MediaBrowserCompat.MediaItem> paramAnonymousList)
      {
        if (paramAnonymousList == null) {
          throw new IllegalStateException("onLoadChildren sent null list for id " + paramString);
        }
        if (mConnections.get(paramConnectionRecordcallbacks.asBinder()) != paramConnectionRecord) {
          return;
        }
        try
        {
          paramConnectionRecordcallbacks.onLoadChildren(paramString, paramAnonymousList);
          return;
        }
        catch (RemoteException paramAnonymousList)
        {
          new StringBuilder("Calling onLoadChildren() failed for id=").append(paramString).append(" package=").append(paramConnectionRecordpkg);
        }
      }
    };
    onLoadChildren(paramString, local3);
    if (!local3.isDone()) {
      throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + pkg + " id=" + paramString);
    }
  }
  
  private void performLoadItem(String paramString, final ResultReceiver paramResultReceiver)
  {
    paramResultReceiver = new Result(paramString, paramResultReceiver)
    {
      void onResultSent(MediaBrowserCompat.MediaItem paramAnonymousMediaItem)
      {
        Bundle localBundle = new Bundle();
        localBundle.putParcelable("media_item", paramAnonymousMediaItem);
        paramResultReceiver.send(0, localBundle);
      }
    };
    onLoadItem(paramString, paramResultReceiver);
    if (!paramResultReceiver.isDone()) {
      throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + paramString);
    }
  }
  
  public void dump(FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {}
  
  public MediaSessionCompat.Token getSessionToken()
  {
    return mSession;
  }
  
  public void notifyChildrenChanged(final String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
    }
    mHandler.post(new Runnable()
    {
      public void run()
      {
        Iterator localIterator = mConnections.keySet().iterator();
        while (localIterator.hasNext())
        {
          Object localObject = (IBinder)localIterator.next();
          localObject = (MediaBrowserServiceCompat.ConnectionRecord)mConnections.get(localObject);
          if (subscriptions.contains(paramString)) {
            MediaBrowserServiceCompat.this.performLoadChildren(paramString, (MediaBrowserServiceCompat.ConnectionRecord)localObject);
          }
        }
      }
    });
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    if ("android.media.browse.MediaBrowserServiceCompat".equals(paramIntent.getAction())) {
      return mBinder;
    }
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    mBinder = new ServiceBinder(null);
  }
  
  public abstract BrowserRoot onGetRoot(String paramString, int paramInt, Bundle paramBundle);
  
  public abstract void onLoadChildren(String paramString, Result<List<MediaBrowserCompat.MediaItem>> paramResult);
  
  public void onLoadItem(String paramString, Result<MediaBrowserCompat.MediaItem> paramResult)
  {
    paramResult.sendResult(null);
  }
  
  public void setSessionToken(final MediaSessionCompat.Token paramToken)
  {
    if (paramToken == null) {
      throw new IllegalArgumentException("Session token may not be null.");
    }
    if (mSession != null) {
      throw new IllegalStateException("The session token has already been set.");
    }
    mSession = paramToken;
    mHandler.post(new Runnable()
    {
      public void run()
      {
        Iterator localIterator = mConnections.keySet().iterator();
        while (localIterator.hasNext())
        {
          IBinder localIBinder = (IBinder)localIterator.next();
          MediaBrowserServiceCompat.ConnectionRecord localConnectionRecord = (MediaBrowserServiceCompat.ConnectionRecord)mConnections.get(localIBinder);
          try
          {
            callbacks.onConnect(root.getRootId(), paramToken, root.getExtras());
          }
          catch (RemoteException localRemoteException)
          {
            new StringBuilder("Connection for ").append(pkg).append(" is no longer valid.");
            mConnections.remove(localIBinder);
          }
        }
      }
    });
  }
  
  public static final class BrowserRoot
  {
    private final Bundle mExtras;
    private final String mRootId;
    
    public BrowserRoot(String paramString, Bundle paramBundle)
    {
      if (paramString == null) {
        throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead.");
      }
      mRootId = paramString;
      mExtras = paramBundle;
    }
    
    public final Bundle getExtras()
    {
      return mExtras;
    }
    
    public final String getRootId()
    {
      return mRootId;
    }
  }
  
  private class ConnectionRecord
  {
    IMediaBrowserServiceCompatCallbacks callbacks;
    String pkg;
    MediaBrowserServiceCompat.BrowserRoot root;
    Bundle rootHints;
    HashSet<String> subscriptions = new HashSet();
    
    private ConnectionRecord() {}
  }
  
  public class Result<T>
  {
    private Object mDebug;
    private boolean mDetachCalled;
    private boolean mSendResultCalled;
    
    Result(Object paramObject)
    {
      mDebug = paramObject;
    }
    
    public void detach()
    {
      if (mDetachCalled) {
        throw new IllegalStateException("detach() called when detach() had already been called for: " + mDebug);
      }
      if (mSendResultCalled) {
        throw new IllegalStateException("detach() called when sendResult() had already been called for: " + mDebug);
      }
      mDetachCalled = true;
    }
    
    boolean isDone()
    {
      return (mDetachCalled) || (mSendResultCalled);
    }
    
    void onResultSent(T paramT) {}
    
    public void sendResult(T paramT)
    {
      if (mSendResultCalled) {
        throw new IllegalStateException("sendResult() called twice for: " + mDebug);
      }
      mSendResultCalled = true;
      onResultSent(paramT);
    }
  }
  
  private class ServiceBinder
    extends IMediaBrowserServiceCompat.Stub
  {
    private ServiceBinder() {}
    
    public void addSubscription(final String paramString, final IMediaBrowserServiceCompatCallbacks paramIMediaBrowserServiceCompatCallbacks)
    {
      mHandler.post(new Runnable()
      {
        public void run()
        {
          Object localObject = paramIMediaBrowserServiceCompatCallbacks.asBinder();
          localObject = (MediaBrowserServiceCompat.ConnectionRecord)mConnections.get(localObject);
          if (localObject == null)
          {
            new StringBuilder("addSubscription for callback that isn't registered id=").append(paramString);
            return;
          }
          MediaBrowserServiceCompat.this.addSubscription(paramString, (MediaBrowserServiceCompat.ConnectionRecord)localObject);
        }
      });
    }
    
    public void connect(final String paramString, final Bundle paramBundle, final IMediaBrowserServiceCompatCallbacks paramIMediaBrowserServiceCompatCallbacks)
    {
      final int i = Binder.getCallingUid();
      if (!MediaBrowserServiceCompat.this.isValidPackage(paramString, i)) {
        throw new IllegalArgumentException("Package/uid mismatch: uid=" + i + " package=" + paramString);
      }
      mHandler.post(new Runnable()
      {
        public void run()
        {
          IBinder localIBinder = paramIMediaBrowserServiceCompatCallbacks.asBinder();
          mConnections.remove(localIBinder);
          MediaBrowserServiceCompat.ConnectionRecord localConnectionRecord = new MediaBrowserServiceCompat.ConnectionRecord(MediaBrowserServiceCompat.this, null);
          pkg = paramString;
          rootHints = paramBundle;
          callbacks = paramIMediaBrowserServiceCompatCallbacks;
          root = onGetRoot(paramString, i, paramBundle);
          if (root == null) {
            new StringBuilder("No root for client ").append(paramString).append(" from service ").append(getClass().getName());
          }
          for (;;)
          {
            try
            {
              paramIMediaBrowserServiceCompatCallbacks.onConnectFailed();
              return;
            }
            catch (RemoteException localRemoteException1)
            {
              new StringBuilder("Calling onConnectFailed() failed. Ignoring. pkg=").append(paramString);
              return;
            }
            try
            {
              mConnections.put(localRemoteException1, localConnectionRecord);
              if (mSession != null)
              {
                paramIMediaBrowserServiceCompatCallbacks.onConnect(root.getRootId(), mSession, root.getExtras());
                return;
              }
            }
            catch (RemoteException localRemoteException2)
            {
              new StringBuilder("Calling onConnect() failed. Dropping client. pkg=").append(paramString);
              mConnections.remove(localRemoteException1);
            }
          }
        }
      });
    }
    
    public void disconnect(final IMediaBrowserServiceCompatCallbacks paramIMediaBrowserServiceCompatCallbacks)
    {
      mHandler.post(new Runnable()
      {
        public void run()
        {
          IBinder localIBinder = paramIMediaBrowserServiceCompatCallbacks.asBinder();
          mConnections.remove(localIBinder);
        }
      });
    }
    
    public void getMediaItem(final String paramString, final ResultReceiver paramResultReceiver)
    {
      if ((TextUtils.isEmpty(paramString)) || (paramResultReceiver == null)) {
        return;
      }
      mHandler.post(new Runnable()
      {
        public void run()
        {
          MediaBrowserServiceCompat.this.performLoadItem(paramString, paramResultReceiver);
        }
      });
    }
    
    public void removeSubscription(final String paramString, final IMediaBrowserServiceCompatCallbacks paramIMediaBrowserServiceCompatCallbacks)
    {
      mHandler.post(new Runnable()
      {
        public void run()
        {
          Object localObject = paramIMediaBrowserServiceCompatCallbacks.asBinder();
          localObject = (MediaBrowserServiceCompat.ConnectionRecord)mConnections.get(localObject);
          if (localObject == null) {
            new StringBuilder("removeSubscription for callback that isn't registered id=").append(paramString);
          }
          while (subscriptions.remove(paramString)) {
            return;
          }
          new StringBuilder("removeSubscription called for ").append(paramString).append(" which is not subscribed");
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaBrowserServiceCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */