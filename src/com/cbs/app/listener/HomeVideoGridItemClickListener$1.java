package com.cbs.app.listener;

import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.ShowServiceManager.ShowServiceManagerListener;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.VideoUtil;

final class HomeVideoGridItemClickListener$1
  implements ShowServiceManager.ShowServiceManagerListener
{
  HomeVideoGridItemClickListener$1(HomeVideoGridItemClickListener paramHomeVideoGridItemClickListener, VideoData paramVideoData, int paramInt) {}
  
  public final void a()
  {
    ShowItem localShowItem = ShowServiceManager.a(a.getCbsShowId());
    VideoUtil.a(HomeVideoGridItemClickListener.a(c), a, localShowItem);
    HomeVideoGridItemClickListener.a(c, a);
  }
  
  public final void a(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.listener.HomeVideoGridItemClickListener.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */