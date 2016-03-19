package com.cbs.app.service;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.view.model.registration.UserStatus;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;
import com.cbs.app.view.model.rest.UpsellEndpointResponse;

public class UpsellService
  extends CBSBaseService
{
  public final void a(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener)
  {
    String str2 = "ANONYMOUS";
    Object localObject = AuthStatusManager.getUserAuthStatus();
    String str1 = str2;
    if (localObject != null)
    {
      localObject = ((AuthStatusEndpointResponse)localObject).getUserStatus();
      str1 = str2;
      if (localObject != null) {
        str1 = ((UserStatus)localObject).getDescription();
      }
    }
    a(paramContext, "/upsell.json?userState=" + str1 + "&pageURL=" + paramString, paramResponseModelListener, UpsellEndpointResponse.class);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.UpsellService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */