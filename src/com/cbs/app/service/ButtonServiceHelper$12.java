package com.cbs.app.service;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.service.social.FacebookService;
import com.cbs.app.service.social.FacebookServiceImplV2;
import com.cbs.app.view.model.Show;
import java.util.HashMap;

final class ButtonServiceHelper$12
  implements View.OnClickListener
{
  ButtonServiceHelper$12(Context paramContext, Show paramShow, String paramString, long paramLong) {}
  
  public final void onClick(View paramView)
  {
    new FacebookServiceImplV2(a).a(b);
    paramView = Action.aQ;
    HashMap localHashMap = new HashMap();
    localHashMap.put("events", "event19, event10");
    localHashMap.put("appState", "cbscom:" + ButtonServiceHelper.e());
    localHashMap.put("optionSelected", "Share via FB" + ButtonServiceHelper.e());
    if (c != null)
    {
      localHashMap.put("ShowTitle", c);
      String str = "cbscom:" + d + "|" + c;
      localHashMap.put("evar_63", str);
      localHashMap.put("prop_63", str);
    }
    if (d != 0L) {
      localHashMap.put("showId", Long.valueOf(d));
    }
    AnalyticsManager.a(a, paramView, localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.ButtonServiceHelper.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */