package com.cbs.app.service;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.service.social.EmailService;
import com.cbs.app.service.social.EmailServiceImpl;
import java.util.HashMap;

final class ButtonServiceHelper$3
  implements View.OnClickListener
{
  ButtonServiceHelper$3(Context paramContext, String paramString1, String paramString2, String paramString3, long paramLong) {}
  
  public final void onClick(View paramView)
  {
    paramView = new EmailServiceImpl();
    paramView.setContext(a);
    paramView.a(b, c);
    paramView = Action.aE;
    HashMap localHashMap = new HashMap();
    localHashMap.put("events", "event19, event10");
    localHashMap.put("appState", "cbscom:" + ButtonServiceHelper.e());
    localHashMap.put("optionSelected", "Share via email" + ButtonServiceHelper.e());
    if (d != null)
    {
      localHashMap.put("ShowTitle", d);
      String str = "cbscom:" + e + "|" + d;
      localHashMap.put("evar_63", str);
      localHashMap.put("prop_63", str);
    }
    if (e != 0L) {
      localHashMap.put("showId", Long.valueOf(e));
    }
    AnalyticsManager.a(a, paramView, localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.ButtonServiceHelper.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */