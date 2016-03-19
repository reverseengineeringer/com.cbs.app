package com.cbs.app.view;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.FavoriteShowList;
import com.cbs.app.view.model.rest.FavoriteShowsEndpointResponse;
import com.cbs.app.view.utils.Preferences;
import java.util.ArrayList;

final class SplashActivity2$3
  implements ResponseModelListener
{
  SplashActivity2$3(SplashActivity2 paramSplashActivity2, Context paramContext) {}
  
  public final void a()
  {
    b.d = true;
    b.b();
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    if ((paramResponseModel instanceof FavoriteShowsEndpointResponse))
    {
      paramResponseModel = (FavoriteShowsEndpointResponse)paramResponseModel;
      if (paramResponseModel.isSuccess())
      {
        paramResponseModel = paramResponseModel.getFavshowlist();
        if (paramResponseModel != null)
        {
          paramResponseModel = paramResponseModel.getShowList();
          if (paramResponseModel != null)
          {
            Preferences.a(a, "mycbs_show_count", paramResponseModel.size());
            Context localContext = b.getApplicationContext();
            if ((localContext != null) && ((localContext instanceof MainApplication))) {
              ((MainApplication)localContext).setMycbsShows(paramResponseModel);
            }
          }
        }
      }
    }
    b.d = true;
    b.b();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SplashActivity2.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */