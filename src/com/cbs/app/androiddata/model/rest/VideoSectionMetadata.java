package com.cbs.app.androiddata.model.rest;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class VideoSectionMetadata
{
  @JsonProperty("display_seasons")
  private boolean a;
  @JsonProperty("seasons_sort_order")
  private String b;
  @JsonProperty("sectionId")
  private long c;
  @JsonProperty("title")
  private String d;
  @JsonProperty("seasons_default")
  private String e;
  
  public String getSeasonSortOrder()
  {
    return b;
  }
  
  public String getSeasonsDefault()
  {
    return e;
  }
  
  public long getSectionId()
  {
    return c;
  }
  
  public String getTitle()
  {
    return d;
  }
  
  public void setDisplaySeasons(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public void setSeasonSortOrder(String paramString)
  {
    b = paramString;
  }
  
  public void setSeasonsDefault(String paramString)
  {
    e = paramString;
  }
  
  public void setSectionId(long paramLong)
  {
    c = paramLong;
  }
  
  public void setTitle(String paramString)
  {
    d = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.VideoSectionMetadata
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */