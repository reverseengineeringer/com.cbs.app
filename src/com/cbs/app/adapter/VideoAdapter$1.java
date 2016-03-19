package com.cbs.app.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.ShowServiceManager.ShowServiceManagerListener;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.Util;

final class VideoAdapter$1
  implements View.OnClickListener
{
  VideoAdapter$1(VideoAdapter paramVideoAdapter) {}
  
  public final void onClick(final View paramView)
  {
    paramView = (VideoData)paramView.getTag();
    final NavigationActivity localNavigationActivity;
    if (paramView != null)
    {
      localNavigationActivity = (NavigationActivity)VideoAdapter.a(a);
      localObject = ShowServiceManager.a(paramView.getCbsShowId());
      if (localObject != null) {
        Util.a(localNavigationActivity, (ShowItem)localObject, paramView);
      }
    }
    else
    {
      return;
    }
    Object localObject = new ShowServiceManager(localNavigationActivity);
    ((ShowServiceManager)localObject).setShowServiceListener(new ShowServiceManager.ShowServiceManagerListener()
    {
      public final void a()
      {
        ShowItem localShowItem = ShowServiceManager.a(paramView.getCbsShowId());
        Util.a(localNavigationActivity, localShowItem, paramView);
      }
      
      public final void a(int paramAnonymousInt) {}
    });
    ((ShowServiceManager)localObject).getEverything();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.VideoAdapter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */