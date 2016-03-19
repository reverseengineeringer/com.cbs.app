package com.cbs.app.service;

import android.widget.Toast;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.FavoriteShow;
import com.cbs.app.view.model.FavoriteShowList;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.rest.FavoriteShowsEndpointResponse;
import java.util.ArrayList;
import java.util.Iterator;

final class ButtonServiceHelper$10
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
        if (paramResponseModel == null) {
          break label132;
        }
        paramResponseModel = paramResponseModel.getShowList().iterator();
        do
        {
          if (!paramResponseModel.hasNext()) {
            break;
          }
        } while (((FavoriteShow)paramResponseModel.next()).getCbsShowId() != ButtonServiceHelper.f().getShowId());
      }
    }
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        ButtonServiceHelper.a(true);
      }
      if (ButtonServiceHelper.h())
      {
        if (ButtonServiceHelper.i()) {
          ButtonServiceHelper.a();
        }
      }
      else {
        ButtonServiceHelper.k();
      }
      for (;;)
      {
        ButtonServiceHelper.c();
        return;
        if (ButtonServiceHelper.j())
        {
          Toast.makeText(ButtonServiceHelper.g(), "You already had this show added to My CBS", 1).show();
          break;
        }
        ButtonServiceHelper.b();
        break;
        label132:
        new MyCBSService().a(ButtonServiceHelper.g(), "favorite-shows", ButtonServiceHelper.c);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.ButtonServiceHelper.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */