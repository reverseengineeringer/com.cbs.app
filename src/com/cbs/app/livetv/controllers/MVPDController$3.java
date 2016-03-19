package com.cbs.app.livetv.controllers;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.rest.MVPDVerifyEndpointResponse;

final class MVPDController$3
  implements ResponseModelListener
{
  MVPDController$3(MVPDController paramMVPDController) {}
  
  public final void a()
  {
    MVPDController.a(a, null);
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    new StringBuilder("success: ").append(paramResponseModel);
    paramResponseModel = (MVPDVerifyEndpointResponse)paramResponseModel;
    String str = paramResponseModel.getIsTokenValid();
    if ((str != null) && (str.equals("VALID_TOKEN"))) {
      MVPDController.a(a, MVPDController.e(a));
    }
    for (;;)
    {
      MVPDController.f(a);
      paramResponseModel.getTokenUserId();
      paramResponseModel.isAccessibility();
      paramResponseModel.getTokenGeneratedAt();
      paramResponseModel.getContentId();
      return;
      new StringBuilder("Authorization FAILED: Failed media token validation: Error: ").append(paramResponseModel);
      MVPDController.a(a, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.controllers.MVPDController.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */