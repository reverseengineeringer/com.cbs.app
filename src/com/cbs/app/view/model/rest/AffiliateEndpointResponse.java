package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.Affiliate;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AffiliateEndpointResponse
  extends ResponseModel
{
  @JsonProperty("affiliate")
  private Affiliate affiliate;
  @JsonProperty("success")
  private boolean success;
  
  public Affiliate getAffiliate()
  {
    return affiliate;
  }
  
  public boolean isSuccess()
  {
    return success;
  }
  
  public void setAffiliate(Affiliate paramAffiliate)
  {
    affiliate = paramAffiliate;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    success = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.AffiliateEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */