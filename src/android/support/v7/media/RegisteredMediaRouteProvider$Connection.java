package android.support.v7.media;

import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;

final class RegisteredMediaRouteProvider$Connection
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
  
  public RegisteredMediaRouteProvider$Connection(RegisteredMediaRouteProvider paramRegisteredMediaRouteProvider, Messenger paramMessenger)
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
    RegisteredMediaRouteProvider.access$300(this$0).post(new Runnable()
    {
      public void run()
      {
        RegisteredMediaRouteProvider.access$700(this$0, RegisteredMediaRouteProvider.Connection.this);
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
    RegisteredMediaRouteProvider.access$300(this$0).post(new Runnable()
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
      RegisteredMediaRouteProvider.access$500(this$0, this, MediaRouteProviderDescriptor.fromBundle(paramBundle));
      return true;
    }
    return false;
  }
  
  public final boolean onGenericFailure(int paramInt)
  {
    if (paramInt == mPendingRegisterRequestId)
    {
      mPendingRegisterRequestId = 0;
      RegisteredMediaRouteProvider.access$400(this$0, this, "Registation failed");
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
          RegisteredMediaRouteProvider.access$500(this$0, this, MediaRouteProviderDescriptor.fromBundle(paramBundle));
          RegisteredMediaRouteProvider.access$600(this$0, this);
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

/* Location:
 * Qualified Name:     android.support.v7.media.RegisteredMediaRouteProvider.Connection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */