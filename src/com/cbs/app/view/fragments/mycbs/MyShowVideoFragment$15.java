package com.cbs.app.view.fragments.mycbs;

import android.widget.GridView;
import android.widget.ListView;
import com.cbs.app.service.MyCBSService;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper.RefreshAccountListener;
import com.cbs.app.view.utils.Util;

final class MyShowVideoFragment$15
  implements AccountUIHelper.RefreshAccountListener
{
  MyShowVideoFragment$15(MyShowVideoFragment paramMyShowVideoFragment) {}
  
  public final void a()
  {
    MyShowVideoFragment.i();
    MyShowVideoFragment.q(a);
    a.d();
    AccountUIHelper.setReconcileDialogShowing(false);
    if (Util.y(MyShowVideoFragment.r(a)) != null)
    {
      MyShowVideoFragment.i();
      MyShowVideoFragment.s(a).setClickable(true);
      MyShowVideoFragment.t(a).setClickable(true);
      MyShowVideoFragment.u(a);
      if (!Util.r(MyShowVideoFragment.v(a)))
      {
        MyShowVideoFragment.i();
        a.b();
        new MyCBSExporter(MyShowVideoFragment.w(a), a.p).a();
      }
    }
    do
    {
      return;
      MyShowVideoFragment.i();
      new MyCBSService().a(MyShowVideoFragment.x(a), a.o);
      return;
      MyShowVideoFragment.i();
    } while ((MyShowVideoFragment.y(a) == null) || (!(MyShowVideoFragment.z(a) instanceof NavigationActivity)));
    ((NavigationActivity)MyShowVideoFragment.A(a)).k();
    a.d();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.MyShowVideoFragment.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */