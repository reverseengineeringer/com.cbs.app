package com.cbs.app.view.fragments.show.videos;

import android.support.v7.app.AppCompatActivity;
import com.cbs.app.GlobalConstants;
import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.utils.Util;
import com.cbs.app.visualon.player.CBSPlayer;

final class VideosFragment$3
  implements BackButtonListener
{
  VideosFragment$3(VideosFragment paramVideosFragment) {}
  
  public final boolean c()
  {
    VideosFragment.j();
    new StringBuilder("onBack:").append(VideosFragment.A(a));
    if ((VideosFragment.B(a) != null) && (VideosFragment.C(a)))
    {
      if (!GlobalConstants.b) {
        break label72;
      }
      Util.O(VideosFragment.D(a));
      VideosFragment.E(a).finish();
    }
    label72:
    do
    {
      return false;
      if (Util.e(VideosFragment.F(a)))
      {
        switch (VideosFragment.A(a))
        {
        case 0: 
        default: 
          return false;
        case 1: 
          VideosFragment.a(a, Util.c("fragment_show_videos"));
          a.g();
          return true;
        case 2: 
          a.i();
          return true;
        }
        VideosFragment.f();
        return true;
      }
    } while (!Util.h(VideosFragment.G(a)));
    VideosFragment.j();
    new StringBuilder(" On tablet:").append(VideosFragment.A(a));
    if (CBSPlayer.y())
    {
      CBSPlayer.z();
      return true;
    }
    VideosFragment.j();
    new StringBuilder("Screen in tablet:").append(VideosFragment.A(a));
    switch (VideosFragment.A(a))
    {
    case 0: 
    default: 
      return false;
    case 1: 
      a.h();
      return true;
    }
    VideosFragment.f();
    return true;
  }
  
  public final String getTag()
  {
    return VideosFragment.j();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.VideosFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */