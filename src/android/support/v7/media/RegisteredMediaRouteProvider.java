package android.support.v7.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

final class RegisteredMediaRouteProvider
  extends MediaRouteProvider
  implements ServiceConnection
{
  private static final boolean DEBUG = Log.isLoggable("MediaRouteProviderProxy", 3);
  private static final String TAG = "MediaRouteProviderProxy";
  private Connection mActiveConnection;
  private boolean mBound;
  private final ComponentName mComponentName;
  private boolean mConnectionReady;
  private final ArrayList<Controller> mControllers = new ArrayList();
  private final PrivateHandler mPrivateHandler;
  private boolean mStarted;
  
  public RegisteredMediaRouteProvider(Context paramContext, ComponentName paramComponentName)
  {
    super(paramContext, new MediaRouteProvider.ProviderMetadata(paramComponentName));
    mComponentName = paramComponentName;
    mPrivateHandler = new PrivateHandler(null);
  }
  
  private void attachControllersToConnection()
  {
    int j = mControllers.size();
    int i = 0;
    while (i < j)
    {
      ((Controller)mControllers.get(i)).attachConnection(mActiveConnection);
      i += 1;
    }
  }
  
  private void bind()
  {
    Intent localIntent;
    if (!mBound)
    {
      if (DEBUG) {
        new StringBuilder().append(this).append(": Binding");
      }
      localIntent = new Intent("android.media.MediaRouteProviderService");
      localIntent.setComponent(mComponentName);
    }
    try
    {
      mBound = getContext().bindService(localIntent, this, 1);
      if ((!mBound) && (DEBUG)) {
        new StringBuilder().append(this).append(": Bind failed");
      }
      return;
    }
    catch (SecurityException localSecurityException)
    {
      while (!DEBUG) {}
      new StringBuilder().append(this).append(": Bind failed");
    }
  }
  
  private void detachControllersFromConnection()
  {
    int j = mControllers.size();
    int i = 0;
    while (i < j)
    {
      ((Controller)mControllers.get(i)).detachConnection();
      i += 1;
    }
  }
  
  private void disconnect()
  {
    if (mActiveConnection != null)
    {
      setDescriptor(null);
      mConnectionReady = false;
      detachControllersFromConnection();
      mActiveConnection.dispose();
      mActiveConnection = null;
    }
  }
  
  private void onConnectionDescriptorChanged(Connection paramConnection, MediaRouteProviderDescriptor paramMediaRouteProviderDescriptor)
  {
    if (mActiveConnection == paramConnection)
    {
      if (DEBUG) {
        new StringBuilder().append(this).append(": Descriptor changed, descriptor=").append(paramMediaRouteProviderDescriptor);
      }
      setDescriptor(paramMediaRouteProviderDescriptor);
    }
  }
  
  private void onConnectionDied(Connection paramConnection)
  {
    if (mActiveConnection == paramConnection)
    {
      if (DEBUG) {
        new StringBuilder().append(this).append(": Service connection died");
      }
      disconnect();
    }
  }
  
  private void onConnectionError(Connection paramConnection, String paramString)
  {
    if (mActiveConnection == paramConnection)
    {
      if (DEBUG) {
        new StringBuilder().append(this).append(": Service connection error - ").append(paramString);
      }
      unbind();
    }
  }
  
  private void onConnectionReady(Connection paramConnection)
  {
    if (mActiveConnection == paramConnection)
    {
      mConnectionReady = true;
      attachControllersToConnection();
      paramConnection = getDiscoveryRequest();
      if (paramConnection != null) {
        mActiveConnection.setDiscoveryRequest(paramConnection);
      }
    }
  }
  
  private void onControllerReleased(Controller paramController)
  {
    mControllers.remove(paramController);
    paramController.detachConnection();
    updateBinding();
  }
  
  private boolean shouldBind()
  {
    if (mStarted)
    {
      if (getDiscoveryRequest() != null) {}
      while (!mControllers.isEmpty()) {
        return true;
      }
    }
    return false;
  }
  
  private void unbind()
  {
    if (mBound)
    {
      if (DEBUG) {
        new StringBuilder().append(this).append(": Unbinding");
      }
      mBound = false;
      disconnect();
      getContext().unbindService(this);
    }
  }
  
  private void updateBinding()
  {
    if (shouldBind())
    {
      bind();
      return;
    }
    unbind();
  }
  
  public final boolean hasComponentName(String paramString1, String paramString2)
  {
    return (mComponentName.getPackageName().equals(paramString1)) && (mComponentName.getClassName().equals(paramString2));
  }
  
  public final MediaRouteProvider.RouteController onCreateRouteController(String paramString)
  {
    Object localObject = getDescriptor();
    if (localObject != null)
    {
      localObject = ((MediaRouteProviderDescriptor)localObject).getRoutes();
      int j = ((List)localObject).size();
      int i = 0;
      while (i < j)
      {
        if (((MediaRouteDescriptor)((List)localObject).get(i)).getId().equals(paramString))
        {
          paramString = new Controller(paramString);
          mControllers.add(paramString);
          if (mConnectionReady) {
            paramString.attachConnection(mActiveConnection);
          }
          updateBinding();
          return paramString;
        }
        i += 1;
      }
    }
    return null;
  }
  
  public final void onDiscoveryRequestChanged(MediaRouteDiscoveryRequest paramMediaRouteDiscoveryRequest)
  {
    if (mConnectionReady) {
      mActiveConnection.setDiscoveryRequest(paramMediaRouteDiscoveryRequest);
    }
    updateBinding();
  }
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    if (DEBUG) {
      new StringBuilder().append(this).append(": Connected");
    }
    if (mBound)
    {
      disconnect();
      if (paramIBinder == null) {
        break label78;
      }
      paramComponentName = new Messenger(paramIBinder);
      if (!MediaRouteProviderProtocol.isValidRemoteMessenger(paramComponentName)) {
        break label108;
      }
      paramComponentName = new Connection(paramComponentName);
      if (!paramComponentName.register()) {
        break label83;
      }
      mActiveConnection = paramComponentName;
    }
    label78:
    label83:
    while (!DEBUG)
    {
      return;
      paramComponentName = null;
      break;
    }
    new StringBuilder().append(this).append(": Registration failed");
    return;
    label108:
    Log.e("MediaRouteProviderProxy", this + ": Service returned invalid messenger binder");
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    if (DEBUG) {
      new StringBuilder().append(this).append(": Service disconnected");
    }
    disconnect();
  }
  
  public final void rebindIfDisconnected()
  {
    if ((mActiveConnection == null) && (shouldBind()))
    {
      unbind();
      bind();
    }
  }
  
  public final void start()
  {
    if (!mStarted)
    {
      if (DEBUG) {
        new StringBuilder().append(this).append(": Starting");
      }
      mStarted = true;
      updateBinding();
    }
  }
  
  public final void stop()
  {
    if (mStarted)
    {
      if (DEBUG) {
        new StringBuilder().append(this).append(": Stopping");
      }
      mStarted = false;
      updateBinding();
    }
  }
  
  public final String toString()
  {
    return "Service connection " + mComponentName.flattenToShortString();
  }
  
  private final class Connection
    implements IBinder.DeathRecipient
  {
    private int mNextControllerId = 1;
    private int mNextRequestId = 1;
    private final SparseArray<MediaRouter.ControlRequestCallback> mPendingCallbacks = new SparseArray();
    private int mPendingRegisterRequestId;
    private final RegisteredMediaRouteProvider.ReceiveHandler mReceiveHandler;
    private final Messenger mReceiveMessenger;
    private final Messenger mServiceMessenger;
    private int mServiceVersion;
    
    public Connection(Messenger paramMessenger)
    {
      mServiceMessenger = paramMessenger;
      mReceiveHandler = new RegisteredMediaRouteProvider.ReceiveHandler(this);
      mReceiveMessenger = new Messenger(mReceiveHandler);
    }
    
    private void failPendingCallbacks()
    {
      int i = 0;
      while (i < mPendingCallbacks.size())
      {
        ((MediaRouter.ControlRequestCallback)mPendingCallbacks.valueAt(i)).onError(null, null);
        i += 1;
      }
      mPendingCallbacks.clear();
    }
    
    private boolean sendRequest(int paramInt1, int paramInt2, int paramInt3, Object paramObject, Bundle paramBundle)
    {
      Message localMessage = Message.obtain();
      what = paramInt1;
      arg1 = paramInt2;
      arg2 = paramInt3;
      obj = paramObject;
      localMessage.setData(paramBundle);
      replyTo = mReceiveMessenger;
      try
      {
        mServiceMessenger.send(localMessage);
        return true;
      }
      catch (RemoteException paramObject)
      {
        if (paramInt1 != 2) {
          Log.e("MediaRouteProviderProxy", "Could not send message to service.", (Throwable)paramObject);
        }
        return false;
      }
      catch (DeadObjectException paramObject)
      {
        for (;;) {}
      }
    }
    
    public final void binderDied()
    {
      mPrivateHandler.post(new Runnable()
      {
        public void run()
        {
          RegisteredMediaRouteProvider.this.onConnectionDied(RegisteredMediaRouteProvider.Connection.this);
        }
      });
    }
    
    public final int createRouteController(String paramString)
    {
      int i = mNextControllerId;
      mNextControllerId = (i + 1);
      Bundle localBundle = new Bundle();
      localBundle.putString("routeId", paramString);
      int j = mNextRequestId;
      mNextRequestId = (j + 1);
      sendRequest(3, j, i, null, localBundle);
      return i;
    }
    
    public final void dispose()
    {
      sendRequest(2, 0, 0, null, null);
      mReceiveHandler.dispose();
      mServiceMessenger.getBinder().unlinkToDeath(this, 0);
      mPrivateHandler.post(new Runnable()
      {
        public void run()
        {
          RegisteredMediaRouteProvider.Connection.this.failPendingCallbacks();
        }
      });
    }
    
    public final boolean onControlRequestFailed(int paramInt, String paramString, Bundle paramBundle)
    {
      MediaRouter.ControlRequestCallback localControlRequestCallback = (MediaRouter.ControlRequestCallback)mPendingCallbacks.get(paramInt);
      if (localControlRequestCallback != null)
      {
        mPendingCallbacks.remove(paramInt);
        localControlRequestCallback.onError(paramString, paramBundle);
        return true;
      }
      return false;
    }
    
    public final boolean onControlRequestSucceeded(int paramInt, Bundle paramBundle)
    {
      MediaRouter.ControlRequestCallback localControlRequestCallback = (MediaRouter.ControlRequestCallback)mPendingCallbacks.get(paramInt);
      if (localControlRequestCallback != null)
      {
        mPendingCallbacks.remove(paramInt);
        localControlRequestCallback.onResult(paramBundle);
        return true;
      }
      return false;
    }
    
    public final boolean onDescriptorChanged(Bundle paramBundle)
    {
      if (mServiceVersion != 0)
      {
        RegisteredMediaRouteProvider.this.onConnectionDescriptorChanged(this, MediaRouteProviderDescriptor.fromBundle(paramBundle));
        return true;
      }
      return false;
    }
    
    public final boolean onGenericFailure(int paramInt)
    {
      if (paramInt == mPendingRegisterRequestId)
      {
        mPendingRegisterRequestId = 0;
        RegisteredMediaRouteProvider.this.onConnectionError(this, "Registation failed");
      }
      MediaRouter.ControlRequestCallback localControlRequestCallback = (MediaRouter.ControlRequestCallback)mPendingCallbacks.get(paramInt);
      if (localControlRequestCallback != null)
      {
        mPendingCallbacks.remove(paramInt);
        localControlRequestCallback.onError(null, null);
      }
      return true;
    }
    
    public final boolean onGenericSuccess(int paramInt)
    {
      return true;
    }
    
    public final boolean onRegistered(int paramInt1, int paramInt2, Bundle paramBundle)
    {
      boolean bool2 = false;
      boolean bool1 = bool2;
      if (mServiceVersion == 0)
      {
        bool1 = bool2;
        if (paramInt1 == mPendingRegisterRequestId)
        {
          bool1 = bool2;
          if (paramInt2 > 0)
          {
            mPendingRegisterRequestId = 0;
            mServiceVersion = paramInt2;
            RegisteredMediaRouteProvider.this.onConnectionDescriptorChanged(this, MediaRouteProviderDescriptor.fromBundle(paramBundle));
            RegisteredMediaRouteProvider.this.onConnectionReady(this);
            bool1 = true;
          }
        }
      }
      return bool1;
    }
    
    public final boolean register()
    {
      int i = mNextRequestId;
      mNextRequestId = (i + 1);
      mPendingRegisterRequestId = i;
      if (!sendRequest(1, mPendingRegisterRequestId, 1, null, null)) {
        return false;
      }
      try
      {
        mServiceMessenger.getBinder().linkToDeath(this, 0);
        return true;
      }
      catch (RemoteException localRemoteException)
      {
        binderDied();
      }
      return false;
    }
    
    public final void releaseRouteController(int paramInt)
    {
      int i = mNextRequestId;
      mNextRequestId = (i + 1);
      sendRequest(4, i, paramInt, null, null);
    }
    
    public final void selectRoute(int paramInt)
    {
      int i = mNextRequestId;
      mNextRequestId = (i + 1);
      sendRequest(5, i, paramInt, null, null);
    }
    
    public final boolean sendControlRequest(int paramInt, Intent paramIntent, MediaRouter.ControlRequestCallback paramControlRequestCallback)
    {
      int i = mNextRequestId;
      mNextRequestId = (i + 1);
      if (sendRequest(9, i, paramInt, paramIntent, null))
      {
        if (paramControlRequestCallback != null) {
          mPendingCallbacks.put(i, paramControlRequestCallback);
        }
        return true;
      }
      return false;
    }
    
    public final void setDiscoveryRequest(MediaRouteDiscoveryRequest paramMediaRouteDiscoveryRequest)
    {
      int i = mNextRequestId;
      mNextRequestId = (i + 1);
      if (paramMediaRouteDiscoveryRequest != null) {}
      for (paramMediaRouteDiscoveryRequest = paramMediaRouteDiscoveryRequest.asBundle();; paramMediaRouteDiscoveryRequest = null)
      {
        sendRequest(10, i, 0, paramMediaRouteDiscoveryRequest, null);
        return;
      }
    }
    
    public final void setVolume(int paramInt1, int paramInt2)
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("volume", paramInt2);
      paramInt2 = mNextRequestId;
      mNextRequestId = (paramInt2 + 1);
      sendRequest(7, paramInt2, paramInt1, null, localBundle);
    }
    
    public final void unselectRoute(int paramInt1, int paramInt2)
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("unselectReason", paramInt2);
      paramInt2 = mNextRequestId;
      mNextRequestId = (paramInt2 + 1);
      sendRequest(6, paramInt2, paramInt1, null, localBundle);
    }
    
    public final void updateVolume(int paramInt1, int paramInt2)
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("volume", paramInt2);
      paramInt2 = mNextRequestId;
      mNextRequestId = (paramInt2 + 1);
      sendRequest(8, paramInt2, paramInt1, null, localBundle);
    }
  }
  
  private final class Controller
    extends MediaRouteProvider.RouteController
  {
    private RegisteredMediaRouteProvider.Connection mConnection;
    private int mControllerId;
    private int mPendingSetVolume = -1;
    private int mPendingUpdateVolumeDelta;
    private final String mRouteId;
    private boolean mSelected;
    
    public Controller(String paramString)
    {
      mRouteId = paramString;
    }
    
    public final void attachConnection(RegisteredMediaRouteProvider.Connection paramConnection)
    {
      mConnection = paramConnection;
      mControllerId = paramConnection.createRouteController(mRouteId);
      if (mSelected)
      {
        paramConnection.selectRoute(mControllerId);
        if (mPendingSetVolume >= 0)
        {
          paramConnection.setVolume(mControllerId, mPendingSetVolume);
          mPendingSetVolume = -1;
        }
        if (mPendingUpdateVolumeDelta != 0)
        {
          paramConnection.updateVolume(mControllerId, mPendingUpdateVolumeDelta);
          mPendingUpdateVolumeDelta = 0;
        }
      }
    }
    
    public final void detachConnection()
    {
      if (mConnection != null)
      {
        mConnection.releaseRouteController(mControllerId);
        mConnection = null;
        mControllerId = 0;
      }
    }
    
    public final boolean onControlRequest(Intent paramIntent, MediaRouter.ControlRequestCallback paramControlRequestCallback)
    {
      if (mConnection != null) {
        return mConnection.sendControlRequest(mControllerId, paramIntent, paramControlRequestCallback);
      }
      return false;
    }
    
    public final void onRelease()
    {
      RegisteredMediaRouteProvider.this.onControllerReleased(this);
    }
    
    public final void onSelect()
    {
      mSelected = true;
      if (mConnection != null) {
        mConnection.selectRoute(mControllerId);
      }
    }
    
    public final void onSetVolume(int paramInt)
    {
      if (mConnection != null)
      {
        mConnection.setVolume(mControllerId, paramInt);
        return;
      }
      mPendingSetVolume = paramInt;
      mPendingUpdateVolumeDelta = 0;
    }
    
    public final void onUnselect()
    {
      onUnselect(0);
    }
    
    public final void onUnselect(int paramInt)
    {
      mSelected = false;
      if (mConnection != null) {
        mConnection.unselectRoute(mControllerId, paramInt);
      }
    }
    
    public final void onUpdateVolume(int paramInt)
    {
      if (mConnection != null)
      {
        mConnection.updateVolume(mControllerId, paramInt);
        return;
      }
      mPendingUpdateVolumeDelta += paramInt;
    }
  }
  
  private final class PrivateHandler
    extends Handler
  {
    private PrivateHandler() {}
  }
  
  private static final class ReceiveHandler
    extends Handler
  {
    private final WeakReference<RegisteredMediaRouteProvider.Connection> mConnectionRef;
    
    public ReceiveHandler(RegisteredMediaRouteProvider.Connection paramConnection)
    {
      mConnectionRef = new WeakReference(paramConnection);
    }
    
    private boolean processMessage(RegisteredMediaRouteProvider.Connection paramConnection, int paramInt1, int paramInt2, int paramInt3, Object paramObject, Bundle paramBundle)
    {
      switch (paramInt1)
      {
      }
      do
      {
        do
        {
          do
          {
            do
            {
              return false;
              paramConnection.onGenericFailure(paramInt2);
              return true;
              paramConnection.onGenericSuccess(paramInt2);
              return true;
            } while ((paramObject != null) && (!(paramObject instanceof Bundle)));
            return paramConnection.onRegistered(paramInt2, paramInt3, (Bundle)paramObject);
          } while ((paramObject != null) && (!(paramObject instanceof Bundle)));
          return paramConnection.onDescriptorChanged((Bundle)paramObject);
        } while ((paramObject != null) && (!(paramObject instanceof Bundle)));
        return paramConnection.onControlRequestSucceeded(paramInt2, (Bundle)paramObject);
      } while ((paramObject != null) && (!(paramObject instanceof Bundle)));
      if (paramBundle == null) {}
      for (paramBundle = null;; paramBundle = paramBundle.getString("error")) {
        return paramConnection.onControlRequestFailed(paramInt2, paramBundle, (Bundle)paramObject);
      }
    }
    
    public final void dispose()
    {
      mConnectionRef.clear();
    }
    
    public final void handleMessage(Message paramMessage)
    {
      RegisteredMediaRouteProvider.Connection localConnection = (RegisteredMediaRouteProvider.Connection)mConnectionRef.get();
      if ((localConnection != null) && (!processMessage(localConnection, what, arg1, arg2, obj, paramMessage.peekData())) && (RegisteredMediaRouteProvider.DEBUG)) {
        new StringBuilder("Unhandled message from server: ").append(paramMessage);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.RegisteredMediaRouteProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */