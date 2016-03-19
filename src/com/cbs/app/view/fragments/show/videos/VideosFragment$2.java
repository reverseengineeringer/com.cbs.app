package com.cbs.app.view.fragments.show.videos;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.utils.Util;
import com.cbs.app.visualon.player.CBSPlayer;
import com.cbs.app.visualon.player.FullScreenButtonListener;
import com.cbs.app.visualon.player.PlayerRect;

final class VideosFragment$2
  implements FullScreenButtonListener
{
  VideosFragment$2(VideosFragment paramVideosFragment) {}
  
  public final PlayerRect a(int paramInt)
  {
    VideosFragment.j();
    PlayerRect localPlayerRect = new PlayerRect();
    Object localObject;
    int i;
    int j;
    if (VideosFragment.u(a) != null)
    {
      localObject = a.getApplicationContext().getResources().getDisplayMetrics();
      VideosFragment.v(a).getWindowManager().getDefaultDisplay().getMetrics((DisplayMetrics)localObject);
      i = Util.b(VideosFragment.w(a));
      VideosFragment.j();
      VideosFragment.j();
      new StringBuilder("screen size: ").append(widthPixels).append(" ").append(heightPixels);
      j = Math.round(a.getResources().getDimension(2131361986));
      if ((CBSPlayer.y()) || (Util.e(VideosFragment.x(a))))
      {
        a = widthPixels;
        b = heightPixels;
      }
    }
    else
    {
      return localPlayerRect;
    }
    if (paramInt == 2)
    {
      localObject = new TypedValue();
      a.getResources().getValue(2131361831, (TypedValue)localObject, true);
      float f = ((TypedValue)localObject).getFloat();
      double d2 = 0.0D;
      double d1 = d2;
      if (Util.a())
      {
        d1 = d2;
        if (Util.h(VideosFragment.y(a)))
        {
          d1 = d2;
          if (Build.VERSION.SDK_INT <= 15) {
            d1 = Util.a(VideosFragment.z(a), 55.0D);
          }
        }
      }
      paramInt = (int)Math.round(f * i);
      VideosFragment.j();
      VideosFragment.j();
      VideosFragment.j();
      d2 = i;
      double d3 = paramInt;
      paramInt = (int)Math.round(d2 - (d1 + (j * 2.0D + d3)));
      VideosFragment.j();
      i = (int)Math.round(paramInt * 0.5625D);
      VideosFragment.j();
      a = paramInt;
      b = i;
      VideosFragment.j();
      new StringBuilder("view size2: ").append(a).append(" ").append(b);
      return localPlayerRect;
    }
    a = ((int)Math.round(widthPixels - j * 2.0D));
    b = ((int)Math.round(a * 0.5625D));
    return localPlayerRect;
  }
  
  public final void a()
  {
    VideosFragment.j();
    Object localObject2 = a.getView();
    FrameLayout localFrameLayout;
    RelativeLayout localRelativeLayout1;
    RelativeLayout localRelativeLayout2;
    View localView;
    if ((VideosFragment.a(a) != null) && (!VideosFragment.b(a).isFinishing()) && (localObject2 != null))
    {
      VideosFragment.j();
      localObject1 = (LinearLayout)((View)localObject2).findViewById(2131690416);
      localFrameLayout = (FrameLayout)VideosFragment.c(a).findViewById(2131690432);
      localRelativeLayout1 = (RelativeLayout)VideosFragment.d(a).findViewById(2131690423);
      localRelativeLayout2 = (RelativeLayout)VideosFragment.e(a).findViewById(2131689939);
      localObject2 = (ImageView)((View)localObject2).findViewById(2131690413);
      int i = VideosFragment.f(a).getResources().getInteger(2131492887);
      localView = VideosFragment.g(a).findViewById(i);
      if ((localObject1 != null) && (localFrameLayout != null) && (localRelativeLayout1 != null) && (localRelativeLayout2 != null) && (localObject2 != null)) {}
    }
    else
    {
      return;
    }
    VideosFragment.h(a).getWindow().setFlags(1024, 1024);
    VideosFragment.i(a).getSupportActionBar().hide();
    ((LinearLayout)localObject1).setVisibility(8);
    localRelativeLayout1.setVisibility(8);
    localRelativeLayout2.setVisibility(8);
    ((ImageView)localObject2).setVisibility(8);
    localFrameLayout.setVisibility(8);
    if (localView != null)
    {
      localView.setVisibility(8);
      localView.setBackgroundColor(VideosFragment.j(a).getResources().getColor(17170445));
    }
    Object localObject1 = VideosFragment.k(a).getResources().getConfiguration();
    a.a(orientation);
  }
  
  public final void b()
  {
    VideosFragment.j();
    View localView = a.getView();
    FrameLayout localFrameLayout;
    RelativeLayout localRelativeLayout1;
    RelativeLayout localRelativeLayout2;
    ImageView localImageView;
    if ((VideosFragment.l(a) != null) && (!VideosFragment.m(a).isFinishing()) && (localView != null))
    {
      VideosFragment.j();
      VideosFragment.n(a).getSupportActionBar().show();
      VideosFragment.o(a).getWindow().clearFlags(1024);
      localObject = (LinearLayout)localView.findViewById(2131690416);
      localFrameLayout = (FrameLayout)VideosFragment.p(a).findViewById(2131690432);
      localRelativeLayout1 = (RelativeLayout)VideosFragment.q(a).findViewById(2131690423);
      localRelativeLayout2 = (RelativeLayout)VideosFragment.r(a).findViewById(2131689939);
      localImageView = (ImageView)localView.findViewById(2131690413);
      localView = localView.findViewById(VideosFragment.s(a).getResources().getInteger(2131492887));
      if ((localObject != null) && (localFrameLayout != null) && (localRelativeLayout1 != null) && (localRelativeLayout2 != null) && (localImageView != null)) {}
    }
    else
    {
      return;
    }
    ((LinearLayout)localObject).setVisibility(0);
    localRelativeLayout1.setVisibility(0);
    localRelativeLayout2.setVisibility(0);
    localImageView.setVisibility(0);
    localFrameLayout.setVisibility(0);
    if (localView != null) {
      localView.setVisibility(0);
    }
    Object localObject = VideosFragment.t(a).getResources().getConfiguration();
    a.a(orientation);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.VideosFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */