package android.support.v7.media;

import android.support.v4.media.VolumeProviderCompat;

class MediaRouter$GlobalMediaRouter$MediaSessionRecord$1
  extends VolumeProviderCompat
{
  MediaRouter$GlobalMediaRouter$MediaSessionRecord$1(MediaRouter.GlobalMediaRouter.MediaSessionRecord paramMediaSessionRecord, int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramInt1, paramInt2, paramInt3);
  }
  
  public void onAdjustVolume(final int paramInt)
  {
    MediaRouter.GlobalMediaRouter.access$1300(this$1.this$0).post(new Runnable()
    {
      public void run()
      {
        if (MediaRouter.GlobalMediaRouter.access$1200(this$1.this$0) != null) {
          MediaRouter.GlobalMediaRouter.access$1200(this$1.this$0).requestUpdateVolume(paramInt);
        }
      }
    });
  }
  
  public void onSetVolumeTo(final int paramInt)
  {
    MediaRouter.GlobalMediaRouter.access$1300(this$1.this$0).post(new Runnable()
    {
      public void run()
      {
        if (MediaRouter.GlobalMediaRouter.access$1200(this$1.this$0) != null) {
          MediaRouter.GlobalMediaRouter.access$1200(this$1.this$0).requestSetVolume(paramInt);
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouter.GlobalMediaRouter.MediaSessionRecord.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */