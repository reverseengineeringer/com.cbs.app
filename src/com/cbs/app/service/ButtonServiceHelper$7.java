package com.cbs.app.service;

import android.widget.Button;
import android.widget.Toast;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.rest.ShowAddedEndpointResponse;
import java.util.HashMap;

final class ButtonServiceHelper$7
  implements ResponseModelListener
{
  public final void a()
  {
    ButtonServiceHelper.a("CBS", "Unable to add show at this time, please try again later.");
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    if ((paramResponseModel != null) && ((paramResponseModel instanceof ShowAddedEndpointResponse)))
    {
      ButtonServiceHelper.a(true);
      ButtonServiceHelper.d().setText("Remove this show from My CBS");
      paramResponseModel = Action.a;
      paramResponseModel.setName("MyCBSAdd");
      HashMap localHashMap = new HashMap();
      localHashMap.put("appState", "cbscom:" + ButtonServiceHelper.e());
      localHashMap.put("from", ButtonServiceHelper.e());
      localHashMap.put("events", "event83");
      localHashMap.put("ShowTitle", ButtonServiceHelper.f().getTitle());
      localHashMap.put("showId", Long.valueOf(ButtonServiceHelper.f().getId()));
      localHashMap.put("optionSelected", "Add to My CBS" + ButtonServiceHelper.e());
      String str = "cbscom:" + ButtonServiceHelper.f().getId() + "|" + ButtonServiceHelper.f().getTitle();
      localHashMap.put("evar_63", str);
      localHashMap.put("prop_63", str);
      AnalyticsManager.a(ButtonServiceHelper.g(), paramResponseModel, localHashMap);
      Toast.makeText(ButtonServiceHelper.g(), "Added", 0).show();
      return;
    }
    ButtonServiceHelper.a("CBS", "Unable to add show at this time, please try again later.");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.ButtonServiceHelper.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */