package com.cbs.app.livetv.widget;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.d.a.b.f.c;

final class LiveTvScheduleProgramAdapter$a$1
  extends c
{
  LiveTvScheduleProgramAdapter$a$1(LiveTvScheduleProgramAdapter.a parama, ImageView paramImageView, Resources paramResources, View paramView) {}
  
  public final void a(String paramString, View paramView, Bitmap paramBitmap)
  {
    if (a.getDrawable() != null)
    {
      a.getDrawable().setColorFilter(b.getColor(2131558516), PorterDuff.Mode.SRC_ATOP);
      c.setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.widget.LiveTvScheduleProgramAdapter.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */