package com.cbs.app.adapter.mycbs;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.ShowServiceManager.ShowServiceManagerListener;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.Util;

final class ShowVideoAdapter$1
  implements View.OnClickListener
{
  ShowVideoAdapter$1(ShowVideoAdapter paramShowVideoAdapter) {}
  
  public final void onClick(final View paramView)
  {
    final Object localObject1 = ShowVideoAdapter.a;
    paramView = (VideoData)paramView.getTag();
    if (paramView != null)
    {
      localObject1 = ShowVideoAdapter.a;
      new StringBuilder("video pid:").append(paramView.getPid());
      localObject1 = (NavigationActivity)ShowVideoAdapter.a(a);
      localObject2 = ShowServiceManager.a(paramView.getCbsShowId());
      if (localObject2 != null) {
        Util.a((NavigationActivity)localObject1, (ShowItem)localObject2, paramView);
      }
    }
    else
    {
      return;
    }
    Object localObject2 = new ShowServiceManager((Context)localObject1);
    ((ShowServiceManager)localObject2).setShowServiceListener(new ShowServiceManager.ShowServiceManagerListener()
    {
      public final void a()
      {
        ShowItem localShowItem = ShowServiceManager.a(paramView.getCbsShowId());
        Util.a(localObject1, localShowItem, paramView);
      }
      
      public final void a(int paramAnonymousInt) {}
    });
    ((ShowServiceManager)localObject2).getEverything();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.mycbs.ShowVideoAdapter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */