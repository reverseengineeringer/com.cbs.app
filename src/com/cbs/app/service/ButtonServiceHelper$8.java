package com.cbs.app.service;

import android.widget.Toast;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.FavoriteShow;
import com.cbs.app.view.model.FavoriteShowList;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.rest.FavoriteShowsEndpointResponse;
import com.cbs.app.view.utils.Preferences;
import java.util.ArrayList;
import java.util.Iterator;

final class ButtonServiceHelper$8
  implements ResponseModelListener
{
  public final void a() {}
  
  public final void a(ResponseModel paramResponseModel)
  {
    if ((paramResponseModel != null) && ((paramResponseModel instanceof FavoriteShowsEndpointResponse)))
    {
      paramResponseModel = (FavoriteShowsEndpointResponse)paramResponseModel;
      if (paramResponseModel.isSuccess())
      {
        paramResponseModel = paramResponseModel.getFavshowlist();
        if (paramResponseModel != null)
        {
          paramResponseModel = paramResponseModel.getShowList();
          if (paramResponseModel == null) {
            break label147;
          }
          Preferences.a(ButtonServiceHelper.g(), "mycbs_show_count", paramResponseModel.size());
          paramResponseModel = paramResponseModel.iterator();
          do
          {
            if (!paramResponseModel.hasNext()) {
              break;
            }
          } while (((FavoriteShow)paramResponseModel.next()).getCbsShowId() != ButtonServiceHelper.f().getShowId());
        }
      }
    }
    label120:
    label147:
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        ButtonServiceHelper.a(true);
      }
      if (ButtonServiceHelper.h())
      {
        if (!ButtonServiceHelper.i()) {
          break label120;
        }
        ButtonServiceHelper.a();
      }
      for (;;)
      {
        ButtonServiceHelper.k();
        return;
        if (ButtonServiceHelper.j()) {
          Toast.makeText(ButtonServiceHelper.g(), "You already had this show added to My CBS", 1).show();
        } else {
          ButtonServiceHelper.b();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.ButtonServiceHelper.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */