package com.cbs.app.livetv.controllers;

import com.adobe.adobepass.accessenabler.a.g;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.MVPDConfig;
import com.cbs.app.view.model.rest.MVPDConfigsEndpointResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

final class MVPDController$1
  implements ResponseModelListener
{
  MVPDController$1(MVPDController paramMVPDController) {}
  
  public final void a() {}
  
  public final void a(ResponseModel paramResponseModel)
  {
    if ((paramResponseModel instanceof MVPDConfigsEndpointResponse))
    {
      paramResponseModel = (MVPDConfigsEndpointResponse)paramResponseModel;
      MVPDController.a(a).clear();
      MVPDController.a(a).addAll(paramResponseModel.getMvpdConfigList());
      paramResponseModel = MVPDController.a(a).iterator();
      while (paramResponseModel.hasNext())
      {
        MVPDConfig localMVPDConfig = (MVPDConfig)paramResponseModel.next();
        g localg = (g)MVPDController.b(a).get(localMVPDConfig.getAdobeId());
        if (localg != null) {
          localMVPDConfig.setAdobeLogoUrl(localg.c());
        }
      }
      MVPDController.c(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.controllers.MVPDController.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */