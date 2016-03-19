package com.cbs.app.view.fragments.mycbs;

import com.cbs.app.view.model.FavoriteShowList;
import com.cbs.app.view.utils.Util;
import java.util.ArrayList;
import java.util.List;

final class MyShowVideoFragment$3
  implements MyCBSExporter.ExporterDoneListener
{
  MyShowVideoFragment$3(MyShowVideoFragment paramMyShowVideoFragment) {}
  
  public final void a()
  {
    a.d();
    MyShowVideoFragment.C(a);
  }
  
  public final void a(FavoriteShowList paramFavoriteShowList)
  {
    int j = 1;
    if (!MyShowVideoFragment.e(a)) {
      return;
    }
    MyShowVideoFragment.i();
    if (paramFavoriteShowList != null)
    {
      MyShowVideoFragment.a(a, paramFavoriteShowList);
      MyShowVideoFragment.a(a, MyShowVideoFragment.b(a).getId());
      MyShowVideoFragment.i();
      new StringBuilder("list id: ").append(MyShowVideoFragment.H(a));
      paramFavoriteShowList = MyShowVideoFragment.b(a).getShowList();
      if ((paramFavoriteShowList != null) && (paramFavoriteShowList.size() > 0))
      {
        MyShowVideoFragment.i();
        new StringBuilder("showList.size: ").append(MyShowVideoFragment.b(a).getShowList().size());
      }
    }
    for (int i = 1;; i = 0)
    {
      if (MyShowVideoFragment.I(a) != null) {
        if (Util.w(MyShowVideoFragment.J(a))) {
          break label260;
        }
      }
      for (;;)
      {
        MyShowVideoFragment.i();
        MyShowVideoFragment.i();
        new StringBuilder("user had local data: ").append(MyShowVideoFragment.K(a));
        MyShowVideoFragment.i();
        new StringBuilder("user was logged in: ").append(MyShowVideoFragment.L(a));
        if ((MyShowVideoFragment.L(a)) && ((MyShowVideoFragment.K(a)) || (i != 0)) && (j != 0))
        {
          a.a("Update to My CBS", "Good news! We've improved My CBS so you can access your personalized shows list on both mobile devices and on CBS.com.");
          Util.setUserHasSeenDialog(MyShowVideoFragment.M(a));
        }
        a.a();
        return;
        label260:
        j = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.MyShowVideoFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */