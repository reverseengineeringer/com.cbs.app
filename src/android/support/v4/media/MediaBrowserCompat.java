package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat.Token;
import android.support.v4.os.ResultReceiver;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class MediaBrowserCompat
{
  private final MediaBrowserImplBase mImpl;
  
  public MediaBrowserCompat(Context paramContext, ComponentName paramComponentName, ConnectionCallback paramConnectionCallback, Bundle paramBundle)
  {
    mImpl = new MediaBrowserImplBase(paramContext, paramComponentName, paramConnectionCallback, paramBundle);
  }
  
  public final void connect()
  {
    mImpl.connect();
  }
  
  public final void disconnect()
  {
    mImpl.disconnect();
  }
  
  public final Bundle getExtras()
  {
    return mImpl.getExtras();
  }
  
  public final void getItem(String paramString, ItemCallback paramItemCallback)
  {
    mImpl.getItem(paramString, paramItemCallback);
  }
  
  public final String getRoot()
  {
    return mImpl.getRoot();
  }
  
  public final ComponentName getServiceComponent()
  {
    return mImpl.getServiceComponent();
  }
  
  public final MediaSessionCompat.Token getSessionToken()
  {
    return mImpl.getSessionToken();
  }
  
  public final boolean isConnected()
  {
    return mImpl.isConnected();
  }
  
  public final void subscribe(String paramString, SubscriptionCallback paramSubscriptionCallback)
  {
    mImpl.subscribe(paramString, paramSubscriptionCallback);
  }
  
  public final void unsubscribe(String paramString)
  {
    mImpl.unsubscribe(paramString);
  }
  
  public static class ConnectionCallback
  {
    public void onConnected() {}
    
    public void onConnectionFailed() {}
    
    public void onConnectionSuspended() {}
  }
  
  public static abstract class ItemCallback
  {
    public void onError(String paramString) {}
    
    public void onItemLoaded(MediaBrowserCompat.MediaItem paramMediaItem) {}
  }
  
  static class MediaBrowserImplBase
  {
    private static final int CONNECT_STATE_CONNECTED = 2;
    private static final int CONNECT_STATE_CONNECTING = 1;
    private static final int CONNECT_STATE_DISCONNECTED = 0;
    private static final int CONNECT_STATE_SUSPENDED = 3;
    private static final boolean DBG = false;
    private static final String TAG = "MediaBrowserCompat";
    private final MediaBrowserCompat.ConnectionCallback mCallback;
    private final Context mContext;
    private Bundle mExtras;
    private final Handler mHandler = new Handler();
    private MediaSessionCompat.Token mMediaSessionToken;
    private final Bundle mRootHints;
    private String mRootId;
    private IMediaBrowserServiceCompat mServiceBinder;
    private IMediaBrowserServiceCompatCallbacks mServiceCallbacks;
    private final ComponentName mServiceComponent;
    private MediaServiceConnection mServiceConnection;
    private int mState = 0;
    private final ArrayMap<String, Subscription> mSubscriptions = new ArrayMap();
    
    public MediaBrowserImplBase(Context paramContext, ComponentName paramComponentName, MediaBrowserCompat.ConnectionCallback paramConnectionCallback, Bundle paramBundle)
    {
      if (paramContext == null) {
        throw new IllegalArgumentException("context must not be null");
      }
      if (paramComponentName == null) {
        throw new IllegalArgumentException("service component must not be null");
      }
      if (paramConnectionCallback == null) {
        throw new IllegalArgumentException("connection callback must not be null");
      }
      mContext = paramContext;
      mServiceComponent = paramComponentName;
      mCallback = paramConnectionCallback;
      mRootHints = paramBundle;
    }
    
    private void forceCloseConnection()
    {
      if (mServiceConnection != null) {
        mContext.unbindService(mServiceConnection);
      }
      mState = 0;
      mServiceConnection = null;
      mServiceBinder = null;
      mServiceCallbacks = null;
      mRootId = null;
      mMediaSessionToken = null;
    }
    
    private ServiceCallbacks getNewServiceCallbacks()
    {
      return new ServiceCallbacks(this);
    }
    
    private static String getStateLabel(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        return "UNKNOWN/" + paramInt;
      case 0: 
        return "CONNECT_STATE_DISCONNECTED";
      case 1: 
        return "CONNECT_STATE_CONNECTING";
      case 2: 
        return "CONNECT_STATE_CONNECTED";
      }
      return "CONNECT_STATE_SUSPENDED";
    }
    
    private boolean isCurrent(IMediaBrowserServiceCompatCallbacks paramIMediaBrowserServiceCompatCallbacks, String paramString)
    {
      if (mServiceCallbacks != paramIMediaBrowserServiceCompatCallbacks)
      {
        if (mState != 0) {
          new StringBuilder().append(paramString).append(" for ").append(mServiceComponent).append(" with mServiceConnection=").append(mServiceCallbacks).append(" this=").append(this);
        }
        return false;
      }
      return true;
    }
    
    private final void onConnectionFailed(final IMediaBrowserServiceCompatCallbacks paramIMediaBrowserServiceCompatCallbacks)
    {
      mHandler.post(new Runnable()
      {
        public void run()
        {
          Log.e("MediaBrowserCompat", "onConnectFailed for " + mServiceComponent);
          if (!MediaBrowserCompat.MediaBrowserImplBase.this.isCurrent(paramIMediaBrowserServiceCompatCallbacks, "onConnectFailed")) {
            return;
          }
          if (mState != 1)
          {
            new StringBuilder("onConnect from service while mState=").append(MediaBrowserCompat.MediaBrowserImplBase.getStateLabel(mState)).append("... ignoring");
            return;
          }
          MediaBrowserCompat.MediaBrowserImplBase.this.forceCloseConnection();
          mCallback.onConnectionFailed();
        }
      });
    }
    
    private final void onLoadChildren(final IMediaBrowserServiceCompatCallbacks paramIMediaBrowserServiceCompatCallbacks, final String paramString, final List paramList)
    {
      mHandler.post(new Runnable()
      {
        public void run()
        {
          if (!MediaBrowserCompat.MediaBrowserImplBase.this.isCurrent(paramIMediaBrowserServiceCompatCallbacks, "onLoadChildren")) {
            return;
          }
          List localList = paramList;
          if (localList == null) {
            localList = Collections.emptyList();
          }
          for (;;)
          {
            MediaBrowserCompat.MediaBrowserImplBase.Subscription localSubscription = (MediaBrowserCompat.MediaBrowserImplBase.Subscription)mSubscriptions.get(paramString);
            if (localSubscription == null) {
              break;
            }
            callback.onChildrenLoaded(paramString, localList);
            return;
          }
        }
      });
    }
    
    private final void onServiceConnected(final IMediaBrowserServiceCompatCallbacks paramIMediaBrowserServiceCompatCallbacks, final String paramString, final MediaSessionCompat.Token paramToken, final Bundle paramBundle)
    {
      mHandler.post(new Runnable()
      {
        public void run()
        {
          if (!MediaBrowserCompat.MediaBrowserImplBase.this.isCurrent(paramIMediaBrowserServiceCompatCallbacks, "onConnect")) {}
          for (;;)
          {
            return;
            if (mState != 1)
            {
              new StringBuilder("onConnect from service while mState=").append(MediaBrowserCompat.MediaBrowserImplBase.getStateLabel(mState)).append("... ignoring");
              return;
            }
            MediaBrowserCompat.MediaBrowserImplBase.access$802(MediaBrowserCompat.MediaBrowserImplBase.this, paramString);
            MediaBrowserCompat.MediaBrowserImplBase.access$902(MediaBrowserCompat.MediaBrowserImplBase.this, paramToken);
            MediaBrowserCompat.MediaBrowserImplBase.access$1002(MediaBrowserCompat.MediaBrowserImplBase.this, paramBundle);
            MediaBrowserCompat.MediaBrowserImplBase.access$602(MediaBrowserCompat.MediaBrowserImplBase.this, 2);
            mCallback.onConnected();
            Iterator localIterator = mSubscriptions.keySet().iterator();
            while (localIterator.hasNext())
            {
              String str = (String)localIterator.next();
              try
              {
                mServiceBinder.addSubscription(str, mServiceCallbacks);
              }
              catch (RemoteException localRemoteException) {}
            }
          }
        }
      });
    }
    
    public void connect()
    {
      if (mState != 0) {
        throw new IllegalStateException("connect() called while not disconnected (state=" + getStateLabel(mState) + ")");
      }
      if (mServiceBinder != null) {
        throw new RuntimeException("mServiceBinder should be null. Instead it is " + mServiceBinder);
      }
      if (mServiceCallbacks != null) {
        throw new RuntimeException("mServiceCallbacks should be null. Instead it is " + mServiceCallbacks);
      }
      mState = 1;
      Intent localIntent = new Intent("android.media.browse.MediaBrowserServiceCompat");
      localIntent.setComponent(mServiceComponent);
      final MediaServiceConnection localMediaServiceConnection = new MediaServiceConnection(null);
      mServiceConnection = localMediaServiceConnection;
      int i = 0;
      try
      {
        boolean bool = mContext.bindService(localIntent, mServiceConnection, 1);
        i = bool;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Log.e("MediaBrowserCompat", "Failed binding to service " + mServiceComponent);
        }
      }
      if (i == 0) {
        mHandler.post(new Runnable()
        {
          public void run()
          {
            if (localMediaServiceConnection == mServiceConnection)
            {
              MediaBrowserCompat.MediaBrowserImplBase.this.forceCloseConnection();
              mCallback.onConnectionFailed();
            }
          }
        });
      }
    }
    
    public void disconnect()
    {
      if (mServiceCallbacks != null) {}
      try
      {
        mServiceBinder.disconnect(mServiceCallbacks);
        forceCloseConnection();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        for (;;)
        {
          new StringBuilder("RemoteException during connect for ").append(mServiceComponent);
        }
      }
    }
    
    void dump()
    {
      new StringBuilder("  mServiceComponent=").append(mServiceComponent);
      new StringBuilder("  mCallback=").append(mCallback);
      new StringBuilder("  mRootHints=").append(mRootHints);
      new StringBuilder("  mState=").append(getStateLabel(mState));
      new StringBuilder("  mServiceConnection=").append(mServiceConnection);
      new StringBuilder("  mServiceBinder=").append(mServiceBinder);
      new StringBuilder("  mServiceCallbacks=").append(mServiceCallbacks);
      new StringBuilder("  mRootId=").append(mRootId);
      new StringBuilder("  mMediaSessionToken=").append(mMediaSessionToken);
    }
    
    public Bundle getExtras()
    {
      if (!isConnected()) {
        throw new IllegalStateException("getExtras() called while not connected (state=" + getStateLabel(mState) + ")");
      }
      return mExtras;
    }
    
    public void getItem(final String paramString, final MediaBrowserCompat.ItemCallback paramItemCallback)
    {
      if (TextUtils.isEmpty(paramString)) {
        throw new IllegalArgumentException("mediaId is empty.");
      }
      if (paramItemCallback == null) {
        throw new IllegalArgumentException("cb is null.");
      }
      if (mState != 2)
      {
        mHandler.post(new Runnable()
        {
          public void run()
          {
            paramItemCallback.onError(paramString);
          }
        });
        return;
      }
      ResultReceiver local3 = new ResultReceiver(mHandler)
      {
        protected void onReceiveResult(int paramAnonymousInt, Bundle paramAnonymousBundle)
        {
          if ((paramAnonymousInt != 0) || (paramAnonymousBundle == null) || (!paramAnonymousBundle.containsKey("media_item")))
          {
            paramItemCallback.onError(paramString);
            return;
          }
          paramAnonymousBundle = paramAnonymousBundle.getParcelable("media_item");
          if (!(paramAnonymousBundle instanceof MediaBrowserCompat.MediaItem))
          {
            paramItemCallback.onError(paramString);
            return;
          }
          paramItemCallback.onItemLoaded((MediaBrowserCompat.MediaItem)paramAnonymousBundle);
        }
      };
      try
      {
        mServiceBinder.getMediaItem(paramString, local3);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        mHandler.post(new Runnable()
        {
          public void run()
          {
            paramItemCallback.onError(paramString);
          }
        });
      }
    }
    
    public String getRoot()
    {
      if (!isConnected()) {
        throw new IllegalStateException("getSessionToken() called while not connected(state=" + getStateLabel(mState) + ")");
      }
      return mRootId;
    }
    
    public ComponentName getServiceComponent()
    {
      if (!isConnected()) {
        throw new IllegalStateException("getServiceComponent() called while not connected (state=" + mState + ")");
      }
      return mServiceComponent;
    }
    
    public MediaSessionCompat.Token getSessionToken()
    {
      if (!isConnected()) {
        throw new IllegalStateException("getSessionToken() called while not connected(state=" + mState + ")");
      }
      return mMediaSessionToken;
    }
    
    public boolean isConnected()
    {
      return mState == 2;
    }
    
    public void subscribe(String paramString, MediaBrowserCompat.SubscriptionCallback paramSubscriptionCallback)
    {
      if (paramString == null) {
        throw new IllegalArgumentException("parentId is null");
      }
      if (paramSubscriptionCallback == null) {
        throw new IllegalArgumentException("callback is null");
      }
      Subscription localSubscription = (Subscription)mSubscriptions.get(paramString);
      if (localSubscription == null) {}
      for (int i = 1;; i = 0)
      {
        if (i != 0)
        {
          localSubscription = new Subscription(paramString);
          mSubscriptions.put(paramString, localSubscription);
        }
        callback = paramSubscriptionCallback;
        if (mState == 2) {}
        try
        {
          mServiceBinder.addSubscription(paramString, mServiceCallbacks);
          return;
        }
        catch (RemoteException paramString) {}
      }
    }
    
    public void unsubscribe(String paramString)
    {
      if (TextUtils.isEmpty(paramString)) {
        throw new IllegalArgumentException("parentId is empty.");
      }
      Subscription localSubscription = (Subscription)mSubscriptions.remove(paramString);
      if ((mState == 2) && (localSubscription != null)) {}
      try
      {
        mServiceBinder.removeSubscription(paramString, mServiceCallbacks);
        return;
      }
      catch (RemoteException paramString) {}
    }
    
    private class MediaServiceConnection
      implements ServiceConnection
    {
      private MediaServiceConnection() {}
      
      private boolean isCurrent(String paramString)
      {
        if (mServiceConnection != this)
        {
          if (mState != 0) {
            new StringBuilder().append(paramString).append(" for ").append(mServiceComponent).append(" with mServiceConnection=").append(mServiceConnection).append(" this=").append(this);
          }
          return false;
        }
        return true;
      }
      
      public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
      {
        if (!isCurrent("onServiceConnected")) {
          return;
        }
        MediaBrowserCompat.MediaBrowserImplBase.access$1302(MediaBrowserCompat.MediaBrowserImplBase.this, IMediaBrowserServiceCompat.Stub.asInterface(paramIBinder));
        MediaBrowserCompat.MediaBrowserImplBase.access$1202(MediaBrowserCompat.MediaBrowserImplBase.this, MediaBrowserCompat.MediaBrowserImplBase.this.getNewServiceCallbacks());
        MediaBrowserCompat.MediaBrowserImplBase.access$602(MediaBrowserCompat.MediaBrowserImplBase.this, 1);
        try
        {
          mServiceBinder.connect(mContext.getPackageName(), mRootHints, mServiceCallbacks);
          return;
        }
        catch (RemoteException paramComponentName)
        {
          new StringBuilder("RemoteException during connect for ").append(mServiceComponent);
        }
      }
      
      public void onServiceDisconnected(ComponentName paramComponentName)
      {
        if (!isCurrent("onServiceDisconnected")) {
          return;
        }
        MediaBrowserCompat.MediaBrowserImplBase.access$1302(MediaBrowserCompat.MediaBrowserImplBase.this, null);
        MediaBrowserCompat.MediaBrowserImplBase.access$1202(MediaBrowserCompat.MediaBrowserImplBase.this, null);
        MediaBrowserCompat.MediaBrowserImplBase.access$602(MediaBrowserCompat.MediaBrowserImplBase.this, 3);
        mCallback.onConnectionSuspended();
      }
    }
    
    private static class ServiceCallbacks
      extends IMediaBrowserServiceCompatCallbacks.Stub
    {
      private WeakReference<MediaBrowserCompat.MediaBrowserImplBase> mMediaBrowser;
      
      public ServiceCallbacks(MediaBrowserCompat.MediaBrowserImplBase paramMediaBrowserImplBase)
      {
        mMediaBrowser = new WeakReference(paramMediaBrowserImplBase);
      }
      
      public void onConnect(String paramString, MediaSessionCompat.Token paramToken, Bundle paramBundle)
      {
        MediaBrowserCompat.MediaBrowserImplBase localMediaBrowserImplBase = (MediaBrowserCompat.MediaBrowserImplBase)mMediaBrowser.get();
        if (localMediaBrowserImplBase != null) {
          localMediaBrowserImplBase.onServiceConnected(this, paramString, paramToken, paramBundle);
        }
      }
      
      public void onConnectFailed()
      {
        MediaBrowserCompat.MediaBrowserImplBase localMediaBrowserImplBase = (MediaBrowserCompat.MediaBrowserImplBase)mMediaBrowser.get();
        if (localMediaBrowserImplBase != null) {
          localMediaBrowserImplBase.onConnectionFailed(this);
        }
      }
      
      public void onLoadChildren(String paramString, List paramList)
      {
        MediaBrowserCompat.MediaBrowserImplBase localMediaBrowserImplBase = (MediaBrowserCompat.MediaBrowserImplBase)mMediaBrowser.get();
        if (localMediaBrowserImplBase != null) {
          localMediaBrowserImplBase.onLoadChildren(this, paramString, paramList);
        }
      }
    }
    
    private static class Subscription
    {
      MediaBrowserCompat.SubscriptionCallback callback;
      final String id;
      
      Subscription(String paramString)
      {
        id = paramString;
      }
    }
  }
  
  public static class MediaItem
    implements Parcelable
  {
    public static final Parcelable.Creator<MediaItem> CREATOR = new Parcelable.Creator()
    {
      public final MediaBrowserCompat.MediaItem createFromParcel(Parcel paramAnonymousParcel)
      {
        return new MediaBrowserCompat.MediaItem(paramAnonymousParcel, null);
      }
      
      public final MediaBrowserCompat.MediaItem[] newArray(int paramAnonymousInt)
      {
        return new MediaBrowserCompat.MediaItem[paramAnonymousInt];
      }
    };
    public static final int FLAG_BROWSABLE = 1;
    public static final int FLAG_PLAYABLE = 2;
    private final MediaDescriptionCompat mDescription;
    private final int mFlags;
    
    private MediaItem(Parcel paramParcel)
    {
      mFlags = paramParcel.readInt();
      mDescription = ((MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(paramParcel));
    }
    
    public MediaItem(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt)
    {
      if (paramMediaDescriptionCompat == null) {
        throw new IllegalArgumentException("description cannot be null");
      }
      if (TextUtils.isEmpty(paramMediaDescriptionCompat.getMediaId())) {
        throw new IllegalArgumentException("description must have a non-empty media id");
      }
      mFlags = paramInt;
      mDescription = paramMediaDescriptionCompat;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public MediaDescriptionCompat getDescription()
    {
      return mDescription;
    }
    
    public int getFlags()
    {
      return mFlags;
    }
    
    public String getMediaId()
    {
      return mDescription.getMediaId();
    }
    
    public boolean isBrowsable()
    {
      return (mFlags & 0x1) != 0;
    }
    
    public boolean isPlayable()
    {
      return (mFlags & 0x2) != 0;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder("MediaItem{");
      localStringBuilder.append("mFlags=").append(mFlags);
      localStringBuilder.append(", mDescription=").append(mDescription);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(mFlags);
      mDescription.writeToParcel(paramParcel, paramInt);
    }
    
    @Retention(RetentionPolicy.SOURCE)
    public static @interface Flags {}
  }
  
  public static abstract class SubscriptionCallback
  {
    public void onChildrenLoaded(String paramString, List<MediaBrowserCompat.MediaItem> paramList) {}
    
    public void onError(String paramString) {}
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaBrowserCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */