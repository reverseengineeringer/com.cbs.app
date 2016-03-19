package android.support.v7.media;

final class MediaRouter$GlobalMediaRouter$RemoteControlClientRecord
  implements RemoteControlClientCompat.VolumeCallback
{
  private boolean mDisconnected;
  private final RemoteControlClientCompat mRccCompat;
  
  public MediaRouter$GlobalMediaRouter$RemoteControlClientRecord(MediaRouter.GlobalMediaRouter paramGlobalMediaRouter, Object paramObject)
  {
    mRccCompat = RemoteControlClientCompat.obtain(MediaRouter.GlobalMediaRouter.access$1100(paramGlobalMediaRouter), paramObject);
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
    if ((!mDisconnected) && (MediaRouter.GlobalMediaRouter.access$1200(this$0) != null)) {
      MediaRouter.GlobalMediaRouter.access$1200(this$0).requestSetVolume(paramInt);
    }
  }
  
  public final void onVolumeUpdateRequest(int paramInt)
  {
    if ((!mDisconnected) && (MediaRouter.GlobalMediaRouter.access$1200(this$0) != null)) {
      MediaRouter.GlobalMediaRouter.access$1200(this$0).requestUpdateVolume(paramInt);
    }
  }
  
  public final void updatePlaybackInfo()
  {
    mRccCompat.setPlaybackInfo(MediaRouter.GlobalMediaRouter.access$1400(this$0));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouter.GlobalMediaRouter.RemoteControlClientRecord
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */