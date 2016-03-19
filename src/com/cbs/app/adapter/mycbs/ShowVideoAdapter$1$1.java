package com.cbs.app.adapter.mycbs;

import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.ShowServiceManager.ShowServiceManagerListener;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.Util;

final class ShowVideoAdapter$1$1
  implements ShowServiceManager.ShowServiceManagerListener
{
  ShowVideoAdapter$1$1(ShowVideoAdapter.1 param1, VideoData paramVideoData, NavigationActivity paramNavigationActivity) {}
  
  public final void a()
  {
    ShowItem localShowItem = ShowServiceManager.a(a.getCbsShowId());
    Util.a(b, localShowItem, a);
  }
  
  public final void a(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.mycbs.ShowVideoAdapter.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */