package com.cbs.app.view.fragments.show.photos;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import com.cbs.app.view.model.AlbumPhoto;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Util;
import com.d.a.b.f.c;
import java.util.ArrayList;
import ru.truba.touchgallery.GalleryWidget.GalleryViewPager;
import ru.truba.touchgallery.TouchView.TouchImageView;

final class GalleryActivity$a
  extends PagerAdapter
{
  Context a;
  Bitmap b;
  
  public GalleryActivity$a(GalleryActivity paramGalleryActivity, Context paramContext)
  {
    GalleryActivity.c();
    a = paramContext;
    b = BitmapFactory.decodeResource(a.getResources(), 2130837810);
    GalleryActivity.c();
    new StringBuilder("context ViewPagerAdapter: ").append(a);
  }
  
  public final void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    GalleryActivity.c();
    if ((paramObject != null) && ((paramObject instanceof View))) {
      paramViewGroup.removeView((View)paramObject);
    }
  }
  
  public final int getCount()
  {
    if (GalleryActivity.f(c) == null) {
      return 0;
    }
    return GalleryActivity.f(c).size();
  }
  
  public final Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    GalleryActivity.c();
    TouchImageView localTouchImageView = new TouchImageView(a);
    Object localObject = (AlbumPhoto)GalleryActivity.f(c).get(paramInt);
    localTouchImageView.setTag(localObject);
    localTouchImageView.setEnabled(false);
    localObject = ((AlbumPhoto)localObject).getFilepath();
    if (localObject != null)
    {
      int i = Util.a(a);
      paramInt = 400;
      if ((Util.i(a)) || (Util.j(a))) {
        paramInt = 600;
      }
      GalleryActivity.c();
      localObject = ImageHelper.a((String)localObject, paramInt, i);
      GalleryActivity.c();
      ImageHelper.b((String)localObject, localTouchImageView, new c()
      {
        public final void a(String paramAnonymousString, View paramAnonymousView, Bitmap paramAnonymousBitmap)
        {
          GalleryActivity.c();
          paramAnonymousView.setEnabled(true);
        }
      });
      GalleryActivity.c();
      localTouchImageView.setImageBitmap(b);
      GalleryActivity.c();
    }
    paramViewGroup.addView(localTouchImageView, 0);
    return localTouchImageView;
  }
  
  public final boolean isViewFromObject(View paramView, Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramObject != null)
    {
      bool1 = bool2;
      if ((paramObject instanceof View))
      {
        bool1 = bool2;
        if (paramView == (View)paramObject) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public final void setPrimaryItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    super.setPrimaryItem(paramViewGroup, paramInt, paramObject);
    GalleryActivity.c();
    if ((paramViewGroup != null) && ((paramViewGroup instanceof GalleryViewPager)) && (paramObject != null) && ((paramObject instanceof TouchImageView)))
    {
      GalleryActivity.c();
      new StringBuilder("setPrimaryItem found it, context: ").append(a);
      b = ((TouchImageView)paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.photos.GalleryActivity.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */