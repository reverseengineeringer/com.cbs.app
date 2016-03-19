package com.cbs.app.view.utils;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.util.Log;
import android.view.View;
import com.d.a.b.c.a;
import com.d.a.b.d;

public class ImagePreLoader
  extends AsyncTask<ImagePreloadConfig[], Double, Void>
{
  protected static final String a = ImagePreLoader.class.getSimpleName();
  private Activity b;
  private boolean c;
  
  private Void a(final ImagePreloadConfig[]... paramVarArgs)
  {
    if ((paramVarArgs != null) && (paramVarArgs.length > 0))
    {
      ImagePreloadConfig[] arrayOfImagePreloadConfig = paramVarArgs[0];
      if ((arrayOfImagePreloadConfig != null) && (arrayOfImagePreloadConfig.length > 0))
      {
        int j = arrayOfImagePreloadConfig.length;
        int i = 0;
        for (;;)
        {
          if (i < j)
          {
            paramVarArgs = arrayOfImagePreloadConfig[i];
            if (paramVarArgs != null)
            {
              String str = a;
              if (a != null)
              {
                int k = b;
                int m = Util.a(b);
                paramVarArgs = ImageHelper.a(str, k, m);
                if (c) {
                  paramVarArgs = ImageHelper.b(str, k, m);
                }
                b.runOnUiThread(new Runnable()
                {
                  public final void run()
                  {
                    com.d.a.b.c localc = new c.a().b().c().d();
                    d.a().a(paramVarArgs, localc, new com.d.a.b.f.c()
                    {
                      public final void a() {}
                      
                      public final void a(String paramAnonymous2String, View paramAnonymous2View, Bitmap paramAnonymous2Bitmap) {}
                      
                      public final void b() {}
                    });
                  }
                });
              }
            }
            try
            {
              Thread.sleep(100L);
              i += 1;
            }
            catch (InterruptedException paramVarArgs)
            {
              for (;;)
              {
                Log.e(a, paramVarArgs.getLocalizedMessage());
              }
            }
          }
        }
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.utils.ImagePreLoader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */