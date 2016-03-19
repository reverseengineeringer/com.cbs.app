package android.support.v7.media;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;

public class RemotePlaybackClient
{
  private static final boolean DEBUG = Log.isLoggable("RemotePlaybackClient", 3);
  private static final String TAG = "RemotePlaybackClient";
  private final Context mContext;
  private final PendingIntent mItemStatusPendingIntent;
  private final MediaRouter.RouteInfo mRoute;
  private boolean mRouteSupportsQueuing;
  private boolean mRouteSupportsRemotePlayback;
  private boolean mRouteSupportsSessionManagement;
  private String mSessionId;
  private final PendingIntent mSessionStatusPendingIntent;
  private StatusCallback mStatusCallback;
  private final StatusReceiver mStatusReceiver;
  
  public RemotePlaybackClient(Context paramContext, MediaRouter.RouteInfo paramRouteInfo)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("context must not be null");
    }
    if (paramRouteInfo == null) {
      throw new IllegalArgumentException("route must not be null");
    }
    mContext = paramContext;
    mRoute = paramRouteInfo;
    paramRouteInfo = new IntentFilter();
    paramRouteInfo.addAction("android.support.v7.media.actions.ACTION_ITEM_STATUS_CHANGED");
    paramRouteInfo.addAction("android.support.v7.media.actions.ACTION_SESSION_STATUS_CHANGED");
    mStatusReceiver = new StatusReceiver(null);
    paramContext.registerReceiver(mStatusReceiver, paramRouteInfo);
    paramRouteInfo = new Intent("android.support.v7.media.actions.ACTION_ITEM_STATUS_CHANGED");
    paramRouteInfo.setPackage(paramContext.getPackageName());
    mItemStatusPendingIntent = PendingIntent.getBroadcast(paramContext, 0, paramRouteInfo, 0);
    paramRouteInfo = new Intent("android.support.v7.media.actions.ACTION_SESSION_STATUS_CHANGED");
    paramRouteInfo.setPackage(paramContext.getPackageName());
    mSessionStatusPendingIntent = PendingIntent.getBroadcast(paramContext, 0, paramRouteInfo, 0);
    detectFeatures();
  }
  
  private void adoptSession(String paramString)
  {
    if (paramString != null) {
      setSessionId(paramString);
    }
  }
  
  private static String bundleToString(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      paramBundle.size();
      return paramBundle.toString();
    }
    return "null";
  }
  
  private void detectFeatures()
  {
    boolean bool2 = true;
    if ((routeSupportsAction("android.media.intent.action.PLAY")) && (routeSupportsAction("android.media.intent.action.SEEK")) && (routeSupportsAction("android.media.intent.action.GET_STATUS")) && (routeSupportsAction("android.media.intent.action.PAUSE")) && (routeSupportsAction("android.media.intent.action.RESUME")) && (routeSupportsAction("android.media.intent.action.STOP")))
    {
      bool1 = true;
      mRouteSupportsRemotePlayback = bool1;
      if ((!mRouteSupportsRemotePlayback) || (!routeSupportsAction("android.media.intent.action.ENQUEUE")) || (!routeSupportsAction("android.media.intent.action.REMOVE"))) {
        break label142;
      }
      bool1 = true;
      label90:
      mRouteSupportsQueuing = bool1;
      if ((!mRouteSupportsRemotePlayback) || (!routeSupportsAction("android.media.intent.action.START_SESSION")) || (!routeSupportsAction("android.media.intent.action.GET_SESSION_STATUS")) || (!routeSupportsAction("android.media.intent.action.END_SESSION"))) {
        break label147;
      }
    }
    label142:
    label147:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      mRouteSupportsSessionManagement = bool1;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label90;
    }
  }
  
  private void handleError(Intent paramIntent, ActionCallback paramActionCallback, String paramString, Bundle paramBundle)
  {
    int i = 0;
    if (paramBundle != null) {
      i = paramBundle.getInt("android.media.intent.extra.ERROR_CODE", 0);
    }
    if (DEBUG) {
      new StringBuilder("Received error from ").append(paramIntent.getAction()).append(": error=").append(paramString).append(", code=").append(i).append(", data=").append(bundleToString(paramBundle));
    }
    paramActionCallback.onError(paramString, i, paramBundle);
  }
  
  private void handleInvalidResult(Intent paramIntent, ActionCallback paramActionCallback, Bundle paramBundle)
  {
    new StringBuilder("Received invalid result data from ").append(paramIntent.getAction()).append(": data=").append(bundleToString(paramBundle));
    paramActionCallback.onError(null, 0, paramBundle);
  }
  
  private static String inferMissingResult(String paramString1, String paramString2)
  {
    if (paramString2 == null) {
      return paramString1;
    }
    if ((paramString1 == null) || (paramString1.equals(paramString2))) {
      return paramString2;
    }
    return null;
  }
  
  private static void logRequest(Intent paramIntent)
  {
    if (DEBUG) {
      new StringBuilder("Sending request: ").append(paramIntent);
    }
  }
  
  private void performItemAction(final Intent paramIntent, final String paramString1, final String paramString2, Bundle paramBundle, final ItemActionCallback paramItemActionCallback)
  {
    paramIntent.addCategory("android.media.intent.category.REMOTE_PLAYBACK");
    if (paramString1 != null) {
      paramIntent.putExtra("android.media.intent.extra.SESSION_ID", paramString1);
    }
    if (paramString2 != null) {
      paramIntent.putExtra("android.media.intent.extra.ITEM_ID", paramString2);
    }
    if (paramBundle != null) {
      paramIntent.putExtras(paramBundle);
    }
    logRequest(paramIntent);
    mRoute.sendControlRequest(paramIntent, new MediaRouter.ControlRequestCallback()
    {
      public void onError(String paramAnonymousString, Bundle paramAnonymousBundle)
      {
        RemotePlaybackClient.this.handleError(paramIntent, paramItemActionCallback, paramAnonymousString, paramAnonymousBundle);
      }
      
      public void onResult(Bundle paramAnonymousBundle)
      {
        if (paramAnonymousBundle != null)
        {
          String str1 = RemotePlaybackClient.inferMissingResult(paramString1, paramAnonymousBundle.getString("android.media.intent.extra.SESSION_ID"));
          MediaSessionStatus localMediaSessionStatus = MediaSessionStatus.fromBundle(paramAnonymousBundle.getBundle("android.media.intent.extra.SESSION_STATUS"));
          String str2 = RemotePlaybackClient.inferMissingResult(paramString2, paramAnonymousBundle.getString("android.media.intent.extra.ITEM_ID"));
          MediaItemStatus localMediaItemStatus = MediaItemStatus.fromBundle(paramAnonymousBundle.getBundle("android.media.intent.extra.ITEM_STATUS"));
          RemotePlaybackClient.this.adoptSession(str1);
          if ((str1 != null) && (str2 != null) && (localMediaItemStatus != null))
          {
            if (RemotePlaybackClient.DEBUG) {
              new StringBuilder("Received result from ").append(paramIntent.getAction()).append(": data=").append(RemotePlaybackClient.bundleToString(paramAnonymousBundle)).append(", sessionId=").append(str1).append(", sessionStatus=").append(localMediaSessionStatus).append(", itemId=").append(str2).append(", itemStatus=").append(localMediaItemStatus);
            }
            paramItemActionCallback.onResult(paramAnonymousBundle, str1, localMediaSessionStatus, str2, localMediaItemStatus);
            return;
          }
        }
        RemotePlaybackClient.this.handleInvalidResult(paramIntent, paramItemActionCallback, paramAnonymousBundle);
      }
    });
  }
  
  private void performSessionAction(final Intent paramIntent, final String paramString, Bundle paramBundle, final SessionActionCallback paramSessionActionCallback)
  {
    paramIntent.addCategory("android.media.intent.category.REMOTE_PLAYBACK");
    if (paramString != null) {
      paramIntent.putExtra("android.media.intent.extra.SESSION_ID", paramString);
    }
    if (paramBundle != null) {
      paramIntent.putExtras(paramBundle);
    }
    logRequest(paramIntent);
    mRoute.sendControlRequest(paramIntent, new MediaRouter.ControlRequestCallback()
    {
      public void onError(String paramAnonymousString, Bundle paramAnonymousBundle)
      {
        RemotePlaybackClient.this.handleError(paramIntent, paramSessionActionCallback, paramAnonymousString, paramAnonymousBundle);
      }
      
      public void onResult(Bundle paramAnonymousBundle)
      {
        if (paramAnonymousBundle != null)
        {
          String str = RemotePlaybackClient.inferMissingResult(paramString, paramAnonymousBundle.getString("android.media.intent.extra.SESSION_ID"));
          MediaSessionStatus localMediaSessionStatus = MediaSessionStatus.fromBundle(paramAnonymousBundle.getBundle("android.media.intent.extra.SESSION_STATUS"));
          RemotePlaybackClient.this.adoptSession(str);
          if (str != null)
          {
            if (RemotePlaybackClient.DEBUG) {
              new StringBuilder("Received result from ").append(paramIntent.getAction()).append(": data=").append(RemotePlaybackClient.bundleToString(paramAnonymousBundle)).append(", sessionId=").append(str).append(", sessionStatus=").append(localMediaSessionStatus);
            }
            try
            {
              paramSessionActionCallback.onResult(paramAnonymousBundle, str, localMediaSessionStatus);
              return;
            }
            finally
            {
              if ((paramIntent.getAction().equals("android.media.intent.action.END_SESSION")) && (str.equals(mSessionId))) {
                setSessionId(null);
              }
            }
          }
        }
        RemotePlaybackClient.this.handleInvalidResult(paramIntent, paramSessionActionCallback, paramAnonymousBundle);
      }
    });
  }
  
  private void playOrEnqueue(Uri paramUri, String paramString1, Bundle paramBundle1, long paramLong, Bundle paramBundle2, ItemActionCallback paramItemActionCallback, String paramString2)
  {
    if (paramUri == null) {
      throw new IllegalArgumentException("contentUri must not be null");
    }
    throwIfRemotePlaybackNotSupported();
    if (paramString2.equals("android.media.intent.action.ENQUEUE")) {
      throwIfQueuingNotSupported();
    }
    paramString2 = new Intent(paramString2);
    paramString2.setDataAndType(paramUri, paramString1);
    paramString2.putExtra("android.media.intent.extra.ITEM_STATUS_UPDATE_RECEIVER", mItemStatusPendingIntent);
    if (paramBundle1 != null) {
      paramString2.putExtra("android.media.intent.extra.ITEM_METADATA", paramBundle1);
    }
    if (paramLong != 0L) {
      paramString2.putExtra("android.media.intent.extra.ITEM_POSITION", paramLong);
    }
    performItemAction(paramString2, mSessionId, null, paramBundle2, paramItemActionCallback);
  }
  
  private boolean routeSupportsAction(String paramString)
  {
    return mRoute.supportsControlAction("android.media.intent.category.REMOTE_PLAYBACK", paramString);
  }
  
  private void throwIfNoCurrentSession()
  {
    if (mSessionId == null) {
      throw new IllegalStateException("There is no current session.");
    }
  }
  
  private void throwIfQueuingNotSupported()
  {
    if (!mRouteSupportsQueuing) {
      throw new UnsupportedOperationException("The route does not support queuing.");
    }
  }
  
  private void throwIfRemotePlaybackNotSupported()
  {
    if (!mRouteSupportsRemotePlayback) {
      throw new UnsupportedOperationException("The route does not support remote playback.");
    }
  }
  
  private void throwIfSessionManagementNotSupported()
  {
    if (!mRouteSupportsSessionManagement) {
      throw new UnsupportedOperationException("The route does not support session management.");
    }
  }
  
  public void endSession(Bundle paramBundle, SessionActionCallback paramSessionActionCallback)
  {
    throwIfSessionManagementNotSupported();
    throwIfNoCurrentSession();
    performSessionAction(new Intent("android.media.intent.action.END_SESSION"), mSessionId, paramBundle, paramSessionActionCallback);
  }
  
  public void enqueue(Uri paramUri, String paramString, Bundle paramBundle1, long paramLong, Bundle paramBundle2, ItemActionCallback paramItemActionCallback)
  {
    playOrEnqueue(paramUri, paramString, paramBundle1, paramLong, paramBundle2, paramItemActionCallback, "android.media.intent.action.ENQUEUE");
  }
  
  public String getSessionId()
  {
    return mSessionId;
  }
  
  public void getSessionStatus(Bundle paramBundle, SessionActionCallback paramSessionActionCallback)
  {
    throwIfSessionManagementNotSupported();
    throwIfNoCurrentSession();
    performSessionAction(new Intent("android.media.intent.action.GET_SESSION_STATUS"), mSessionId, paramBundle, paramSessionActionCallback);
  }
  
  public void getStatus(String paramString, Bundle paramBundle, ItemActionCallback paramItemActionCallback)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("itemId must not be null");
    }
    throwIfNoCurrentSession();
    performItemAction(new Intent("android.media.intent.action.GET_STATUS"), mSessionId, paramString, paramBundle, paramItemActionCallback);
  }
  
  public boolean hasSession()
  {
    return mSessionId != null;
  }
  
  public boolean isQueuingSupported()
  {
    return mRouteSupportsQueuing;
  }
  
  public boolean isRemotePlaybackSupported()
  {
    return mRouteSupportsRemotePlayback;
  }
  
  public boolean isSessionManagementSupported()
  {
    return mRouteSupportsSessionManagement;
  }
  
  public void pause(Bundle paramBundle, SessionActionCallback paramSessionActionCallback)
  {
    throwIfNoCurrentSession();
    performSessionAction(new Intent("android.media.intent.action.PAUSE"), mSessionId, paramBundle, paramSessionActionCallback);
  }
  
  public void play(Uri paramUri, String paramString, Bundle paramBundle1, long paramLong, Bundle paramBundle2, ItemActionCallback paramItemActionCallback)
  {
    playOrEnqueue(paramUri, paramString, paramBundle1, paramLong, paramBundle2, paramItemActionCallback, "android.media.intent.action.PLAY");
  }
  
  public void release()
  {
    mContext.unregisterReceiver(mStatusReceiver);
  }
  
  public void remove(String paramString, Bundle paramBundle, ItemActionCallback paramItemActionCallback)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("itemId must not be null");
    }
    throwIfQueuingNotSupported();
    throwIfNoCurrentSession();
    performItemAction(new Intent("android.media.intent.action.REMOVE"), mSessionId, paramString, paramBundle, paramItemActionCallback);
  }
  
  public void resume(Bundle paramBundle, SessionActionCallback paramSessionActionCallback)
  {
    throwIfNoCurrentSession();
    performSessionAction(new Intent("android.media.intent.action.RESUME"), mSessionId, paramBundle, paramSessionActionCallback);
  }
  
  public void seek(String paramString, long paramLong, Bundle paramBundle, ItemActionCallback paramItemActionCallback)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("itemId must not be null");
    }
    throwIfNoCurrentSession();
    Intent localIntent = new Intent("android.media.intent.action.SEEK");
    localIntent.putExtra("android.media.intent.extra.ITEM_POSITION", paramLong);
    performItemAction(localIntent, mSessionId, paramString, paramBundle, paramItemActionCallback);
  }
  
  public void setSessionId(String paramString)
  {
    if ((mSessionId != paramString) && ((mSessionId == null) || (!mSessionId.equals(paramString))))
    {
      if (DEBUG) {}
      mSessionId = paramString;
      if (mStatusCallback != null) {
        mStatusCallback.onSessionChanged(paramString);
      }
    }
  }
  
  public void setStatusCallback(StatusCallback paramStatusCallback)
  {
    mStatusCallback = paramStatusCallback;
  }
  
  public void startSession(Bundle paramBundle, SessionActionCallback paramSessionActionCallback)
  {
    throwIfSessionManagementNotSupported();
    Intent localIntent = new Intent("android.media.intent.action.START_SESSION");
    localIntent.putExtra("android.media.intent.extra.SESSION_STATUS_UPDATE_RECEIVER", mSessionStatusPendingIntent);
    performSessionAction(localIntent, null, paramBundle, paramSessionActionCallback);
  }
  
  public void stop(Bundle paramBundle, SessionActionCallback paramSessionActionCallback)
  {
    throwIfNoCurrentSession();
    performSessionAction(new Intent("android.media.intent.action.STOP"), mSessionId, paramBundle, paramSessionActionCallback);
  }
  
  public static abstract class ActionCallback
  {
    public void onError(String paramString, int paramInt, Bundle paramBundle) {}
  }
  
  public static abstract class ItemActionCallback
    extends RemotePlaybackClient.ActionCallback
  {
    public void onResult(Bundle paramBundle, String paramString1, MediaSessionStatus paramMediaSessionStatus, String paramString2, MediaItemStatus paramMediaItemStatus) {}
  }
  
  public static abstract class SessionActionCallback
    extends RemotePlaybackClient.ActionCallback
  {
    public void onResult(Bundle paramBundle, String paramString, MediaSessionStatus paramMediaSessionStatus) {}
  }
  
  public static abstract class StatusCallback
  {
    public void onItemStatusChanged(Bundle paramBundle, String paramString1, MediaSessionStatus paramMediaSessionStatus, String paramString2, MediaItemStatus paramMediaItemStatus) {}
    
    public void onSessionChanged(String paramString) {}
    
    public void onSessionStatusChanged(Bundle paramBundle, String paramString, MediaSessionStatus paramMediaSessionStatus) {}
  }
  
  private final class StatusReceiver
    extends BroadcastReceiver
  {
    public static final String ACTION_ITEM_STATUS_CHANGED = "android.support.v7.media.actions.ACTION_ITEM_STATUS_CHANGED";
    public static final String ACTION_SESSION_STATUS_CHANGED = "android.support.v7.media.actions.ACTION_SESSION_STATUS_CHANGED";
    
    private StatusReceiver() {}
    
    public final void onReceive(Context paramContext, Intent paramIntent)
    {
      paramContext = paramIntent.getStringExtra("android.media.intent.extra.SESSION_ID");
      if ((paramContext == null) || (!paramContext.equals(mSessionId))) {}
      MediaSessionStatus localMediaSessionStatus;
      do
      {
        String str;
        do
        {
          MediaItemStatus localMediaItemStatus;
          do
          {
            do
            {
              do
              {
                return;
                localMediaSessionStatus = MediaSessionStatus.fromBundle(paramIntent.getBundleExtra("android.media.intent.extra.SESSION_STATUS"));
                str = paramIntent.getAction();
                if (!str.equals("android.support.v7.media.actions.ACTION_ITEM_STATUS_CHANGED")) {
                  break;
                }
                str = paramIntent.getStringExtra("android.media.intent.extra.ITEM_ID");
              } while (str == null);
              localMediaItemStatus = MediaItemStatus.fromBundle(paramIntent.getBundleExtra("android.media.intent.extra.ITEM_STATUS"));
            } while (localMediaItemStatus == null);
            if (RemotePlaybackClient.DEBUG) {
              new StringBuilder("Received item status callback: sessionId=").append(paramContext).append(", sessionStatus=").append(localMediaSessionStatus).append(", itemId=").append(str).append(", itemStatus=").append(localMediaItemStatus);
            }
          } while (mStatusCallback == null);
          mStatusCallback.onItemStatusChanged(paramIntent.getExtras(), paramContext, localMediaSessionStatus, str, localMediaItemStatus);
          return;
        } while ((!str.equals("android.support.v7.media.actions.ACTION_SESSION_STATUS_CHANGED")) || (localMediaSessionStatus == null));
        if (RemotePlaybackClient.DEBUG) {
          new StringBuilder("Received session status callback: sessionId=").append(paramContext).append(", sessionStatus=").append(localMediaSessionStatus);
        }
      } while (mStatusCallback == null);
      mStatusCallback.onSessionStatusChanged(paramIntent.getExtras(), paramContext, localMediaSessionStatus);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.RemotePlaybackClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */