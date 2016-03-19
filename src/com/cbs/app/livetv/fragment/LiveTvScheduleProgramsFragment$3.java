package com.cbs.app.livetv.fragment;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.d.a.b.f.c;

final class LiveTvScheduleProgramsFragment$3
  extends c
{
  LiveTvScheduleProgramsFragment$3(LiveTvScheduleProgramsFragment paramLiveTvScheduleProgramsFragment, ImageView paramImageView, View paramView) {}
  
  public final void a(String paramString, View paramView, Bitmap paramBitmap)
  {
    if (a.getDrawable() != null)
    {
      a.getDrawable().setColorFilter(c.getResources().getColor(2131558516), PorterDuff.Mode.SRC_ATOP);
      b.setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvScheduleProgramsFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */