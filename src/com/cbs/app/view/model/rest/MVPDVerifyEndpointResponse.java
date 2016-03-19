package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonProperty;

public class MVPDVerifyEndpointResponse
  extends ResponseModel
{
  private boolean accessibility;
  @JsonProperty("content_id")
  private String contentId;
  @JsonProperty("is_token_valid")
  private String isTokenValid;
  @JsonProperty("token_generated_at")
  private long tokenGeneratedAt;
  @JsonProperty("token_mvpd_id")
  private String tokenMvpdId;
  @JsonProperty("token_proxy_mvpd_id")
  private String tokenProxyMvpdId;
  @JsonProperty("token_user_id")
  private String tokenUserId;
  
  public String getContentId()
  {
    return contentId;
  }
  
  public String getIsTokenValid()
  {
    return isTokenValid;
  }
  
  public long getTokenGeneratedAt()
  {
    return tokenGeneratedAt;
  }
  
  public String getTokenMvpdId()
  {
    return tokenMvpdId;
  }
  
  public String getTokenProxyMvpdId()
  {
    return tokenProxyMvpdId;
  }
  
  public String getTokenUserId()
  {
    return tokenUserId;
  }
  
  public boolean isAccessibility()
  {
    return accessibility;
  }
  
  public void setAccessibility(boolean paramBoolean)
  {
    accessibility = paramBoolean;
  }
  
  public void setContentId(String paramString)
  {
    contentId = paramString;
  }
  
  public void setIsTokenValid(String paramString)
  {
    isTokenValid = paramString;
  }
  
  public void setTokenGeneratedAt(long paramLong)
  {
    tokenGeneratedAt = paramLong;
  }
  
  public void setTokenMvpdId(String paramString)
  {
    tokenMvpdId = paramString;
  }
  
  public void setTokenProxyMvpdId(String paramString)
  {
    tokenProxyMvpdId = paramString;
  }
  
  public void setTokenUserId(String paramString)
  {
    tokenUserId = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.MVPDVerifyEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */