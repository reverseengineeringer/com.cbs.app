package android.support.v7.media;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import java.lang.ref.WeakReference;

final class MediaRouteProviderService$ReceiveHandler
  extends Handler
{
  private final WeakReference<MediaRouteProviderService> mServiceRef;
  
  public MediaRouteProviderService$ReceiveHandler(MediaRouteProviderService paramMediaRouteProviderService)
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
              return MediaRouteProviderService.access$1200(localMediaRouteProviderService, paramMessenger, paramInt2, paramInt3);
              return MediaRouteProviderService.access$1300(localMediaRouteProviderService, paramMessenger, paramInt2);
              paramObject = paramBundle.getString("routeId");
            } while (paramObject == null);
            return MediaRouteProviderService.access$1400(localMediaRouteProviderService, paramMessenger, paramInt2, paramInt3, (String)paramObject);
            return MediaRouteProviderService.access$1500(localMediaRouteProviderService, paramMessenger, paramInt2, paramInt3);
            return MediaRouteProviderService.access$1600(localMediaRouteProviderService, paramMessenger, paramInt2, paramInt3);
            if (paramBundle == null) {}
            for (paramInt1 = i;; paramInt1 = paramBundle.getInt("unselectReason", 0)) {
              return MediaRouteProviderService.access$1700(localMediaRouteProviderService, paramMessenger, paramInt2, paramInt3, paramInt1);
            }
            paramInt1 = paramBundle.getInt("volume", -1);
          } while (paramInt1 < 0);
          return MediaRouteProviderService.access$1800(localMediaRouteProviderService, paramMessenger, paramInt2, paramInt3, paramInt1);
          paramInt1 = paramBundle.getInt("volume", 0);
        } while (paramInt1 == 0);
        return MediaRouteProviderService.access$1900(localMediaRouteProviderService, paramMessenger, paramInt2, paramInt3, paramInt1);
      } while (!(paramObject instanceof Intent));
      return MediaRouteProviderService.access$2000(localMediaRouteProviderService, paramMessenger, paramInt2, paramInt3, (Intent)paramObject);
    } while ((paramObject != null) && (!(paramObject instanceof Bundle)));
    paramObject = MediaRouteDiscoveryRequest.fromBundle((Bundle)paramObject);
    if ((paramObject != null) && (((MediaRouteDiscoveryRequest)paramObject).isValid())) {}
    for (;;)
    {
      return MediaRouteProviderService.access$2100(localMediaRouteProviderService, paramMessenger, paramInt2, (MediaRouteDiscoveryRequest)paramObject);
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
        if (MediaRouteProviderService.access$200()) {
          new StringBuilder().append(MediaRouteProviderService.access$1000(localMessenger)).append(": Message failed, what=").append(i).append(", requestId=").append(j).append(", arg=").append(k).append(", obj=").append(localObject).append(", data=").append(paramMessage);
        }
        MediaRouteProviderService.access$1100(localMessenger, j);
      }
      return;
    }
    MediaRouteProviderService.access$200();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteProviderService.ReceiveHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */