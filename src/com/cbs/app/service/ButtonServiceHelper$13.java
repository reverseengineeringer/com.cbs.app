package com.cbs.app.service;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.view.utils.Util;
import java.util.HashMap;

final class ButtonServiceHelper$13
  implements View.OnClickListener
{
  ButtonServiceHelper$13(String paramString1, Context paramContext, String paramString2, long paramLong) {}
  
  public final void onClick(View paramView)
  {
    if (a != null)
    {
      paramView = new Intent("android.intent.action.VIEW", Uri.parse(a));
      if (Util.a(b, paramView)) {
        b.startActivity(paramView);
      }
      paramView = Action.aD;
      HashMap localHashMap = new HashMap();
      localHashMap.put("events", "event19, event10");
      localHashMap.put("appState", "cbscom:" + ButtonServiceHelper.e());
      if (c != null)
      {
        localHashMap.put("ShowTitle", c);
        localHashMap.put("optionSelected", "Share via FB" + ButtonServiceHelper.e());
        String str = "cbscom:" + d + "|" + c;
        localHashMap.put("evar_63", str);
        localHashMap.put("prop_63", str);
      }
      if (d != 0L) {
        localHashMap.put("showId", Long.valueOf(d));
      }
      AnalyticsManager.a(b, paramView, localHashMap);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.ButtonServiceHelper.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */