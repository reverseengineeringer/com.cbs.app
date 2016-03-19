package com.cbs.app.view.fragments.mycbs;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.cbs.app.service.MyCBSService;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.FavoriteShow;
import com.cbs.app.view.model.FavoriteShowList;
import java.util.ArrayList;
import java.util.Iterator;

final class MyShowVideoFragment$10
  implements AdapterView.OnItemClickListener
{
  MyShowVideoFragment$10(MyShowVideoFragment paramMyShowVideoFragment) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    MyShowVideoFragment.i();
    MyShowVideoFragment.a(a, paramView);
    paramView = (ShowItem)paramAdapterView.getItemAtPosition(paramInt);
    MyShowVideoFragment.a(a, paramView);
    if (paramView != null)
    {
      MyShowVideoFragment.i();
      paramAdapterView = null;
      if (MyShowVideoFragment.b(a) != null)
      {
        MyShowVideoFragment.i();
        paramAdapterView = MyShowVideoFragment.b(a).getShowList();
      }
      if ((paramAdapterView == null) || (paramAdapterView.size() <= 0)) {
        break label212;
      }
      MyShowVideoFragment.i();
      paramAdapterView = paramAdapterView.iterator();
      while (paramAdapterView.hasNext())
      {
        FavoriteShow localFavoriteShow = (FavoriteShow)paramAdapterView.next();
        if (showId == localFavoriteShow.getCbsShowId()) {
          MyShowVideoFragment.i();
        }
      }
    }
    label212:
    for (paramInt = 1;; paramInt = 0)
    {
      a.b();
      if (paramInt != 0)
      {
        MyShowVideoFragment.i();
        new MyCBSService().b(MyShowVideoFragment.c(a), "favorite-shows", String.valueOf(showId), a.h);
        return;
      }
      MyShowVideoFragment.i();
      new MyCBSService().a(MyShowVideoFragment.d(a), "favorite-shows", String.valueOf(showId), a.i);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.MyShowVideoFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */