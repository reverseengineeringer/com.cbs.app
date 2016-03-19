package com.cbs.app.view.fragments.show.photos;

import android.support.v4.view.ViewPager.OnPageChangeListener;
import com.cbs.app.view.InterstitialAdManagerV2;

final class GalleryActivity$1
  implements ViewPager.OnPageChangeListener
{
  GalleryActivity$1(GalleryActivity paramGalleryActivity) {}
  
  public final void onPageScrollStateChanged(int paramInt)
  {
    GalleryActivity.c();
  }
  
  public final void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    GalleryActivity.c();
  }
  
  public final void onPageSelected(int paramInt)
  {
    GalleryActivity.c();
    a.setActionbar(paramInt);
    a.setData(paramInt);
    InterstitialAdManagerV2.a(a, 5);
    if (a.a) {
      a.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.photos.GalleryActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */