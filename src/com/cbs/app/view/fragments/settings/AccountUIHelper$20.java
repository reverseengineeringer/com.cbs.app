package com.cbs.app.view.fragments.settings;

import android.app.Activity;
import android.content.Context;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.view.fragments.TOUDialogFragment;
import com.cbs.app.view.fragments.TOUDialogFragment.TOUDialogListener;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;
import com.cbs.app.view.utils.Util;
import java.util.HashMap;

final class AccountUIHelper$20
  implements TOUDialogFragment.TOUDialogListener
{
  AccountUIHelper$20(Context paramContext, String paramString1, String paramString2, AuthStatusEndpointResponse paramAuthStatusEndpointResponse, DoneListener paramDoneListener, String paramString3, TOUDialogFragment paramTOUDialogFragment) {}
  
  public final void a()
  {
    AccountUIHelper.d();
    AccountUIHelper.setTermsDialogIsShowing(false);
    AccountUIHelper.b = false;
    AccountUIHelper.a(a, e);
  }
  
  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      AccountUIHelper.d(a, b, c);
      AccountUIHelper.a(a, d, AccountUIHelper.i(), e, f);
      g.dismiss();
    }
    for (;;)
    {
      Util.a((Activity)a);
      return;
      Action localAction = Action.bm;
      HashMap localHashMap = new HashMap();
      localHashMap.put("appState", "cbscom:" + AccountUIHelper.i());
      localHashMap.put("events", "event20");
      localHashMap.put("pageTitle", "setting");
      localHashMap.put("evar_70", "You need to accept our terms in order to continue.");
      localHashMap.put("prop_70", "You need to accept our terms in order to continue.");
      AnalyticsManager.a(a, localAction, localHashMap);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */