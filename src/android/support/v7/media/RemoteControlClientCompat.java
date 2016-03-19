package android.support.v7.media;

import android.content.Context;
import android.os.Build.VERSION;
import java.lang.ref.WeakReference;

abstract class RemoteControlClientCompat
{
  protected final Context mContext;
  protected final Object mRcc;
  protected VolumeCallback mVolumeCallback;
  
  protected RemoteControlClientCompat(Context paramContext, Object paramObject)
  {
    mContext = paramContext;
    mRcc = paramObject;
  }
  
  public static RemoteControlClientCompat obtain(Context paramContext, Object paramObject)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return new JellybeanImpl(paramContext, paramObject);
    }
    return new LegacyImpl(paramContext, paramObject);
  }
  
  public Object getRemoteControlClient()
  {
    return mRcc;
  }
  
  public void setPlaybackInfo(PlaybackInfo paramPlaybackInfo) {}
  
  public void setVolumeCallback(VolumeCallback paramVolumeCallback)
  {
    mVolumeCallback = paramVolumeCallback;
  }
  
  static class JellybeanImpl
    extends RemoteControlClientCompat
  {
    private boolean mRegistered;
    private final Object mRouterObj;
    private final Object mUserRouteCategoryObj;
    private final Object mUserRouteObj;
    
    public JellybeanImpl(Context paramContext, Object paramObject)
    {
      super(paramObject);
      mRouterObj = MediaRouterJellybean.getMediaRouter(paramContext);
      mUserRouteCategoryObj = MediaRouterJellybean.createRouteCategory(mRouterObj, "", false);
      mUserRouteObj = MediaRouterJellybean.createUserRoute(mRouterObj, mUserRouteCategoryObj);
    }
    
    public void setPlaybackInfo(RemoteControlClientCompat.PlaybackInfo paramPlaybackInfo)
    {
      MediaRouterJellybean.UserRouteInfo.setVolume(mUserRouteObj, volume);
      MediaRouterJellybean.UserRouteInfo.setVolumeMax(mUserRouteObj, volumeMax);
      MediaRouterJellybean.UserRouteInfo.setVolumeHandling(mUserRouteObj, volumeHandling);
      MediaRouterJellybean.UserRouteInfo.setPlaybackStream(mUserRouteObj, playbackStream);
      MediaRouterJellybean.UserRouteInfo.setPlaybackType(mUserRouteObj, playbackType);
      if (!mRegistered)
      {
        mRegistered = true;
        MediaRouterJellybean.UserRouteInfo.setVolumeCallback(mUserRouteObj, MediaRouterJellybean.createVolumeCallback(new VolumeCallbackWrapper(this)));
        MediaRouterJellybean.UserRouteInfo.setRemoteControlClient(mUserRouteObj, mRcc);
      }
    }
    
    private static final class VolumeCallbackWrapper
      implements MediaRouterJellybean.VolumeCallback
    {
      private final WeakReference<RemoteControlClientCompat.JellybeanImpl> mImplWeak;
      
      public VolumeCallbackWrapper(RemoteControlClientCompat.JellybeanImpl paramJellybeanImpl)
      {
        mImplWeak = new WeakReference(paramJellybeanImpl);
      }
      
      public final void onVolumeSetRequest(Object paramObject, int paramInt)
      {
        paramObject = (RemoteControlClientCompat.JellybeanImpl)mImplWeak.get();
        if ((paramObject != null) && (mVolumeCallback != null)) {
          mVolumeCallback.onVolumeSetRequest(paramInt);
        }
      }
      
      public final void onVolumeUpdateRequest(Object paramObject, int paramInt)
      {
        paramObject = (RemoteControlClientCompat.JellybeanImpl)mImplWeak.get();
        if ((paramObject != null) && (mVolumeCallback != null)) {
          mVolumeCallback.onVolumeUpdateRequest(paramInt);
        }
      }
    }
  }
  
  static class LegacyImpl
    extends RemoteControlClientCompat
  {
    public LegacyImpl(Context paramContext, Object paramObject)
    {
      super(paramObject);
    }
  }
  
  public static final class PlaybackInfo
  {
    public int playbackStream = 3;
    public int playbackType = 1;
    public int volume;
    public int volumeHandling = 0;
    public int volumeMax;
  }
  
  public static abstract interface VolumeCallback
  {
    public abstract void onVolumeSetRequest(int paramInt);
    
    public abstract void onVolumeUpdateRequest(int paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.RemoteControlClientCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */