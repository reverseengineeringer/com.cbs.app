package android.support.v7.media;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.ActivityManagerCompat;
import android.support.v4.hardware.display.DisplayManagerCompat;
import android.support.v4.media.VolumeProviderCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.MediaSessionCompat.OnActiveChangeListener;
import android.support.v4.media.session.MediaSessionCompat.Token;
import android.util.Log;
import android.view.Display;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public final class MediaRouter
{
  public static final int AVAILABILITY_FLAG_IGNORE_DEFAULT_ROUTE = 1;
  public static final int AVAILABILITY_FLAG_REQUIRE_MATCH = 2;
  public static final int CALLBACK_FLAG_FORCE_DISCOVERY = 8;
  public static final int CALLBACK_FLAG_PERFORM_ACTIVE_SCAN = 1;
  public static final int CALLBACK_FLAG_REQUEST_DISCOVERY = 4;
  public static final int CALLBACK_FLAG_UNFILTERED_EVENTS = 2;
  private static final boolean DEBUG = Log.isLoggable("MediaRouter", 3);
  private static final String TAG = "MediaRouter";
  public static final int UNSELECT_REASON_DISCONNECTED = 1;
  public static final int UNSELECT_REASON_ROUTE_CHANGED = 3;
  public static final int UNSELECT_REASON_STOPPED = 2;
  public static final int UNSELECT_REASON_UNKNOWN = 0;
  static GlobalMediaRouter sGlobal;
  final ArrayList<CallbackRecord> mCallbackRecords = new ArrayList();
  final Context mContext;
  
  MediaRouter(Context paramContext)
  {
    mContext = paramContext;
  }
  
  static void checkCallingThread()
  {
    if (Looper.myLooper() != Looper.getMainLooper()) {
      throw new IllegalStateException("The media router service must only be accessed on the application's main thread.");
    }
  }
  
  static <T> boolean equal(T paramT1, T paramT2)
  {
    return (paramT1 == paramT2) || ((paramT1 != null) && (paramT2 != null) && (paramT1.equals(paramT2)));
  }
  
  private int findCallbackRecord(Callback paramCallback)
  {
    int j = mCallbackRecords.size();
    int i = 0;
    while (i < j)
    {
      if (mCallbackRecords.get(i)).mCallback == paramCallback) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public static MediaRouter getInstance(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("context must not be null");
    }
    checkCallingThread();
    if (sGlobal == null)
    {
      GlobalMediaRouter localGlobalMediaRouter = new GlobalMediaRouter(paramContext.getApplicationContext());
      sGlobal = localGlobalMediaRouter;
      localGlobalMediaRouter.start();
    }
    return sGlobal.getRouter(paramContext);
  }
  
  public final void addCallback(MediaRouteSelector paramMediaRouteSelector, Callback paramCallback)
  {
    addCallback(paramMediaRouteSelector, paramCallback, 0);
  }
  
  public final void addCallback(MediaRouteSelector paramMediaRouteSelector, Callback paramCallback, int paramInt)
  {
    int j = 1;
    if (paramMediaRouteSelector == null) {
      throw new IllegalArgumentException("selector must not be null");
    }
    if (paramCallback == null) {
      throw new IllegalArgumentException("callback must not be null");
    }
    checkCallingThread();
    if (DEBUG) {
      new StringBuilder("addCallback: selector=").append(paramMediaRouteSelector).append(", callback=").append(paramCallback).append(", flags=").append(Integer.toHexString(paramInt));
    }
    int i = findCallbackRecord(paramCallback);
    if (i < 0)
    {
      paramCallback = new CallbackRecord(this, paramCallback);
      mCallbackRecords.add(paramCallback);
      i = 0;
      if (((mFlags ^ 0xFFFFFFFF) & paramInt) != 0)
      {
        mFlags |= paramInt;
        i = 1;
      }
      if (mSelector.contains(paramMediaRouteSelector)) {
        break label196;
      }
      mSelector = new MediaRouteSelector.Builder(mSelector).addSelector(paramMediaRouteSelector).build();
    }
    label196:
    for (paramInt = j;; paramInt = i)
    {
      if (paramInt != 0) {
        sGlobal.updateDiscoveryRequest();
      }
      return;
      paramCallback = (CallbackRecord)mCallbackRecords.get(i);
      break;
    }
  }
  
  public final void addProvider(MediaRouteProvider paramMediaRouteProvider)
  {
    if (paramMediaRouteProvider == null) {
      throw new IllegalArgumentException("providerInstance must not be null");
    }
    checkCallingThread();
    if (DEBUG) {
      new StringBuilder("addProvider: ").append(paramMediaRouteProvider);
    }
    sGlobal.addProvider(paramMediaRouteProvider);
  }
  
  public final void addRemoteControlClient(Object paramObject)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException("remoteControlClient must not be null");
    }
    checkCallingThread();
    if (DEBUG) {
      new StringBuilder("addRemoteControlClient: ").append(paramObject);
    }
    sGlobal.addRemoteControlClient(paramObject);
  }
  
  public final RouteInfo getDefaultRoute()
  {
    checkCallingThread();
    return sGlobal.getDefaultRoute();
  }
  
  public final MediaSessionCompat.Token getMediaSessionToken()
  {
    return sGlobal.getMediaSessionToken();
  }
  
  public final List<ProviderInfo> getProviders()
  {
    checkCallingThread();
    return sGlobal.getProviders();
  }
  
  public final List<RouteInfo> getRoutes()
  {
    checkCallingThread();
    return sGlobal.getRoutes();
  }
  
  public final RouteInfo getSelectedRoute()
  {
    checkCallingThread();
    return sGlobal.getSelectedRoute();
  }
  
  public final boolean isRouteAvailable(MediaRouteSelector paramMediaRouteSelector, int paramInt)
  {
    if (paramMediaRouteSelector == null) {
      throw new IllegalArgumentException("selector must not be null");
    }
    checkCallingThread();
    return sGlobal.isRouteAvailable(paramMediaRouteSelector, paramInt);
  }
  
  public final void removeCallback(Callback paramCallback)
  {
    if (paramCallback == null) {
      throw new IllegalArgumentException("callback must not be null");
    }
    checkCallingThread();
    if (DEBUG) {
      new StringBuilder("removeCallback: callback=").append(paramCallback);
    }
    int i = findCallbackRecord(paramCallback);
    if (i >= 0)
    {
      mCallbackRecords.remove(i);
      sGlobal.updateDiscoveryRequest();
    }
  }
  
  public final void removeProvider(MediaRouteProvider paramMediaRouteProvider)
  {
    if (paramMediaRouteProvider == null) {
      throw new IllegalArgumentException("providerInstance must not be null");
    }
    checkCallingThread();
    if (DEBUG) {
      new StringBuilder("removeProvider: ").append(paramMediaRouteProvider);
    }
    sGlobal.removeProvider(paramMediaRouteProvider);
  }
  
  public final void removeRemoteControlClient(Object paramObject)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException("remoteControlClient must not be null");
    }
    if (DEBUG) {
      new StringBuilder("removeRemoteControlClient: ").append(paramObject);
    }
    sGlobal.removeRemoteControlClient(paramObject);
  }
  
  public final void selectRoute(RouteInfo paramRouteInfo)
  {
    if (paramRouteInfo == null) {
      throw new IllegalArgumentException("route must not be null");
    }
    checkCallingThread();
    if (DEBUG) {
      new StringBuilder("selectRoute: ").append(paramRouteInfo);
    }
    sGlobal.selectRoute(paramRouteInfo);
  }
  
  public final void setMediaSession(Object paramObject)
  {
    if (DEBUG) {
      new StringBuilder("addMediaSession: ").append(paramObject);
    }
    sGlobal.setMediaSession(paramObject);
  }
  
  public final void setMediaSessionCompat(MediaSessionCompat paramMediaSessionCompat)
  {
    if (DEBUG) {
      new StringBuilder("addMediaSessionCompat: ").append(paramMediaSessionCompat);
    }
    sGlobal.setMediaSessionCompat(paramMediaSessionCompat);
  }
  
  public final void unselect(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 3)) {
      throw new IllegalArgumentException("Unsupported reason to unselect route");
    }
    checkCallingThread();
    sGlobal.selectRoute(getDefaultRoute(), paramInt);
  }
  
  public final RouteInfo updateSelectedRoute(MediaRouteSelector paramMediaRouteSelector)
  {
    if (paramMediaRouteSelector == null) {
      throw new IllegalArgumentException("selector must not be null");
    }
    checkCallingThread();
    if (DEBUG) {
      new StringBuilder("updateSelectedRoute: ").append(paramMediaRouteSelector);
    }
    RouteInfo localRouteInfo2 = sGlobal.getSelectedRoute();
    RouteInfo localRouteInfo1 = localRouteInfo2;
    if (!localRouteInfo2.isDefault())
    {
      localRouteInfo1 = localRouteInfo2;
      if (!localRouteInfo2.matchesSelector(paramMediaRouteSelector))
      {
        localRouteInfo1 = sGlobal.getDefaultRoute();
        sGlobal.selectRoute(localRouteInfo1);
      }
    }
    return localRouteInfo1;
  }
  
  public static abstract class Callback
  {
    public void onProviderAdded(MediaRouter paramMediaRouter, MediaRouter.ProviderInfo paramProviderInfo) {}
    
    public void onProviderChanged(MediaRouter paramMediaRouter, MediaRouter.ProviderInfo paramProviderInfo) {}
    
    public void onProviderRemoved(MediaRouter paramMediaRouter, MediaRouter.ProviderInfo paramProviderInfo) {}
    
    public void onRouteAdded(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo) {}
    
    public void onRouteChanged(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo) {}
    
    public void onRoutePresentationDisplayChanged(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo) {}
    
    public void onRouteRemoved(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo) {}
    
    public void onRouteSelected(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo) {}
    
    public void onRouteUnselected(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo) {}
    
    public void onRouteVolumeChanged(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo) {}
  }
  
  private static final class CallbackRecord
  {
    public final MediaRouter.Callback mCallback;
    public int mFlags;
    public final MediaRouter mRouter;
    public MediaRouteSelector mSelector;
    
    public CallbackRecord(MediaRouter paramMediaRouter, MediaRouter.Callback paramCallback)
    {
      mRouter = paramMediaRouter;
      mCallback = paramCallback;
      mSelector = MediaRouteSelector.EMPTY;
    }
    
    public final boolean filterRouteEvent(MediaRouter.RouteInfo paramRouteInfo)
    {
      return ((mFlags & 0x2) != 0) || (paramRouteInfo.matchesSelector(mSelector));
    }
  }
  
  public static abstract class ControlRequestCallback
  {
    public void onError(String paramString, Bundle paramBundle) {}
    
    public void onResult(Bundle paramBundle) {}
  }
  
  private static final class GlobalMediaRouter
    implements RegisteredMediaRouteProviderWatcher.Callback, SystemMediaRouteProvider.SyncCallback
  {
    private final Context mApplicationContext;
    private final CallbackHandler mCallbackHandler = new CallbackHandler(null);
    private MediaSessionCompat mCompatSession;
    private MediaRouter.RouteInfo mDefaultRoute;
    private MediaRouteDiscoveryRequest mDiscoveryRequest;
    private final DisplayManagerCompat mDisplayManager;
    private final boolean mLowRam;
    private MediaSessionRecord mMediaSession;
    private final RemoteControlClientCompat.PlaybackInfo mPlaybackInfo = new RemoteControlClientCompat.PlaybackInfo();
    private final ProviderCallback mProviderCallback = new ProviderCallback(null);
    private final ArrayList<MediaRouter.ProviderInfo> mProviders = new ArrayList();
    private MediaSessionCompat mRccMediaSession;
    private RegisteredMediaRouteProviderWatcher mRegisteredProviderWatcher;
    private final ArrayList<RemoteControlClientRecord> mRemoteControlClients = new ArrayList();
    private final ArrayList<WeakReference<MediaRouter>> mRouters = new ArrayList();
    private final ArrayList<MediaRouter.RouteInfo> mRoutes = new ArrayList();
    private MediaRouter.RouteInfo mSelectedRoute;
    private MediaRouteProvider.RouteController mSelectedRouteController;
    private MediaSessionCompat.OnActiveChangeListener mSessionActiveListener = new MediaSessionCompat.OnActiveChangeListener()
    {
      public void onActiveChanged()
      {
        if (mRccMediaSession != null)
        {
          if (mRccMediaSession.isActive()) {
            addRemoteControlClient(mRccMediaSession.getRemoteControlClient());
          }
        }
        else {
          return;
        }
        removeRemoteControlClient(mRccMediaSession.getRemoteControlClient());
      }
    };
    private final SystemMediaRouteProvider mSystemProvider;
    
    GlobalMediaRouter(Context paramContext)
    {
      mApplicationContext = paramContext;
      mDisplayManager = DisplayManagerCompat.getInstance(paramContext);
      mLowRam = ActivityManagerCompat.isLowRamDevice((ActivityManager)paramContext.getSystemService("activity"));
      mSystemProvider = SystemMediaRouteProvider.obtain(paramContext, this);
      addProvider(mSystemProvider);
    }
    
    private String assignRouteUniqueId(MediaRouter.ProviderInfo paramProviderInfo, String paramString)
    {
      paramProviderInfo = paramProviderInfo.getComponentName().flattenToShortString() + ":" + paramString;
      if (findRouteByUniqueId(paramProviderInfo) < 0) {
        return paramProviderInfo;
      }
      int i = 2;
      for (;;)
      {
        paramString = String.format(Locale.US, "%s_%d", new Object[] { paramProviderInfo, Integer.valueOf(i) });
        if (findRouteByUniqueId(paramString) < 0) {
          return paramString;
        }
        i += 1;
      }
    }
    
    private MediaRouter.RouteInfo chooseFallbackRoute()
    {
      Iterator localIterator = mRoutes.iterator();
      while (localIterator.hasNext())
      {
        MediaRouter.RouteInfo localRouteInfo = (MediaRouter.RouteInfo)localIterator.next();
        if ((localRouteInfo != mDefaultRoute) && (isSystemLiveAudioOnlyRoute(localRouteInfo)) && (isRouteSelectable(localRouteInfo))) {
          return localRouteInfo;
        }
      }
      return mDefaultRoute;
    }
    
    private int findProviderInfo(MediaRouteProvider paramMediaRouteProvider)
    {
      int j = mProviders.size();
      int i = 0;
      while (i < j)
      {
        if (MediaRouter.ProviderInfo.access$600((MediaRouter.ProviderInfo)mProviders.get(i)) == paramMediaRouteProvider) {
          return i;
        }
        i += 1;
      }
      return -1;
    }
    
    private int findRemoteControlClientRecord(Object paramObject)
    {
      int j = mRemoteControlClients.size();
      int i = 0;
      while (i < j)
      {
        if (((RemoteControlClientRecord)mRemoteControlClients.get(i)).getRemoteControlClient() == paramObject) {
          return i;
        }
        i += 1;
      }
      return -1;
    }
    
    private int findRouteByUniqueId(String paramString)
    {
      int j = mRoutes.size();
      int i = 0;
      while (i < j)
      {
        if (MediaRouter.RouteInfo.access$800((MediaRouter.RouteInfo)mRoutes.get(i)).equals(paramString)) {
          return i;
        }
        i += 1;
      }
      return -1;
    }
    
    private boolean isRouteSelectable(MediaRouter.RouteInfo paramRouteInfo)
    {
      return (MediaRouter.RouteInfo.access$900(paramRouteInfo) != null) && (MediaRouter.RouteInfo.access$400(paramRouteInfo));
    }
    
    private boolean isSystemDefaultRoute(MediaRouter.RouteInfo paramRouteInfo)
    {
      return (paramRouteInfo.getProviderInstance() == mSystemProvider) && (MediaRouter.RouteInfo.access$000(paramRouteInfo).equals("DEFAULT_ROUTE"));
    }
    
    private boolean isSystemLiveAudioOnlyRoute(MediaRouter.RouteInfo paramRouteInfo)
    {
      return (paramRouteInfo.getProviderInstance() == mSystemProvider) && (paramRouteInfo.supportsControlCategory("android.media.intent.category.LIVE_AUDIO")) && (!paramRouteInfo.supportsControlCategory("android.media.intent.category.LIVE_VIDEO"));
    }
    
    private void setSelectedRouteInternal(MediaRouter.RouteInfo paramRouteInfo, int paramInt)
    {
      if (mSelectedRoute != paramRouteInfo)
      {
        if (mSelectedRoute != null)
        {
          if (MediaRouter.DEBUG) {
            new StringBuilder("Route unselected: ").append(mSelectedRoute).append(" reason: ").append(paramInt);
          }
          mCallbackHandler.post(263, mSelectedRoute);
          if (mSelectedRouteController != null)
          {
            mSelectedRouteController.onUnselect(paramInt);
            mSelectedRouteController.onRelease();
            mSelectedRouteController = null;
          }
        }
        mSelectedRoute = paramRouteInfo;
        if (mSelectedRoute != null)
        {
          mSelectedRouteController = paramRouteInfo.getProviderInstance().onCreateRouteController(MediaRouter.RouteInfo.access$000(paramRouteInfo));
          if (mSelectedRouteController != null) {
            mSelectedRouteController.onSelect();
          }
          if (MediaRouter.DEBUG) {
            new StringBuilder("Route selected: ").append(mSelectedRoute);
          }
          mCallbackHandler.post(262, mSelectedRoute);
        }
        updatePlaybackInfoFromSelectedRoute();
      }
    }
    
    private void updatePlaybackInfoFromSelectedRoute()
    {
      if (mSelectedRoute != null)
      {
        mPlaybackInfo.volume = mSelectedRoute.getVolume();
        mPlaybackInfo.volumeMax = mSelectedRoute.getVolumeMax();
        mPlaybackInfo.volumeHandling = mSelectedRoute.getVolumeHandling();
        mPlaybackInfo.playbackStream = mSelectedRoute.getPlaybackStream();
        mPlaybackInfo.playbackType = mSelectedRoute.getPlaybackType();
        int j = mRemoteControlClients.size();
        i = 0;
        while (i < j)
        {
          ((RemoteControlClientRecord)mRemoteControlClients.get(i)).updatePlaybackInfo();
          i += 1;
        }
        if (mMediaSession != null)
        {
          if (mSelectedRoute == getDefaultRoute()) {
            mMediaSession.clearVolumeHandling();
          }
        }
        else {
          return;
        }
        if (mPlaybackInfo.volumeHandling != 1) {
          break label190;
        }
      }
      label190:
      for (int i = 2;; i = 0)
      {
        mMediaSession.configureVolume(i, mPlaybackInfo.volumeMax, mPlaybackInfo.volume);
        return;
        if (mMediaSession == null) {
          break;
        }
        mMediaSession.clearVolumeHandling();
        return;
      }
    }
    
    private void updateProviderContents(MediaRouter.ProviderInfo paramProviderInfo, MediaRouteProviderDescriptor paramMediaRouteProviderDescriptor)
    {
      boolean bool2 = false;
      boolean bool1 = false;
      int j;
      int i;
      int k;
      MediaRouteDescriptor localMediaRouteDescriptor;
      Object localObject;
      int n;
      ArrayList localArrayList;
      if (paramProviderInfo.updateDescriptor(paramMediaRouteProviderDescriptor)) {
        if (paramMediaRouteProviderDescriptor != null) {
          if (paramMediaRouteProviderDescriptor.isValid())
          {
            paramMediaRouteProviderDescriptor = paramMediaRouteProviderDescriptor.getRoutes();
            int m = paramMediaRouteProviderDescriptor.size();
            j = 0;
            i = 0;
            bool2 = bool1;
            k = i;
            if (j >= m) {
              break label418;
            }
            localMediaRouteDescriptor = (MediaRouteDescriptor)paramMediaRouteProviderDescriptor.get(j);
            localObject = localMediaRouteDescriptor.getId();
            n = paramProviderInfo.findRouteByDescriptorId((String)localObject);
            if (n < 0)
            {
              localObject = new MediaRouter.RouteInfo(paramProviderInfo, (String)localObject, assignRouteUniqueId(paramProviderInfo, (String)localObject));
              localArrayList = MediaRouter.ProviderInfo.access$700(paramProviderInfo);
              k = i + 1;
              localArrayList.add(i, localObject);
              mRoutes.add(localObject);
              ((MediaRouter.RouteInfo)localObject).updateDescriptor(localMediaRouteDescriptor);
              if (MediaRouter.DEBUG) {
                new StringBuilder("Route added: ").append(localObject);
              }
              mCallbackHandler.post(257, localObject);
              i = k;
            }
          }
        }
      }
      for (;;)
      {
        j += 1;
        break;
        if (n < i)
        {
          new StringBuilder("Ignoring route descriptor with duplicate id: ").append(localMediaRouteDescriptor);
        }
        else
        {
          localObject = (MediaRouter.RouteInfo)MediaRouter.ProviderInfo.access$700(paramProviderInfo).get(n);
          localArrayList = MediaRouter.ProviderInfo.access$700(paramProviderInfo);
          k = i + 1;
          Collections.swap(localArrayList, n, i);
          i = ((MediaRouter.RouteInfo)localObject).updateDescriptor(localMediaRouteDescriptor);
          if (i != 0)
          {
            if ((i & 0x1) != 0)
            {
              if (MediaRouter.DEBUG) {
                new StringBuilder("Route changed: ").append(localObject);
              }
              mCallbackHandler.post(259, localObject);
            }
            if ((i & 0x2) != 0)
            {
              if (MediaRouter.DEBUG) {
                new StringBuilder("Route volume changed: ").append(localObject);
              }
              mCallbackHandler.post(260, localObject);
            }
            if ((i & 0x4) != 0)
            {
              if (MediaRouter.DEBUG) {
                new StringBuilder("Route presentation display changed: ").append(localObject);
              }
              mCallbackHandler.post(261, localObject);
            }
            if (localObject == mSelectedRoute)
            {
              bool1 = true;
              i = k;
              continue;
              new StringBuilder("Ignoring invalid provider descriptor: ").append(paramMediaRouteProviderDescriptor);
              k = 0;
              label418:
              i = MediaRouter.ProviderInfo.access$700(paramProviderInfo).size() - 1;
              while (i >= k)
              {
                paramMediaRouteProviderDescriptor = (MediaRouter.RouteInfo)MediaRouter.ProviderInfo.access$700(paramProviderInfo).get(i);
                paramMediaRouteProviderDescriptor.updateDescriptor(null);
                mRoutes.remove(paramMediaRouteProviderDescriptor);
                i -= 1;
              }
              updateSelectedRouteIfNeeded(bool2);
              i = MediaRouter.ProviderInfo.access$700(paramProviderInfo).size() - 1;
              while (i >= k)
              {
                paramMediaRouteProviderDescriptor = (MediaRouter.RouteInfo)MediaRouter.ProviderInfo.access$700(paramProviderInfo).remove(i);
                if (MediaRouter.DEBUG) {
                  new StringBuilder("Route removed: ").append(paramMediaRouteProviderDescriptor);
                }
                mCallbackHandler.post(258, paramMediaRouteProviderDescriptor);
                i -= 1;
              }
              if (MediaRouter.DEBUG) {
                new StringBuilder("Provider changed: ").append(paramProviderInfo);
              }
              mCallbackHandler.post(515, paramProviderInfo);
              return;
            }
          }
          i = k;
        }
      }
    }
    
    private void updateProviderDescriptor(MediaRouteProvider paramMediaRouteProvider, MediaRouteProviderDescriptor paramMediaRouteProviderDescriptor)
    {
      int i = findProviderInfo(paramMediaRouteProvider);
      if (i >= 0) {
        updateProviderContents((MediaRouter.ProviderInfo)mProviders.get(i), paramMediaRouteProviderDescriptor);
      }
    }
    
    private void updateSelectedRouteIfNeeded(boolean paramBoolean)
    {
      if ((mDefaultRoute != null) && (!isRouteSelectable(mDefaultRoute)))
      {
        new StringBuilder("Clearing the default route because it is no longer selectable: ").append(mDefaultRoute);
        mDefaultRoute = null;
      }
      if ((mDefaultRoute == null) && (!mRoutes.isEmpty()))
      {
        Iterator localIterator = mRoutes.iterator();
        while (localIterator.hasNext())
        {
          MediaRouter.RouteInfo localRouteInfo = (MediaRouter.RouteInfo)localIterator.next();
          if ((isSystemDefaultRoute(localRouteInfo)) && (isRouteSelectable(localRouteInfo)))
          {
            mDefaultRoute = localRouteInfo;
            new StringBuilder("Found default route: ").append(mDefaultRoute);
          }
        }
      }
      if ((mSelectedRoute != null) && (!isRouteSelectable(mSelectedRoute)))
      {
        new StringBuilder("Unselecting the current route because it is no longer selectable: ").append(mSelectedRoute);
        setSelectedRouteInternal(null, 0);
      }
      if (mSelectedRoute == null) {
        setSelectedRouteInternal(chooseFallbackRoute(), 0);
      }
      while (!paramBoolean) {
        return;
      }
      updatePlaybackInfoFromSelectedRoute();
    }
    
    public final void addProvider(MediaRouteProvider paramMediaRouteProvider)
    {
      if (findProviderInfo(paramMediaRouteProvider) < 0)
      {
        MediaRouter.ProviderInfo localProviderInfo = new MediaRouter.ProviderInfo(paramMediaRouteProvider);
        mProviders.add(localProviderInfo);
        if (MediaRouter.DEBUG) {
          new StringBuilder("Provider added: ").append(localProviderInfo);
        }
        mCallbackHandler.post(513, localProviderInfo);
        updateProviderContents(localProviderInfo, paramMediaRouteProvider.getDescriptor());
        paramMediaRouteProvider.setCallback(mProviderCallback);
        paramMediaRouteProvider.setDiscoveryRequest(mDiscoveryRequest);
      }
    }
    
    public final void addRemoteControlClient(Object paramObject)
    {
      if (findRemoteControlClientRecord(paramObject) < 0)
      {
        paramObject = new RemoteControlClientRecord(paramObject);
        mRemoteControlClients.add(paramObject);
      }
    }
    
    public final ContentResolver getContentResolver()
    {
      return mApplicationContext.getContentResolver();
    }
    
    public final MediaRouter.RouteInfo getDefaultRoute()
    {
      if (mDefaultRoute == null) {
        throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
      }
      return mDefaultRoute;
    }
    
    public final Display getDisplay(int paramInt)
    {
      return mDisplayManager.getDisplay(paramInt);
    }
    
    public final MediaSessionCompat.Token getMediaSessionToken()
    {
      if (mMediaSession != null) {
        return mMediaSession.getToken();
      }
      if (mCompatSession != null) {
        return mCompatSession.getSessionToken();
      }
      return null;
    }
    
    public final Context getProviderContext(String paramString)
    {
      if (paramString.equals("android")) {
        return mApplicationContext;
      }
      try
      {
        paramString = mApplicationContext.createPackageContext(paramString, 4);
        return paramString;
      }
      catch (PackageManager.NameNotFoundException paramString) {}
      return null;
    }
    
    public final List<MediaRouter.ProviderInfo> getProviders()
    {
      return mProviders;
    }
    
    public final MediaRouter getRouter(Context paramContext)
    {
      int i = mRouters.size();
      for (;;)
      {
        i -= 1;
        if (i >= 0)
        {
          MediaRouter localMediaRouter = (MediaRouter)((WeakReference)mRouters.get(i)).get();
          if (localMediaRouter == null) {
            mRouters.remove(i);
          } else if (mContext == paramContext) {
            return localMediaRouter;
          }
        }
        else
        {
          paramContext = new MediaRouter(paramContext);
          mRouters.add(new WeakReference(paramContext));
          return paramContext;
        }
      }
    }
    
    public final List<MediaRouter.RouteInfo> getRoutes()
    {
      return mRoutes;
    }
    
    public final MediaRouter.RouteInfo getSelectedRoute()
    {
      if (mSelectedRoute == null) {
        throw new IllegalStateException("There is no currently selected route.  The media router has not yet been fully initialized.");
      }
      return mSelectedRoute;
    }
    
    public final MediaRouter.RouteInfo getSystemRouteByDescriptorId(String paramString)
    {
      int i = findProviderInfo(mSystemProvider);
      if (i >= 0)
      {
        MediaRouter.ProviderInfo localProviderInfo = (MediaRouter.ProviderInfo)mProviders.get(i);
        i = localProviderInfo.findRouteByDescriptorId(paramString);
        if (i >= 0) {
          return (MediaRouter.RouteInfo)MediaRouter.ProviderInfo.access$700(localProviderInfo).get(i);
        }
      }
      return null;
    }
    
    public final boolean isRouteAvailable(MediaRouteSelector paramMediaRouteSelector, int paramInt)
    {
      if (paramMediaRouteSelector.isEmpty()) {
        return false;
      }
      if (((paramInt & 0x2) == 0) && (mLowRam)) {
        return true;
      }
      int j = mRoutes.size();
      int i = 0;
      while (i < j)
      {
        MediaRouter.RouteInfo localRouteInfo = (MediaRouter.RouteInfo)mRoutes.get(i);
        if ((((paramInt & 0x1) == 0) || (!localRouteInfo.isDefault())) && (localRouteInfo.matchesSelector(paramMediaRouteSelector))) {
          return true;
        }
        i += 1;
      }
      return false;
    }
    
    public final void removeProvider(MediaRouteProvider paramMediaRouteProvider)
    {
      int i = findProviderInfo(paramMediaRouteProvider);
      if (i >= 0)
      {
        paramMediaRouteProvider.setCallback(null);
        paramMediaRouteProvider.setDiscoveryRequest(null);
        paramMediaRouteProvider = (MediaRouter.ProviderInfo)mProviders.get(i);
        updateProviderContents(paramMediaRouteProvider, null);
        if (MediaRouter.DEBUG) {
          new StringBuilder("Provider removed: ").append(paramMediaRouteProvider);
        }
        mCallbackHandler.post(514, paramMediaRouteProvider);
        mProviders.remove(i);
      }
    }
    
    public final void removeRemoteControlClient(Object paramObject)
    {
      int i = findRemoteControlClientRecord(paramObject);
      if (i >= 0) {
        ((RemoteControlClientRecord)mRemoteControlClients.remove(i)).disconnect();
      }
    }
    
    public final void requestSetVolume(MediaRouter.RouteInfo paramRouteInfo, int paramInt)
    {
      if ((paramRouteInfo == mSelectedRoute) && (mSelectedRouteController != null)) {
        mSelectedRouteController.onSetVolume(paramInt);
      }
    }
    
    public final void requestUpdateVolume(MediaRouter.RouteInfo paramRouteInfo, int paramInt)
    {
      if ((paramRouteInfo == mSelectedRoute) && (mSelectedRouteController != null)) {
        mSelectedRouteController.onUpdateVolume(paramInt);
      }
    }
    
    public final void selectRoute(MediaRouter.RouteInfo paramRouteInfo)
    {
      selectRoute(paramRouteInfo, 3);
    }
    
    public final void selectRoute(MediaRouter.RouteInfo paramRouteInfo, int paramInt)
    {
      if (!mRoutes.contains(paramRouteInfo))
      {
        new StringBuilder("Ignoring attempt to select removed route: ").append(paramRouteInfo);
        return;
      }
      if (!MediaRouter.RouteInfo.access$400(paramRouteInfo))
      {
        new StringBuilder("Ignoring attempt to select disabled route: ").append(paramRouteInfo);
        return;
      }
      setSelectedRouteInternal(paramRouteInfo, paramInt);
    }
    
    public final void sendControlRequest(MediaRouter.RouteInfo paramRouteInfo, Intent paramIntent, MediaRouter.ControlRequestCallback paramControlRequestCallback)
    {
      if ((paramRouteInfo == mSelectedRoute) && (mSelectedRouteController != null) && (mSelectedRouteController.onControlRequest(paramIntent, paramControlRequestCallback))) {}
      while (paramControlRequestCallback == null) {
        return;
      }
      paramControlRequestCallback.onError(null, null);
    }
    
    public final void setMediaSession(Object paramObject)
    {
      if (mMediaSession != null) {
        mMediaSession.clearVolumeHandling();
      }
      if (paramObject == null)
      {
        mMediaSession = null;
        return;
      }
      mMediaSession = new MediaSessionRecord(paramObject);
      updatePlaybackInfoFromSelectedRoute();
    }
    
    public final void setMediaSessionCompat(MediaSessionCompat paramMediaSessionCompat)
    {
      mCompatSession = paramMediaSessionCompat;
      if (Build.VERSION.SDK_INT >= 21) {
        if (paramMediaSessionCompat != null)
        {
          paramMediaSessionCompat = paramMediaSessionCompat.getMediaSession();
          setMediaSession(paramMediaSessionCompat);
        }
      }
      do
      {
        do
        {
          do
          {
            return;
            paramMediaSessionCompat = null;
            break;
          } while (Build.VERSION.SDK_INT < 14);
          if (mRccMediaSession != null)
          {
            removeRemoteControlClient(mRccMediaSession.getRemoteControlClient());
            mRccMediaSession.removeOnActiveChangeListener(mSessionActiveListener);
          }
          mRccMediaSession = paramMediaSessionCompat;
        } while (paramMediaSessionCompat == null);
        paramMediaSessionCompat.addOnActiveChangeListener(mSessionActiveListener);
      } while (!paramMediaSessionCompat.isActive());
      addRemoteControlClient(paramMediaSessionCompat.getRemoteControlClient());
    }
    
    public final void start()
    {
      mRegisteredProviderWatcher = new RegisteredMediaRouteProviderWatcher(mApplicationContext, this);
      mRegisteredProviderWatcher.start();
    }
    
    public final void updateDiscoveryRequest()
    {
      Object localObject = new MediaRouteSelector.Builder();
      int j = mRouters.size();
      boolean bool = false;
      int i = 0;
      for (;;)
      {
        int k = j - 1;
        if (k < 0) {
          break;
        }
        MediaRouter localMediaRouter = (MediaRouter)((WeakReference)mRouters.get(k)).get();
        if (localMediaRouter == null)
        {
          mRouters.remove(k);
          j = k;
        }
        else
        {
          int n = mCallbackRecords.size();
          int m = 0;
          while (m < n)
          {
            MediaRouter.CallbackRecord localCallbackRecord = (MediaRouter.CallbackRecord)mCallbackRecords.get(m);
            ((MediaRouteSelector.Builder)localObject).addSelector(mSelector);
            if ((mFlags & 0x1) != 0)
            {
              bool = true;
              i = 1;
            }
            j = i;
            if ((mFlags & 0x4) != 0)
            {
              j = i;
              if (!mLowRam) {
                j = 1;
              }
            }
            i = j;
            if ((mFlags & 0x8) != 0) {
              i = 1;
            }
            m += 1;
          }
          j = k;
        }
      }
      if (i != 0)
      {
        localObject = ((MediaRouteSelector.Builder)localObject).build();
        if ((mDiscoveryRequest == null) || (!mDiscoveryRequest.getSelector().equals(localObject)) || (mDiscoveryRequest.isActiveScan() != bool)) {
          break label235;
        }
      }
      label235:
      do
      {
        return;
        localObject = MediaRouteSelector.EMPTY;
        break;
        if ((!((MediaRouteSelector)localObject).isEmpty()) || (bool)) {
          break label327;
        }
      } while (mDiscoveryRequest == null);
      label327:
      for (mDiscoveryRequest = null;; mDiscoveryRequest = new MediaRouteDiscoveryRequest((MediaRouteSelector)localObject, bool))
      {
        if (MediaRouter.DEBUG) {
          new StringBuilder("Updated discovery request: ").append(mDiscoveryRequest);
        }
        j = mProviders.size();
        i = 0;
        while (i < j)
        {
          MediaRouter.ProviderInfo.access$600((MediaRouter.ProviderInfo)mProviders.get(i)).setDiscoveryRequest(mDiscoveryRequest);
          i += 1;
        }
        break;
      }
    }
    
    private final class CallbackHandler
      extends Handler
    {
      public static final int MSG_PROVIDER_ADDED = 513;
      public static final int MSG_PROVIDER_CHANGED = 515;
      public static final int MSG_PROVIDER_REMOVED = 514;
      public static final int MSG_ROUTE_ADDED = 257;
      public static final int MSG_ROUTE_CHANGED = 259;
      public static final int MSG_ROUTE_PRESENTATION_DISPLAY_CHANGED = 261;
      public static final int MSG_ROUTE_REMOVED = 258;
      public static final int MSG_ROUTE_SELECTED = 262;
      public static final int MSG_ROUTE_UNSELECTED = 263;
      public static final int MSG_ROUTE_VOLUME_CHANGED = 260;
      private static final int MSG_TYPE_MASK = 65280;
      private static final int MSG_TYPE_PROVIDER = 512;
      private static final int MSG_TYPE_ROUTE = 256;
      private final ArrayList<MediaRouter.CallbackRecord> mTempCallbackRecords = new ArrayList();
      
      private CallbackHandler() {}
      
      private void invokeCallback(MediaRouter.CallbackRecord paramCallbackRecord, int paramInt, Object paramObject)
      {
        MediaRouter localMediaRouter = mRouter;
        MediaRouter.Callback localCallback = mCallback;
        switch (0xFF00 & paramInt)
        {
        default: 
        case 256: 
          do
          {
            return;
            paramObject = (MediaRouter.RouteInfo)paramObject;
          } while (!paramCallbackRecord.filterRouteEvent((MediaRouter.RouteInfo)paramObject));
          switch (paramInt)
          {
          default: 
            return;
          case 257: 
            localCallback.onRouteAdded(localMediaRouter, (MediaRouter.RouteInfo)paramObject);
            return;
          case 258: 
            localCallback.onRouteRemoved(localMediaRouter, (MediaRouter.RouteInfo)paramObject);
            return;
          case 259: 
            localCallback.onRouteChanged(localMediaRouter, (MediaRouter.RouteInfo)paramObject);
            return;
          case 260: 
            localCallback.onRouteVolumeChanged(localMediaRouter, (MediaRouter.RouteInfo)paramObject);
            return;
          case 261: 
            localCallback.onRoutePresentationDisplayChanged(localMediaRouter, (MediaRouter.RouteInfo)paramObject);
            return;
          case 262: 
            localCallback.onRouteSelected(localMediaRouter, (MediaRouter.RouteInfo)paramObject);
            return;
          }
          localCallback.onRouteUnselected(localMediaRouter, (MediaRouter.RouteInfo)paramObject);
          return;
        }
        paramCallbackRecord = (MediaRouter.ProviderInfo)paramObject;
        switch (paramInt)
        {
        default: 
          return;
        case 513: 
          localCallback.onProviderAdded(localMediaRouter, paramCallbackRecord);
          return;
        case 514: 
          localCallback.onProviderRemoved(localMediaRouter, paramCallbackRecord);
          return;
        }
        localCallback.onProviderChanged(localMediaRouter, paramCallbackRecord);
      }
      
      private void syncWithSystemProvider(int paramInt, Object paramObject)
      {
        switch (paramInt)
        {
        case 260: 
        case 261: 
        default: 
          return;
        case 257: 
          mSystemProvider.onSyncRouteAdded((MediaRouter.RouteInfo)paramObject);
          return;
        case 258: 
          mSystemProvider.onSyncRouteRemoved((MediaRouter.RouteInfo)paramObject);
          return;
        case 259: 
          mSystemProvider.onSyncRouteChanged((MediaRouter.RouteInfo)paramObject);
          return;
        }
        mSystemProvider.onSyncRouteSelected((MediaRouter.RouteInfo)paramObject);
      }
      
      public final void handleMessage(Message paramMessage)
      {
        int j = what;
        paramMessage = obj;
        syncWithSystemProvider(j, paramMessage);
        try
        {
          int i = mRouters.size();
          for (;;)
          {
            i -= 1;
            if (i < 0) {
              break;
            }
            MediaRouter localMediaRouter = (MediaRouter)((WeakReference)mRouters.get(i)).get();
            if (localMediaRouter == null) {
              mRouters.remove(i);
            } else {
              mTempCallbackRecords.addAll(mCallbackRecords);
            }
          }
          int k = mTempCallbackRecords.size();
          i = 0;
          while (i < k)
          {
            invokeCallback((MediaRouter.CallbackRecord)mTempCallbackRecords.get(i), j, paramMessage);
            i += 1;
          }
          return;
        }
        finally
        {
          mTempCallbackRecords.clear();
        }
      }
      
      public final void post(int paramInt, Object paramObject)
      {
        obtainMessage(paramInt, paramObject).sendToTarget();
      }
    }
    
    private final class MediaSessionRecord
    {
      private int mControlType;
      private int mMaxVolume;
      private final MediaSessionCompat mMsCompat;
      private VolumeProviderCompat mVpCompat;
      
      public MediaSessionRecord(Object paramObject)
      {
        mMsCompat = MediaSessionCompat.obtain(mApplicationContext, paramObject);
      }
      
      public final void clearVolumeHandling()
      {
        mMsCompat.setPlaybackToLocal(mPlaybackInfo.playbackStream);
        mVpCompat = null;
      }
      
      public final void configureVolume(int paramInt1, int paramInt2, int paramInt3)
      {
        if ((mVpCompat != null) && (paramInt1 == mControlType) && (paramInt2 == mMaxVolume))
        {
          mVpCompat.setCurrentVolume(paramInt3);
          return;
        }
        mVpCompat = new VolumeProviderCompat(paramInt1, paramInt2, paramInt3)
        {
          public void onAdjustVolume(final int paramAnonymousInt)
          {
            mCallbackHandler.post(new Runnable()
            {
              public void run()
              {
                if (mSelectedRoute != null) {
                  mSelectedRoute.requestUpdateVolume(paramAnonymousInt);
                }
              }
            });
          }
          
          public void onSetVolumeTo(final int paramAnonymousInt)
          {
            mCallbackHandler.post(new Runnable()
            {
              public void run()
              {
                if (mSelectedRoute != null) {
                  mSelectedRoute.requestSetVolume(paramAnonymousInt);
                }
              }
            });
          }
        };
        mMsCompat.setPlaybackToRemote(mVpCompat);
      }
      
      public final MediaSessionCompat.Token getToken()
      {
        return mMsCompat.getSessionToken();
      }
    }
    
    private final class ProviderCallback
      extends MediaRouteProvider.Callback
    {
      private ProviderCallback() {}
      
      public final void onDescriptorChanged(MediaRouteProvider paramMediaRouteProvider, MediaRouteProviderDescriptor paramMediaRouteProviderDescriptor)
      {
        MediaRouter.GlobalMediaRouter.this.updateProviderDescriptor(paramMediaRouteProvider, paramMediaRouteProviderDescriptor);
      }
    }
    
    private final class RemoteControlClientRecord
      implements RemoteControlClientCompat.VolumeCallback
    {
      private boolean mDisconnected;
      private final RemoteControlClientCompat mRccCompat;
      
      public RemoteControlClientRecord(Object paramObject)
      {
        mRccCompat = RemoteControlClientCompat.obtain(mApplicationContext, paramObject);
        mRccCompat.setVolumeCallback(this);
        updatePlaybackInfo();
      }
      
      public final void disconnect()
      {
        mDisconnected = true;
        mRccCompat.setVolumeCallback(null);
      }
      
      public final Object getRemoteControlClient()
      {
        return mRccCompat.getRemoteControlClient();
      }
      
      public final void onVolumeSetRequest(int paramInt)
      {
        if ((!mDisconnected) && (mSelectedRoute != null)) {
          mSelectedRoute.requestSetVolume(paramInt);
        }
      }
      
      public final void onVolumeUpdateRequest(int paramInt)
      {
        if ((!mDisconnected) && (mSelectedRoute != null)) {
          mSelectedRoute.requestUpdateVolume(paramInt);
        }
      }
      
      public final void updatePlaybackInfo()
      {
        mRccCompat.setPlaybackInfo(mPlaybackInfo);
      }
    }
  }
  
  public static final class ProviderInfo
  {
    private MediaRouteProviderDescriptor mDescriptor;
    private final MediaRouteProvider.ProviderMetadata mMetadata;
    private final MediaRouteProvider mProviderInstance;
    private Resources mResources;
    private boolean mResourcesNotAvailable;
    private final ArrayList<MediaRouter.RouteInfo> mRoutes = new ArrayList();
    
    ProviderInfo(MediaRouteProvider paramMediaRouteProvider)
    {
      mProviderInstance = paramMediaRouteProvider;
      mMetadata = paramMediaRouteProvider.getMetadata();
    }
    
    final int findRouteByDescriptorId(String paramString)
    {
      int j = mRoutes.size();
      int i = 0;
      while (i < j)
      {
        if (MediaRouter.RouteInfo.access$000((MediaRouter.RouteInfo)mRoutes.get(i)).equals(paramString)) {
          return i;
        }
        i += 1;
      }
      return -1;
    }
    
    public final ComponentName getComponentName()
    {
      return mMetadata.getComponentName();
    }
    
    public final String getPackageName()
    {
      return mMetadata.getPackageName();
    }
    
    public final MediaRouteProvider getProviderInstance()
    {
      MediaRouter.checkCallingThread();
      return mProviderInstance;
    }
    
    final Resources getResources()
    {
      if ((mResources == null) && (!mResourcesNotAvailable))
      {
        Object localObject = getPackageName();
        localObject = MediaRouter.sGlobal.getProviderContext((String)localObject);
        if (localObject == null) {
          break label44;
        }
        mResources = ((Context)localObject).getResources();
      }
      for (;;)
      {
        return mResources;
        label44:
        mResourcesNotAvailable = true;
      }
    }
    
    public final List<MediaRouter.RouteInfo> getRoutes()
    {
      MediaRouter.checkCallingThread();
      return mRoutes;
    }
    
    public final String toString()
    {
      return "MediaRouter.RouteProviderInfo{ packageName=" + getPackageName() + " }";
    }
    
    final boolean updateDescriptor(MediaRouteProviderDescriptor paramMediaRouteProviderDescriptor)
    {
      if (mDescriptor != paramMediaRouteProviderDescriptor)
      {
        mDescriptor = paramMediaRouteProviderDescriptor;
        return true;
      }
      return false;
    }
  }
  
  public static final class RouteInfo
  {
    static final int CHANGE_GENERAL = 1;
    static final int CHANGE_PRESENTATION_DISPLAY = 4;
    static final int CHANGE_VOLUME = 2;
    public static final int PLAYBACK_TYPE_LOCAL = 0;
    public static final int PLAYBACK_TYPE_REMOTE = 1;
    public static final int PLAYBACK_VOLUME_FIXED = 0;
    public static final int PLAYBACK_VOLUME_VARIABLE = 1;
    private boolean mCanDisconnect;
    private boolean mConnecting;
    private final ArrayList<IntentFilter> mControlFilters = new ArrayList();
    private String mDescription;
    private MediaRouteDescriptor mDescriptor;
    private final String mDescriptorId;
    private boolean mEnabled;
    private Bundle mExtras;
    private String mName;
    private int mPlaybackStream;
    private int mPlaybackType;
    private Display mPresentationDisplay;
    private int mPresentationDisplayId = -1;
    private final MediaRouter.ProviderInfo mProvider;
    private IntentSender mSettingsIntent;
    private final String mUniqueId;
    private int mVolume;
    private int mVolumeHandling;
    private int mVolumeMax;
    
    RouteInfo(MediaRouter.ProviderInfo paramProviderInfo, String paramString1, String paramString2)
    {
      mProvider = paramProviderInfo;
      mDescriptorId = paramString1;
      mUniqueId = paramString2;
    }
    
    public final boolean canDisconnect()
    {
      return mCanDisconnect;
    }
    
    public final List<IntentFilter> getControlFilters()
    {
      return mControlFilters;
    }
    
    public final String getDescription()
    {
      return mDescription;
    }
    
    final String getDescriptorId()
    {
      return mDescriptorId;
    }
    
    public final Bundle getExtras()
    {
      return mExtras;
    }
    
    public final String getId()
    {
      return mUniqueId;
    }
    
    public final String getName()
    {
      return mName;
    }
    
    public final int getPlaybackStream()
    {
      return mPlaybackStream;
    }
    
    public final int getPlaybackType()
    {
      return mPlaybackType;
    }
    
    public final Display getPresentationDisplay()
    {
      
      if ((mPresentationDisplayId >= 0) && (mPresentationDisplay == null)) {
        mPresentationDisplay = MediaRouter.sGlobal.getDisplay(mPresentationDisplayId);
      }
      return mPresentationDisplay;
    }
    
    public final MediaRouter.ProviderInfo getProvider()
    {
      return mProvider;
    }
    
    final MediaRouteProvider getProviderInstance()
    {
      return mProvider.getProviderInstance();
    }
    
    public final IntentSender getSettingsIntent()
    {
      return mSettingsIntent;
    }
    
    public final int getVolume()
    {
      return mVolume;
    }
    
    public final int getVolumeHandling()
    {
      return mVolumeHandling;
    }
    
    public final int getVolumeMax()
    {
      return mVolumeMax;
    }
    
    public final boolean isConnecting()
    {
      return mConnecting;
    }
    
    public final boolean isDefault()
    {
      MediaRouter.checkCallingThread();
      return MediaRouter.sGlobal.getDefaultRoute() == this;
    }
    
    public final boolean isEnabled()
    {
      return mEnabled;
    }
    
    public final boolean isSelected()
    {
      MediaRouter.checkCallingThread();
      return MediaRouter.sGlobal.getSelectedRoute() == this;
    }
    
    public final boolean matchesSelector(MediaRouteSelector paramMediaRouteSelector)
    {
      if (paramMediaRouteSelector == null) {
        throw new IllegalArgumentException("selector must not be null");
      }
      MediaRouter.checkCallingThread();
      return paramMediaRouteSelector.matchesControlFilters(mControlFilters);
    }
    
    public final void requestSetVolume(int paramInt)
    {
      MediaRouter.checkCallingThread();
      MediaRouter.sGlobal.requestSetVolume(this, Math.min(mVolumeMax, Math.max(0, paramInt)));
    }
    
    public final void requestUpdateVolume(int paramInt)
    {
      
      if (paramInt != 0) {
        MediaRouter.sGlobal.requestUpdateVolume(this, paramInt);
      }
    }
    
    public final void select()
    {
      MediaRouter.checkCallingThread();
      MediaRouter.sGlobal.selectRoute(this);
    }
    
    public final void sendControlRequest(Intent paramIntent, MediaRouter.ControlRequestCallback paramControlRequestCallback)
    {
      if (paramIntent == null) {
        throw new IllegalArgumentException("intent must not be null");
      }
      MediaRouter.checkCallingThread();
      MediaRouter.sGlobal.sendControlRequest(this, paramIntent, paramControlRequestCallback);
    }
    
    public final boolean supportsControlAction(String paramString1, String paramString2)
    {
      if (paramString1 == null) {
        throw new IllegalArgumentException("category must not be null");
      }
      if (paramString2 == null) {
        throw new IllegalArgumentException("action must not be null");
      }
      MediaRouter.checkCallingThread();
      int j = mControlFilters.size();
      int i = 0;
      while (i < j)
      {
        IntentFilter localIntentFilter = (IntentFilter)mControlFilters.get(i);
        if ((localIntentFilter.hasCategory(paramString1)) && (localIntentFilter.hasAction(paramString2))) {
          return true;
        }
        i += 1;
      }
      return false;
    }
    
    public final boolean supportsControlCategory(String paramString)
    {
      if (paramString == null) {
        throw new IllegalArgumentException("category must not be null");
      }
      MediaRouter.checkCallingThread();
      int j = mControlFilters.size();
      int i = 0;
      while (i < j)
      {
        if (((IntentFilter)mControlFilters.get(i)).hasCategory(paramString)) {
          return true;
        }
        i += 1;
      }
      return false;
    }
    
    public final boolean supportsControlRequest(Intent paramIntent)
    {
      if (paramIntent == null) {
        throw new IllegalArgumentException("intent must not be null");
      }
      MediaRouter.checkCallingThread();
      ContentResolver localContentResolver = MediaRouter.sGlobal.getContentResolver();
      int j = mControlFilters.size();
      int i = 0;
      while (i < j)
      {
        if (((IntentFilter)mControlFilters.get(i)).match(localContentResolver, paramIntent, true, "MediaRouter") >= 0) {
          return true;
        }
        i += 1;
      }
      return false;
    }
    
    public final String toString()
    {
      return "MediaRouter.RouteInfo{ uniqueId=" + mUniqueId + ", name=" + mName + ", description=" + mDescription + ", enabled=" + mEnabled + ", connecting=" + mConnecting + ", canDisconnect=" + mCanDisconnect + ", playbackType=" + mPlaybackType + ", playbackStream=" + mPlaybackStream + ", volumeHandling=" + mVolumeHandling + ", volume=" + mVolume + ", volumeMax=" + mVolumeMax + ", presentationDisplayId=" + mPresentationDisplayId + ", extras=" + mExtras + ", settingsIntent=" + mSettingsIntent + ", providerPackageName=" + mProvider.getPackageName() + " }";
    }
    
    final int updateDescriptor(MediaRouteDescriptor paramMediaRouteDescriptor)
    {
      int j = 1;
      int m = 0;
      int k = 0;
      int i = m;
      if (mDescriptor != paramMediaRouteDescriptor)
      {
        mDescriptor = paramMediaRouteDescriptor;
        i = m;
        if (paramMediaRouteDescriptor != null)
        {
          i = k;
          if (!MediaRouter.equal(mName, paramMediaRouteDescriptor.getName()))
          {
            mName = paramMediaRouteDescriptor.getName();
            i = 1;
          }
          if (!MediaRouter.equal(mDescription, paramMediaRouteDescriptor.getDescription()))
          {
            mDescription = paramMediaRouteDescriptor.getDescription();
            i = 1;
          }
          if (mEnabled == paramMediaRouteDescriptor.isEnabled()) {
            break label403;
          }
          mEnabled = paramMediaRouteDescriptor.isEnabled();
        }
      }
      for (;;)
      {
        i = j;
        if (mConnecting != paramMediaRouteDescriptor.isConnecting())
        {
          mConnecting = paramMediaRouteDescriptor.isConnecting();
          i = j | 0x1;
        }
        j = i;
        if (!mControlFilters.equals(paramMediaRouteDescriptor.getControlFilters()))
        {
          mControlFilters.clear();
          mControlFilters.addAll(paramMediaRouteDescriptor.getControlFilters());
          j = i | 0x1;
        }
        i = j;
        if (mPlaybackType != paramMediaRouteDescriptor.getPlaybackType())
        {
          mPlaybackType = paramMediaRouteDescriptor.getPlaybackType();
          i = j | 0x1;
        }
        j = i;
        if (mPlaybackStream != paramMediaRouteDescriptor.getPlaybackStream())
        {
          mPlaybackStream = paramMediaRouteDescriptor.getPlaybackStream();
          j = i | 0x1;
        }
        i = j;
        if (mVolumeHandling != paramMediaRouteDescriptor.getVolumeHandling())
        {
          mVolumeHandling = paramMediaRouteDescriptor.getVolumeHandling();
          i = j | 0x3;
        }
        j = i;
        if (mVolume != paramMediaRouteDescriptor.getVolume())
        {
          mVolume = paramMediaRouteDescriptor.getVolume();
          j = i | 0x3;
        }
        i = j;
        if (mVolumeMax != paramMediaRouteDescriptor.getVolumeMax())
        {
          mVolumeMax = paramMediaRouteDescriptor.getVolumeMax();
          i = j | 0x3;
        }
        j = i;
        if (mPresentationDisplayId != paramMediaRouteDescriptor.getPresentationDisplayId())
        {
          mPresentationDisplayId = paramMediaRouteDescriptor.getPresentationDisplayId();
          mPresentationDisplay = null;
          j = i | 0x5;
        }
        i = j;
        if (!MediaRouter.equal(mExtras, paramMediaRouteDescriptor.getExtras()))
        {
          mExtras = paramMediaRouteDescriptor.getExtras();
          i = j | 0x1;
        }
        j = i;
        if (!MediaRouter.equal(mSettingsIntent, paramMediaRouteDescriptor.getSettingsActivity()))
        {
          mSettingsIntent = paramMediaRouteDescriptor.getSettingsActivity();
          j = i | 0x1;
        }
        if (mCanDisconnect != paramMediaRouteDescriptor.canDisconnectAndKeepPlaying())
        {
          mCanDisconnect = paramMediaRouteDescriptor.canDisconnectAndKeepPlaying();
          i = j | 0x5;
          return i;
        }
        return j;
        label403:
        j = i;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */