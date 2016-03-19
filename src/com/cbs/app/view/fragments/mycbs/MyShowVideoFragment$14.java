package com.cbs.app.view.fragments.mycbs;

import com.cbs.app.view.fragments.show.ShowServiceManager.ShowServiceManagerListener;
import com.cbs.app.view.utils.Util;

final class MyShowVideoFragment$14
  implements ShowServiceManager.ShowServiceManagerListener
{
  MyShowVideoFragment$14(MyShowVideoFragment paramMyShowVideoFragment) {}
  
  public final void a()
  {
    boolean bool = false;
    if (MyShowVideoFragment.o(a) != null) {
      bool = Util.r(MyShowVideoFragment.p(a));
    }
    if (bool)
    {
      a.getMyShowsForEditList();
      return;
    }
    a.e();
  }
  
  public final void a(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.MyShowVideoFragment.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */