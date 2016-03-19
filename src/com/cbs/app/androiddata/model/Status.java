package com.cbs.app.androiddata.model;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Status
  extends ResponseModel
{
  @JsonProperty("message")
  private String a;
  @JsonProperty("upgradeUrl")
  private String b;
  @JsonProperty("upgradeAvailable")
  private boolean c;
  @JsonProperty("active")
  private boolean d;
  @JsonProperty("versionName")
  private String e;
  @JsonProperty("versionNote")
  private String f;
  @JsonProperty("releaseDate")
  private long g;
  @JsonProperty("id")
  private long h;
  @JsonProperty("deployedToStore")
  private boolean i;
  
  public long getId()
  {
    return h;
  }
  
  public String getMessage()
  {
    return a;
  }
  
  public long getReleaseDate()
  {
    return g;
  }
  
  public String getUpgradeUrl()
  {
    return b;
  }
  
  public String getVersionName()
  {
    return e;
  }
  
  public String getVersionNote()
  {
    return f;
  }
  
  public void setActive(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public void setDeployedToStore(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public void setId(long paramLong)
  {
    h = paramLong;
  }
  
  public void setMessage(String paramString)
  {
    a = paramString;
  }
  
  public void setReleaseDate(long paramLong)
  {
    g = paramLong;
  }
  
  public void setUpgradeAvailable(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void setUpgradeUrl(String paramString)
  {
    b = paramString;
  }
  
  public void setVersionName(String paramString)
  {
    e = paramString;
  }
  
  public void setVersionNote(String paramString)
  {
    f = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.Status
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */