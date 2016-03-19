package com.cbs.app.service;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.rest.AffiliateEndpointResponse;
import com.cbs.app.view.utils.Util;

public class AffiliateService
  extends CBSBaseService
{
  public final ResponseModel a(Context paramContext, String paramString)
  {
    return Util.a(paramContext, true, CBSBaseService.a(paramContext, null, "/ext/v2.0/cbs/affiliate/" + paramString + ".json"), null, AffiliateEndpointResponse.class, true, 3600L, true);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.AffiliateService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */