package com.cbs.app.view.utils;

import android.graphics.Bitmap;
import android.os.Handler;
import android.util.LruCache;
import com.cbs.app.view.ThumbNailView;

final class ImageLoaderLRU$2
  implements Runnable
{
  ImageLoaderLRU$2(ImageLoaderLRU paramImageLoaderLRU, String paramString, int paramInt, Handler paramHandler, ThumbNailView paramThumbNailView) {}
  
  public final void run()
  {
    final Bitmap localBitmap = ImageLoaderLRU.a(e, a, b, b);
    if (localBitmap != null)
    {
      c.post(new Runnable()
      {
        public final void run()
        {
          if ((d != null) && (d.getUrl().equals(a))) {
            d.setBitmap(localBitmap);
          }
        }
      });
      if (b < 1024) {
        ImageLoaderLRU.a().put(a, localBitmap);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.utils.ImageLoaderLRU.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */