package com.cbs.app.service;

import com.cbs.app.view.fragments.mycbs.MyCBSExporter;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper.RefreshAccountListener;
import com.cbs.app.view.utils.Util;

final class ButtonServiceHelper$11
  implements AccountUIHelper.RefreshAccountListener
{
  public final void a()
  {
    AccountUIHelper.setReconcileDialogShowing(false);
    ButtonServiceHelper.b(false);
    if (Util.y(ButtonServiceHelper.g()) != null)
    {
      if (Util.r(ButtonServiceHelper.g())) {
        new MyCBSService().a(ButtonServiceHelper.g(), ButtonServiceHelper.e);
      }
    }
    else {
      return;
    }
    new MyCBSExporter(ButtonServiceHelper.g(), ButtonServiceHelper.d).a();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.ButtonServiceHelper.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */