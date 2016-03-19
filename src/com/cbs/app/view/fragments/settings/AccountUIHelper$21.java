package com.cbs.app.view.fragments.settings;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.model.FavoriteShowList;
import com.cbs.app.view.model.rest.FavoriteShowsEndpointResponse;
import com.cbs.app.view.utils.Preferences;
import java.util.ArrayList;

final class AccountUIHelper$21
  implements ResponseModelListener
{
  AccountUIHelper$21(Context paramContext) {}
  
  public final void a()
  {
    AccountUIHelper.d();
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    AccountUIHelper.d();
    if ((paramResponseModel != null) && ((paramResponseModel instanceof FavoriteShowsEndpointResponse)))
    {
      AccountUIHelper.d();
      paramResponseModel = (FavoriteShowsEndpointResponse)paramResponseModel;
      if (paramResponseModel.isSuccess())
      {
        AccountUIHelper.d();
        paramResponseModel = paramResponseModel.getFavshowlist();
        if (paramResponseModel != null)
        {
          paramResponseModel = paramResponseModel.getShowList();
          if (paramResponseModel != null)
          {
            Preferences.a(a, "mycbs_show_count", paramResponseModel.size());
            Context localContext = a.getApplicationContext();
            if ((localContext != null) && ((localContext instanceof MainApplication))) {
              ((MainApplication)localContext).setMycbsShows(paramResponseModel);
            }
          }
        }
        return;
      }
      AccountUIHelper.d();
      return;
    }
    AccountUIHelper.d();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */