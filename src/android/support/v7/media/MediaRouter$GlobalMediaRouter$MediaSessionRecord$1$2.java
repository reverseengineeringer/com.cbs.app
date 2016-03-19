package android.support.v7.media;

class MediaRouter$GlobalMediaRouter$MediaSessionRecord$1$2
  implements Runnable
{
  MediaRouter$GlobalMediaRouter$MediaSessionRecord$1$2(MediaRouter.GlobalMediaRouter.MediaSessionRecord.1 param1, int paramInt) {}
  
  public void run()
  {
    if (MediaRouter.GlobalMediaRouter.access$1200(this$2.this$1.this$0) != null) {
      MediaRouter.GlobalMediaRouter.access$1200(this$2.this$1.this$0).requestUpdateVolume(val$direction);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouter.GlobalMediaRouter.MediaSessionRecord.1.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */