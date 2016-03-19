package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.RegistrationConfiguration;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class RegistrationConfigurationResponse
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = 1234L;
  @JsonProperty("numFound")
  private int numFound;
  @JsonProperty("result")
  private RegistrationConfiguration registrationConfiguration;
  @JsonProperty("success")
  private boolean success;
  
  public int getNumFound()
  {
    return numFound;
  }
  
  public RegistrationConfiguration getRegistrationConfiguration()
  {
    return registrationConfiguration;
  }
  
  public boolean isSuccess()
  {
    return success;
  }
  
  public void setNumFound(int paramInt)
  {
    numFound = paramInt;
  }
  
  public void setRegistrationConfiguration(RegistrationConfiguration paramRegistrationConfiguration)
  {
    registrationConfiguration = paramRegistrationConfiguration;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    success = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.RegistrationConfigurationResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */