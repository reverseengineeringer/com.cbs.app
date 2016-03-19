package com.cbs.app.service;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.service.social.Twitter;
import com.cbs.app.service.social.model.TweetOperation;
import java.util.HashMap;

final class ButtonServiceHelper$14
  implements View.OnClickListener
{
  ButtonServiceHelper$14(Context paramContext, String paramString1, String paramString2, long paramLong) {}
  
  public final void onClick(View paramView)
  {
    new Twitter(a).a(new TweetOperation(b));
    paramView = Action.aC;
    HashMap localHashMap = new HashMap();
    localHashMap.put("appState", "cbscom:" + ButtonServiceHelper.e());
    localHashMap.put("events", "event19, event10");
    localHashMap.put("optionSelected", "Share via Twitter" + ButtonServiceHelper.e());
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
 * Qualified Name:     com.cbs.app.service.ButtonServiceHelper.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */