package com.cbs.app.view;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.media.ThumbnailUtils;
import com.cbs.app.view.utils.Util;

final class SplashActivity2$c
  implements Runnable
{
  private SplashActivity2$c(SplashActivity2 paramSplashActivity2) {}
  
  public final void run()
  {
    if (SplashActivity2.a(a)) {}
    for (;;)
    {
      try
      {
        SplashActivity2 localSplashActivity2 = a;
        int j = 2130838055;
        if (Util.e(localSplashActivity2)) {
          break label213;
        }
        i = j;
        if (Util.i(localSplashActivity2))
        {
          i = j;
          if (Util.k(localSplashActivity2)) {
            break label213;
          }
        }
        Object localObject = new BitmapFactory.Options();
        inSampleSize = 1;
        localObject = BitmapFactory.decodeResource(localSplashActivity2.getResources(), i, (BitmapFactory.Options)localObject);
        i = Util.b(localSplashActivity2);
        j = Util.c(localSplashActivity2);
        if ((Util.e(localSplashActivity2)) && (Util.k(localSplashActivity2)))
        {
          i = Math.min(i, j);
          int k = ((Bitmap)localObject).getHeight();
          int m = ((Bitmap)localObject).getWidth();
          j = m;
          if (m > (int)Math.round(i / 1.5D))
          {
            j = (int)Math.round(i / 1.5D);
            k = (int)Math.round(((Bitmap)localObject).getHeight() / ((Bitmap)localObject).getWidth() * j);
          }
          localSplashActivity2.runOnUiThread(new SplashActivity2.d(localSplashActivity2, j, k, ThumbnailUtils.extractThumbnail((Bitmap)localObject, j, k)));
          return;
        }
      }
      catch (Exception localException)
      {
        SplashActivity2.o(a);
        return;
      }
      continue;
      label213:
      int i = 2130837987;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SplashActivity2.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */