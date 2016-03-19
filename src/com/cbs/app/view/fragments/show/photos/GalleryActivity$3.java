package com.cbs.app.view.fragments.show.photos;

import android.app.Activity;
import com.cbs.app.widget.TouchTimeoutParent.TouchTimeoutListener;

final class GalleryActivity$3
  implements TouchTimeoutParent.TouchTimeoutListener
{
  GalleryActivity$3(GalleryActivity paramGalleryActivity, Activity paramActivity) {}
  
  public final void a()
  {
    GalleryActivity.c();
    a.runOnUiThread(new Runnable()
    {
      public final void run()
      {
        GalleryActivity.a(b);
      }
    });
  }
  
  public final void b()
  {
    GalleryActivity.c();
    a.runOnUiThread(new Runnable()
    {
      public final void run()
      {
        GalleryActivity.b(b);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.photos.GalleryActivity.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */