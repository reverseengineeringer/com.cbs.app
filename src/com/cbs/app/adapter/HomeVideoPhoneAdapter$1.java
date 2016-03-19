package com.cbs.app.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.ShowServiceManager.ShowServiceManagerListener;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.Util;

final class HomeVideoPhoneAdapter$1
  implements View.OnClickListener
{
  HomeVideoPhoneAdapter$1(HomeVideoPhoneAdapter paramHomeVideoPhoneAdapter) {}
  
  public final void onClick(final View paramView)
  {
    paramView = (VideoData)paramView.getTag();
    final NavigationActivity localNavigationActivity;
    if (paramView != null)
    {
      localNavigationActivity = (NavigationActivity)HomeVideoPhoneAdapter.a(a);
      if (localNavigationActivity != null)
      {
        localObject = ShowServiceManager.a(paramView.getCbsShowId());
        if (localObject == null) {
          break label46;
        }
        Util.a(localNavigationActivity, (ShowItem)localObject, paramView);
      }
    }
    return;
    label46:
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
 * Qualified Name:     com.cbs.app.adapter.HomeVideoPhoneAdapter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */