package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonProperty;

public class MvpdEndpointResponse
  extends ResponseModel
{
  @JsonProperty("is_token_valid")
  private String a;
  @JsonProperty("token_user_id")
  private String b;
  @JsonProperty("token_generated_at")
  private long c;
  private boolean d;
  @JsonProperty("content_id")
  private String e;
  @JsonProperty("token_proxy_mvpd_id")
  private String f;
  @JsonProperty("token_mvpd_id")
  private String g;
  
  public String getContentId()
  {
    return e;
  }
  
  public String getIsTokenValid()
  {
    return a;
  }
  
  public long getTokenGeneratedAt()
  {
    return c;
  }
  
  public String getTokenMvpdId()
  {
    return g;
  }
  
  public String getTokenProxyMvpdId()
  {
    return f;
  }
  
  public String getTokenUserId()
  {
    return b;
  }
  
  public void setAccessibility(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public void setContentId(String paramString)
  {
    e = paramString;
  }
  
  public void setIsTokenValid(String paramString)
  {
    a = paramString;
  }
  
  public void setTokenGeneratedAt(long paramLong)
  {
    c = paramLong;
  }
  
  public void setTokenMvpdId(String paramString)
  {
    g = paramString;
  }
  
  public void setTokenProxyMvpdId(String paramString)
  {
    f = paramString;
  }
  
  public void setTokenUserId(String paramString)
  {
    b = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.MvpdEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */