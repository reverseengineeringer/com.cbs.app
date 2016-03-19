package com.cbs.app.view.utils;

import android.graphics.Bitmap;
import com.cbs.app.view.ThumbNailView;

final class ImageLoaderLRU$2$1
  implements Runnable
{
  ImageLoaderLRU$2$1(ImageLoaderLRU.2 param2, Bitmap paramBitmap) {}
  
  public final void run()
  {
    if ((b.d != null) && (b.d.getUrl().equals(b.a))) {
      b.d.setBitmap(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.utils.ImageLoaderLRU.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */