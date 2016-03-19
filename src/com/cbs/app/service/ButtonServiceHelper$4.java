package com.cbs.app.service;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.db.MyShowDataSource;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.fragments.mycbs.MyCBSExporter;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.utils.Util;

final class ButtonServiceHelper$4
  implements View.OnClickListener
{
  public final void onClick(View paramView)
  {
    if (Util.y(ButtonServiceHelper.g()) != null)
    {
      ButtonServiceHelper.c(false);
      if (Util.r(ButtonServiceHelper.g())) {
        if (ButtonServiceHelper.m()) {
          if (!ButtonServiceHelper.j()) {
            if (!ButtonServiceHelper.f().getCategory().equals("Movies & Specials")) {
              ButtonServiceHelper.b();
            }
          }
        }
      }
    }
    for (;;)
    {
      return;
      if (!ButtonServiceHelper.f().getCategory().equals("Movies & Specials"))
      {
        ButtonServiceHelper.a();
        return;
        new MyCBSService().a(ButtonServiceHelper.g(), ButtonServiceHelper.e);
        return;
        paramView = new MyShowDataSource(ButtonServiceHelper.g());
        paramView.a();
        paramView.b();
        ButtonServiceHelper.n();
        new MyCBSExporter(ButtonServiceHelper.g(), ButtonServiceHelper.d).a();
        return;
        ButtonServiceHelper.c(true);
        if ((ButtonServiceHelper.g() == null) || (ButtonServiceHelper.o())) {
          break;
        }
        AccountUIHelper.a(ButtonServiceHelper.f);
        AccountUIHelper.setFrom(ButtonServiceHelper.e());
        if (((ButtonServiceHelper.g() instanceof NavigationActivity)) && (!((NavigationActivity)ButtonServiceHelper.g()).isFinishing())) {}
        for (int i = 1; i != 0; i = 0)
        {
          SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(false);
          SVODPopupHelper.setWeWantToSeeVideo(null);
          SVODPopupHelper.setWeWantToSeeShow(null);
          AccountUIHelper.b(ButtonServiceHelper.g());
          ButtonServiceHelper.b(true);
          return;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.ButtonServiceHelper.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */