package android.support.v7.media;

import android.app.Service;
import android.content.Intent;
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

public abstract class MediaRouteProviderService
  extends Service
{
  private static final boolean DEBUG = Log.isLoggable("MediaRouteProviderSrv", 3);
  private static final int PRIVATE_MSG_CLIENT_DIED = 1;
  public static final String SERVICE_INTERFACE = "android.media.MediaRouteProviderService";
  private static final String TAG = "MediaRouteProviderSrv";
  private final ArrayList<ClientRecord> mClients = new ArrayList();
  private MediaRouteDiscoveryRequest mCompositeDiscoveryRequest;
  private final PrivateHandler mPrivateHandler = new PrivateHandler(null);
  private MediaRouteProvider mProvider;
  private final ProviderCallback mProviderCallback = new ProviderCallback(null);
  private final ReceiveHandler mReceiveHandler = new ReceiveHandler(this);
  private final Messenger mReceiveMessenger = new Messenger(mReceiveHandler);
  
  private int findClient(Messenger paramMessenger)
  {
    int j = mClients.size();
    int i = 0;
    while (i < j)
    {
      if (((ClientRecord)mClients.get(i)).hasMessenger(paramMessenger)) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  private ClientRecord getClient(Messenger paramMessenger)
  {
    int i = findClient(paramMessenger);
    if (i >= 0) {
      return (ClientRecord)mClients.get(i);
    }
    return null;
  }
  
  private static String getClientId(Messenger paramMessenger)
  {
    return "Client connection " + paramMessenger.getBinder().toString();
  }
  
  private void onBinderDied(Messenger paramMessenger)
  {
    int i = findClient(paramMessenger);
    if (i >= 0)
    {
      paramMessenger = (ClientRecord)mClients.remove(i);
      if (DEBUG) {
        new StringBuilder().append(paramMessenger).append(": Binder died");
      }
      paramMessenger.dispose();
    }
  }
  
  private boolean onCreateRouteController(Messenger paramMessenger, int paramInt1, int paramInt2, String paramString)
  {
    ClientRecord localClientRecord = getClient(paramMessenger);
    if ((localClientRecord != null) && (localClientRecord.createRouteController(paramString, paramInt2)))
    {
      if (DEBUG) {
        new StringBuilder().append(localClientRecord).append(": Route controller created, controllerId=").append(paramInt2).append(", routeId=").append(paramString);
      }
      sendGenericSuccess(paramMessenger, paramInt1);
      return true;
    }
    return false;
  }
  
  private boolean onRegisterClient(Messenger paramMessenger, int paramInt1, int paramInt2)
  {
    if ((paramInt2 > 0) && (findClient(paramMessenger) < 0))
    {
      Object localObject = new ClientRecord(paramMessenger, paramInt2);
      if (((ClientRecord)localObject).register())
      {
        mClients.add(localObject);
        if (DEBUG) {
          new StringBuilder().append(localObject).append(": Registered, version=").append(paramInt2);
        }
        if (paramInt1 != 0)
        {
          localObject = mProvider.getDescriptor();
          if (localObject == null) {
            break label108;
          }
        }
        label108:
        for (localObject = ((MediaRouteProviderDescriptor)localObject).asBundle();; localObject = null)
        {
          sendReply(paramMessenger, 2, paramInt1, 1, localObject, null);
          return true;
        }
      }
    }
    return false;
  }
  
  private boolean onReleaseRouteController(Messenger paramMessenger, int paramInt1, int paramInt2)
  {
    ClientRecord localClientRecord = getClient(paramMessenger);
    if ((localClientRecord != null) && (localClientRecord.releaseRouteController(paramInt2)))
    {
      if (DEBUG) {
        new StringBuilder().append(localClientRecord).append(": Route controller released, controllerId=").append(paramInt2);
      }
      sendGenericSuccess(paramMessenger, paramInt1);
      return true;
    }
    return false;
  }
  
  private boolean onRouteControlRequest(final Messenger paramMessenger, final int paramInt1, final int paramInt2, final Intent paramIntent)
  {
    final ClientRecord localClientRecord = getClient(paramMessenger);
    if (localClientRecord != null)
    {
      MediaRouteProvider.RouteController localRouteController = localClientRecord.getRouteController(paramInt2);
      if (localRouteController != null)
      {
        MediaRouter.ControlRequestCallback local1 = null;
        if (paramInt1 != 0) {
          local1 = new MediaRouter.ControlRequestCallback()
          {
            public void onError(String paramAnonymousString, Bundle paramAnonymousBundle)
            {
              if (MediaRouteProviderService.DEBUG) {
                new StringBuilder().append(localClientRecord).append(": Route control request failed, controllerId=").append(paramInt2).append(", intent=").append(paramIntent).append(", error=").append(paramAnonymousString).append(", data=").append(paramAnonymousBundle);
              }
              if (MediaRouteProviderService.this.findClient(paramMessenger) >= 0)
              {
                if (paramAnonymousString != null)
                {
                  Bundle localBundle = new Bundle();
                  localBundle.putString("error", paramAnonymousString);
                  MediaRouteProviderService.sendReply(paramMessenger, 4, paramInt1, 0, paramAnonymousBundle, localBundle);
                }
              }
              else {
                return;
              }
              MediaRouteProviderService.sendReply(paramMessenger, 4, paramInt1, 0, paramAnonymousBundle, null);
            }
            
            public void onResult(Bundle paramAnonymousBundle)
            {
              if (MediaRouteProviderService.DEBUG) {
                new StringBuilder().append(localClientRecord).append(": Route control request succeeded, controllerId=").append(paramInt2).append(", intent=").append(paramIntent).append(", data=").append(paramAnonymousBundle);
              }
              if (MediaRouteProviderService.this.findClient(paramMessenger) >= 0) {
                MediaRouteProviderService.sendReply(paramMessenger, 3, paramInt1, 0, paramAnonymousBundle, null);
              }
            }
          };
        }
        if (localRouteController.onControlRequest(paramIntent, local1))
        {
          if (DEBUG) {
            new StringBuilder().append(localClientRecord).append(": Route control request delivered, controllerId=").append(paramInt2).append(", intent=").append(paramIntent);
          }
          return true;
        }
      }
    }
    return false;
  }
  
  private boolean onSelectRoute(Messenger paramMessenger, int paramInt1, int paramInt2)
  {
    ClientRecord localClientRecord = getClient(paramMessenger);
    if (localClientRecord != null)
    {
      MediaRouteProvider.RouteController localRouteController = localClientRecord.getRouteController(paramInt2);
      if (localRouteController != null)
      {
        localRouteController.onSelect();
        if (DEBUG) {
          new StringBuilder().append(localClientRecord).append(": Route selected, controllerId=").append(paramInt2);
        }
        sendGenericSuccess(paramMessenger, paramInt1);
        return true;
      }
    }
    return false;
  }
  
  private boolean onSetDiscoveryRequest(Messenger paramMessenger, int paramInt, MediaRouteDiscoveryRequest paramMediaRouteDiscoveryRequest)
  {
    ClientRecord localClientRecord = getClient(paramMessenger);
    if (localClientRecord != null)
    {
      boolean bool = localClientRecord.setDiscoveryRequest(paramMediaRouteDiscoveryRequest);
      if (DEBUG) {
        new StringBuilder().append(localClientRecord).append(": Set discovery request, request=").append(paramMediaRouteDiscoveryRequest).append(", actuallyChanged=").append(bool).append(", compositeDiscoveryRequest=").append(mCompositeDiscoveryRequest);
      }
      sendGenericSuccess(paramMessenger, paramInt);
      return true;
    }
    return false;
  }
  
  private boolean onSetRouteVolume(Messenger paramMessenger, int paramInt1, int paramInt2, int paramInt3)
  {
    ClientRecord localClientRecord = getClient(paramMessenger);
    if (localClientRecord != null)
    {
      MediaRouteProvider.RouteController localRouteController = localClientRecord.getRouteController(paramInt2);
      if (localRouteController != null)
      {
        localRouteController.onSetVolume(paramInt3);
        if (DEBUG) {
          new StringBuilder().append(localClientRecord).append(": Route volume changed, controllerId=").append(paramInt2).append(", volume=").append(paramInt3);
        }
        sendGenericSuccess(paramMessenger, paramInt1);
        return true;
      }
    }
    return false;
  }
  
  private boolean onUnregisterClient(Messenger paramMessenger, int paramInt)
  {
    int i = findClient(paramMessenger);
    if (i >= 0)
    {
      ClientRecord localClientRecord = (ClientRecord)mClients.remove(i);
      if (DEBUG) {
        new StringBuilder().append(localClientRecord).append(": Unregistered");
      }
      localClientRecord.dispose();
      sendGenericSuccess(paramMessenger, paramInt);
      return true;
    }
    return false;
  }
  
  private boolean onUnselectRoute(Messenger paramMessenger, int paramInt1, int paramInt2, int paramInt3)
  {
    ClientRecord localClientRecord = getClient(paramMessenger);
    if (localClientRecord != null)
    {
      MediaRouteProvider.RouteController localRouteController = localClientRecord.getRouteController(paramInt2);
      if (localRouteController != null)
      {
        localRouteController.onUnselect(paramInt3);
        if (DEBUG) {
          new StringBuilder().append(localClientRecord).append(": Route unselected, controllerId=").append(paramInt2);
        }
        sendGenericSuccess(paramMessenger, paramInt1);
        return true;
      }
    }
    return false;
  }
  
  private boolean onUpdateRouteVolume(Messenger paramMessenger, int paramInt1, int paramInt2, int paramInt3)
  {
    ClientRecord localClientRecord = getClient(paramMessenger);
    if (localClientRecord != null)
    {
      MediaRouteProvider.RouteController localRouteController = localClientRecord.getRouteController(paramInt2);
      if (localRouteController != null)
      {
        localRouteController.onUpdateVolume(paramInt3);
        if (DEBUG) {
          new StringBuilder().append(localClientRecord).append(": Route volume updated, controllerId=").append(paramInt2).append(", delta=").append(paramInt3);
        }
        sendGenericSuccess(paramMessenger, paramInt1);
        return true;
      }
    }
    return false;
  }
  
  private void sendDescriptorChanged(MediaRouteProviderDescriptor paramMediaRouteProviderDescriptor)
  {
    if (paramMediaRouteProviderDescriptor != null) {}
    for (Bundle localBundle = paramMediaRouteProviderDescriptor.asBundle();; localBundle = null)
    {
      int j = mClients.size();
      int i = 0;
      while (i < j)
      {
        ClientRecord localClientRecord = (ClientRecord)mClients.get(i);
        sendReply(mMessenger, 5, 0, 0, localBundle, null);
        if (DEBUG) {
          new StringBuilder().append(localClientRecord).append(": Sent descriptor change event, descriptor=").append(paramMediaRouteProviderDescriptor);
        }
        i += 1;
      }
    }
  }
  
  private static void sendGenericFailure(Messenger paramMessenger, int paramInt)
  {
    if (paramInt != 0) {
      sendReply(paramMessenger, 0, paramInt, 0, null, null);
    }
  }
  
  private static void sendGenericSuccess(Messenger paramMessenger, int paramInt)
  {
    if (paramInt != 0) {
      sendReply(paramMessenger, 1, paramInt, 0, null, null);
    }
  }
  
  private static void sendReply(Messenger paramMessenger, int paramInt1, int paramInt2, int paramInt3, Object paramObject, Bundle paramBundle)
  {
    Message localMessage = Message.obtain();
    what = paramInt1;
    arg1 = paramInt2;
    arg2 = paramInt3;
    obj = paramObject;
    localMessage.setData(paramBundle);
    try
    {
      paramMessenger.send(localMessage);
      return;
    }
    catch (RemoteException paramObject)
    {
      Log.e("MediaRouteProviderSrv", "Could not send message to " + getClientId(paramMessenger), (Throwable)paramObject);
      return;
    }
    catch (DeadObjectException paramMessenger) {}
  }
  
  private boolean updateCompositeDiscoveryRequest()
  {
    Object localObject2 = null;
    int j = mClients.size();
    int i = 0;
    boolean bool = false;
    Object localObject1 = null;
    Object localObject3;
    if (i < j)
    {
      localObject3 = mClients.get(i)).mDiscoveryRequest;
      if ((localObject3 == null) || ((((MediaRouteDiscoveryRequest)localObject3).getSelector().isEmpty()) && (!((MediaRouteDiscoveryRequest)localObject3).isActiveScan()))) {
        break label218;
      }
      bool = ((MediaRouteDiscoveryRequest)localObject3).isActiveScan() | bool;
      if (localObject1 == null)
      {
        localObject1 = localObject2;
        localObject2 = localObject3;
      }
    }
    for (;;)
    {
      i += 1;
      localObject3 = localObject2;
      localObject2 = localObject1;
      localObject1 = localObject3;
      break;
      if (localObject2 == null) {
        localObject2 = new MediaRouteSelector.Builder(((MediaRouteDiscoveryRequest)localObject1).getSelector());
      }
      for (;;)
      {
        ((MediaRouteSelector.Builder)localObject2).addSelector(((MediaRouteDiscoveryRequest)localObject3).getSelector());
        localObject3 = localObject1;
        localObject1 = localObject2;
        localObject2 = localObject3;
        break;
        if (localObject2 != null) {
          localObject1 = new MediaRouteDiscoveryRequest(((MediaRouteSelector.Builder)localObject2).build(), bool);
        }
        if ((mCompositeDiscoveryRequest != localObject1) && ((mCompositeDiscoveryRequest == null) || (!mCompositeDiscoveryRequest.equals(localObject1))))
        {
          mCompositeDiscoveryRequest = ((MediaRouteDiscoveryRequest)localObject1);
          mProvider.setDiscoveryRequest((MediaRouteDiscoveryRequest)localObject1);
          return true;
        }
        return false;
      }
      label218:
      localObject3 = localObject1;
      localObject1 = localObject2;
      localObject2 = localObject3;
    }
  }
  
  public MediaRouteProvider getMediaRouteProvider()
  {
    return mProvider;
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.media.MediaRouteProviderService"))
    {
      if (mProvider == null)
      {
        paramIntent = onCreateMediaRouteProvider();
        if (paramIntent != null)
        {
          String str = paramIntent.getMetadata().getPackageName();
          if (!str.equals(getPackageName())) {
            throw new IllegalStateException("onCreateMediaRouteProvider() returned a provider whose package name does not match the package name of the service.  A media route provider service can only export its own media route providers.  Provider package name: " + str + ".  Service package name: " + getPackageName() + ".");
          }
          mProvider = paramIntent;
          mProvider.setCallback(mProviderCallback);
        }
      }
      if (mProvider != null) {
        return mReceiveMessenger.getBinder();
      }
    }
    return null;
  }
  
  public abstract MediaRouteProvider onCreateMediaRouteProvider();
  
  private final class ClientRecord
    implements IBinder.DeathRecipient
  {
    private final SparseArray<MediaRouteProvider.RouteController> mControllers = new SparseArray();
    public MediaRouteDiscoveryRequest mDiscoveryRequest;
    public final Messenger mMessenger;
    public final int mVersion;
    
    public ClientRecord(Messenger paramMessenger, int paramInt)
    {
      mMessenger = paramMessenger;
      mVersion = paramInt;
    }
    
    public final void binderDied()
    {
      mPrivateHandler.obtainMessage(1, mMessenger).sendToTarget();
    }
    
    public final boolean createRouteController(String paramString, int paramInt)
    {
      if (mControllers.indexOfKey(paramInt) < 0)
      {
        paramString = mProvider.onCreateRouteController(paramString);
        if (paramString != null)
        {
          mControllers.put(paramInt, paramString);
          return true;
        }
      }
      return false;
    }
    
    public final void dispose()
    {
      int j = mControllers.size();
      int i = 0;
      while (i < j)
      {
        ((MediaRouteProvider.RouteController)mControllers.valueAt(i)).onRelease();
        i += 1;
      }
      mControllers.clear();
      mMessenger.getBinder().unlinkToDeath(this, 0);
      setDiscoveryRequest(null);
    }
    
    public final MediaRouteProvider.RouteController getRouteController(int paramInt)
    {
      return (MediaRouteProvider.RouteController)mControllers.get(paramInt);
    }
    
    public final boolean hasMessenger(Messenger paramMessenger)
    {
      return mMessenger.getBinder() == paramMessenger.getBinder();
    }
    
    public final boolean register()
    {
      try
      {
        mMessenger.getBinder().linkToDeath(this, 0);
        return true;
      }
      catch (RemoteException localRemoteException)
      {
        binderDied();
      }
      return false;
    }
    
    public final boolean releaseRouteController(int paramInt)
    {
      MediaRouteProvider.RouteController localRouteController = (MediaRouteProvider.RouteController)mControllers.get(paramInt);
      if (localRouteController != null)
      {
        mControllers.remove(paramInt);
        localRouteController.onRelease();
        return true;
      }
      return false;
    }
    
    public final boolean setDiscoveryRequest(MediaRouteDiscoveryRequest paramMediaRouteDiscoveryRequest)
    {
      if ((mDiscoveryRequest != paramMediaRouteDiscoveryRequest) && ((mDiscoveryRequest == null) || (!mDiscoveryRequest.equals(paramMediaRouteDiscoveryRequest))))
      {
        mDiscoveryRequest = paramMediaRouteDiscoveryRequest;
        return MediaRouteProviderService.this.updateCompositeDiscoveryRequest();
      }
      return false;
    }
    
    public final String toString()
    {
      return MediaRouteProviderService.getClientId(mMessenger);
    }
  }
  
  private final class PrivateHandler
    extends Handler
  {
    private PrivateHandler() {}
    
    public final void handleMessage(Message paramMessage)
    {
      switch (what)
      {
      default: 
        return;
      }
      MediaRouteProviderService.this.onBinderDied((Messenger)obj);
    }
  }
  
  private final class ProviderCallback
    extends MediaRouteProvider.Callback
  {
    private ProviderCallback() {}
    
    public final void onDescriptorChanged(MediaRouteProvider paramMediaRouteProvider, MediaRouteProviderDescriptor paramMediaRouteProviderDescriptor)
    {
      MediaRouteProviderService.this.sendDescriptorChanged(paramMediaRouteProviderDescriptor);
    }
  }
  
  private static final class ReceiveHandler
    extends Handler
  {
    private final WeakReference<MediaRouteProviderService> mServiceRef;
    
    public ReceiveHandler(MediaRouteProviderService paramMediaRouteProviderService)
    {
      mServiceRef = new WeakReference(paramMediaRouteProviderService);
    }
    
    private boolean processMessage(int paramInt1, Messenger paramMessenger, int paramInt2, int paramInt3, Object paramObject, Bundle paramBundle)
    {
      int i = 0;
      MediaRouteProviderService localMediaRouteProviderService = (MediaRouteProviderService)mServiceRef.get();
      if (localMediaRouteProviderService != null) {
        switch (paramInt1)
        {
        }
      }
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return false;
                return localMediaRouteProviderService.onRegisterClient(paramMessenger, paramInt2, paramInt3);
                return localMediaRouteProviderService.onUnregisterClient(paramMessenger, paramInt2);
                paramObject = paramBundle.getString("routeId");
              } while (paramObject == null);
              return localMediaRouteProviderService.onCreateRouteController(paramMessenger, paramInt2, paramInt3, (String)paramObject);
              return localMediaRouteProviderService.onReleaseRouteController(paramMessenger, paramInt2, paramInt3);
              return localMediaRouteProviderService.onSelectRoute(paramMessenger, paramInt2, paramInt3);
              if (paramBundle == null) {}
              for (paramInt1 = i;; paramInt1 = paramBundle.getInt("unselectReason", 0)) {
                return localMediaRouteProviderService.onUnselectRoute(paramMessenger, paramInt2, paramInt3, paramInt1);
              }
              paramInt1 = paramBundle.getInt("volume", -1);
            } while (paramInt1 < 0);
            return localMediaRouteProviderService.onSetRouteVolume(paramMessenger, paramInt2, paramInt3, paramInt1);
            paramInt1 = paramBundle.getInt("volume", 0);
          } while (paramInt1 == 0);
          return localMediaRouteProviderService.onUpdateRouteVolume(paramMessenger, paramInt2, paramInt3, paramInt1);
        } while (!(paramObject instanceof Intent));
        return localMediaRouteProviderService.onRouteControlRequest(paramMessenger, paramInt2, paramInt3, (Intent)paramObject);
      } while ((paramObject != null) && (!(paramObject instanceof Bundle)));
      paramObject = MediaRouteDiscoveryRequest.fromBundle((Bundle)paramObject);
      if ((paramObject != null) && (((MediaRouteDiscoveryRequest)paramObject).isValid())) {}
      for (;;)
      {
        return localMediaRouteProviderService.onSetDiscoveryRequest(paramMessenger, paramInt2, (MediaRouteDiscoveryRequest)paramObject);
        paramObject = null;
      }
    }
    
    public final void handleMessage(Message paramMessage)
    {
      Messenger localMessenger = replyTo;
      if (MediaRouteProviderProtocol.isValidRemoteMessenger(localMessenger))
      {
        int i = what;
        int j = arg1;
        int k = arg2;
        Object localObject = obj;
        paramMessage = paramMessage.peekData();
        if (!processMessage(i, localMessenger, j, k, localObject, paramMessage))
        {
          if (MediaRouteProviderService.DEBUG) {
            new StringBuilder().append(MediaRouteProviderService.getClientId(localMessenger)).append(": Message failed, what=").append(i).append(", requestId=").append(j).append(", arg=").append(k).append(", obj=").append(localObject).append(", data=").append(paramMessage);
          }
          MediaRouteProviderService.sendGenericFailure(localMessenger, j);
        }
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteProviderService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */