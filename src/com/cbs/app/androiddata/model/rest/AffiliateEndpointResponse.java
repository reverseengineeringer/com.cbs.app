package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.Affiliate;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AffiliateEndpointResponse
  extends ResponseModel
{
  @JsonProperty("affiliate")
  private Affiliate a;
  @JsonProperty("success")
  private boolean b;
  
  public Affiliate getAffiliate()
  {
    return a;
  }
  
  public void setAffiliate(Affiliate paramAffiliate)
  {
    a = paramAffiliate;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    b = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.AffiliateEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */