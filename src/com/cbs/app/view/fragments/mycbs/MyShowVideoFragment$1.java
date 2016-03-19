package com.cbs.app.view.fragments.mycbs;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.adapter.mycbs.ShowVideoAdapter.VideoDataHolder;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.VideoUtil;

final class MyShowVideoFragment$1
  implements View.OnClickListener
{
  MyShowVideoFragment$1(MyShowVideoFragment paramMyShowVideoFragment) {}
  
  public final void onClick(View paramView)
  {
    MyShowVideoFragment.i();
    paramView = getTagb;
    if (paramView != null)
    {
      ShowItem localShowItem = ShowServiceManager.a(paramView.getCbsShowId());
      if (localShowItem != null)
      {
        VideoUtil.a(MyShowVideoFragment.a(a), paramView, localShowItem);
        MyShowVideoFragment.a(a, paramView);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.MyShowVideoFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */