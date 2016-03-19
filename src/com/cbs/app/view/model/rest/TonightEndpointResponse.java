package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class TonightEndpointResponse
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = -2340362058219877893L;
  @JsonProperty("configuration")
  private RegistrationConfigurationResponse registrationConfigurationResponse;
  @JsonProperty("tonight")
  private TonightResponse tonightResponse;
  
  public RegistrationConfigurationResponse getRegistrationConfigurationResponse()
  {
    return registrationConfigurationResponse;
  }
  
  public TonightResponse getTonightResponse()
  {
    return tonightResponse;
  }
  
  public void setRegistrationConfigurationResponse(RegistrationConfigurationResponse paramRegistrationConfigurationResponse)
  {
    registrationConfigurationResponse = paramRegistrationConfigurationResponse;
  }
  
  public void setTonightResponse(TonightResponse paramTonightResponse)
  {
    tonightResponse = paramTonightResponse;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.TonightEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */