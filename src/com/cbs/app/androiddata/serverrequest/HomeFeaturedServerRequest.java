package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.ShowsPromoFeaturedResponse;

public class HomeFeaturedServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return ShowsPromoFeaturedResponse.class;
  }
  
  public String getPostBody()
  {
    return null;
  }
  
  public String getPostBodyMimeType()
  {
    return null;
  }
  
  public String getUrl()
  {
    return e + "/apps-api/v2.0/" + d + "/shows/promo/featured.json";
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.HomeFeaturedServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */