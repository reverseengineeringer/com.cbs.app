package com.cbs.app.view.utils;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.d.a.b.f.c;

final class ImageHelper$2
  extends c
{
  ImageHelper$2(ImageView paramImageView, int paramInt) {}
  
  public final void a(String paramString, View paramView, Bitmap paramBitmap)
  {
    if (a != null)
    {
      float f = paramBitmap.getHeight() * 1.0F / paramBitmap.getWidth();
      a.setImageBitmap(paramBitmap);
      paramString = a.getLayoutParams();
      width = b;
      height = ((int)(f * b));
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.utils.ImageHelper.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */