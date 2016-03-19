package com.cbs.app.view.model;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Status
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = 7234575360975983342L;
  @JsonProperty("deployedToStore")
  private boolean deployedToStore;
  @JsonProperty("id")
  private long id;
  @JsonProperty("active")
  private boolean isActive;
  @JsonProperty("message")
  private String message;
  @JsonProperty("releaseDate")
  private long releaseDate;
  @JsonProperty("upgradeAvailable")
  private boolean upgradeAvailable;
  @JsonProperty("upgradeUrl")
  private String upgradeUrl;
  @JsonProperty("versionName")
  private String versionName;
  @JsonProperty("versionNote")
  private String versionNote;
  
  public long getId()
  {
    return id;
  }
  
  public String getMessage()
  {
    return message;
  }
  
  public long getReleaseDate()
  {
    return releaseDate;
  }
  
  public String getUpgradeUrl()
  {
    return upgradeUrl;
  }
  
  public String getVersionName()
  {
    return versionName;
  }
  
  public String getVersionNote()
  {
    return versionNote;
  }
  
  public boolean isActive()
  {
    return isActive;
  }
  
  public boolean isDeployedToStore()
  {
    return deployedToStore;
  }
  
  public boolean isUpgradeAvailable()
  {
    return upgradeAvailable;
  }
  
  public void setActive(boolean paramBoolean)
  {
    isActive = paramBoolean;
  }
  
  public void setDeployedToStore(boolean paramBoolean)
  {
    deployedToStore = paramBoolean;
  }
  
  public void setId(long paramLong)
  {
    id = paramLong;
  }
  
  public void setMessage(String paramString)
  {
    message = paramString;
  }
  
  public void setReleaseDate(long paramLong)
  {
    releaseDate = paramLong;
  }
  
  public void setUpgradeAvailable(boolean paramBoolean)
  {
    upgradeAvailable = paramBoolean;
  }
  
  public void setUpgradeUrl(String paramString)
  {
    upgradeUrl = paramString;
  }
  
  public void setVersionName(String paramString)
  {
    versionName = paramString;
  }
  
  public void setVersionNote(String paramString)
  {
    versionNote = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.Status
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */