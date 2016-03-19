package android.support.v7.media;

import android.support.v4.media.VolumeProviderCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.MediaSessionCompat.Token;

final class MediaRouter$GlobalMediaRouter$MediaSessionRecord
{
  private int mControlType;
  private int mMaxVolume;
  private final MediaSessionCompat mMsCompat;
  private VolumeProviderCompat mVpCompat;
  
  public MediaRouter$GlobalMediaRouter$MediaSessionRecord(MediaRouter.GlobalMediaRouter paramGlobalMediaRouter, Object paramObject)
  {
    mMsCompat = MediaSessionCompat.obtain(MediaRouter.GlobalMediaRouter.access$1100(paramGlobalMediaRouter), paramObject);
  }
  
  public final void clearVolumeHandling()
  {
    mMsCompat.setPlaybackToLocal(access$1400this$0).playbackStream);
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
        MediaRouter.GlobalMediaRouter.access$1300(this$0).post(new Runnable()
        {
          public void run()
          {
            if (MediaRouter.GlobalMediaRouter.access$1200(this$0) != null) {
              MediaRouter.GlobalMediaRouter.access$1200(this$0).requestUpdateVolume(paramAnonymousInt);
            }
          }
        });
      }
      
      public void onSetVolumeTo(final int paramAnonymousInt)
      {
        MediaRouter.GlobalMediaRouter.access$1300(this$0).post(new Runnable()
        {
          public void run()
          {
            if (MediaRouter.GlobalMediaRouter.access$1200(this$0) != null) {
              MediaRouter.GlobalMediaRouter.access$1200(this$0).requestSetVolume(paramAnonymousInt);
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

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouter.GlobalMediaRouter.MediaSessionRecord
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */