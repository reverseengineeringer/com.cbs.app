package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.SectionItem;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class VideoConfigSectionResponse
  extends ResponseModel
{
  @JsonProperty("section_type")
  private String a;
  private SectionItem b;
  private String c;
  private boolean d;
  private String e;
  @JsonProperty("display_seasons")
  private boolean f;
  private boolean g;
  @JsonProperty("layout_type")
  private Object h;
  @JsonProperty("seasons_sort_order")
  private String i;
  private long j;
  @JsonProperty("seasons_default")
  private String k;
  
  public long getId()
  {
    return j;
  }
  
  public Object getLayoutType()
  {
    return h;
  }
  
  public String getQuery()
  {
    return e;
  }
  
  public String getSeasonsDefault()
  {
    return k;
  }
  
  public String getSeasonsSortOrder()
  {
    return i;
  }
  
  public SectionItem getSectionItems()
  {
    return b;
  }
  
  public String getSectionTitle()
  {
    return c;
  }
  
  public String getSectionType()
  {
    return a;
  }
  
  public void setDisplaySeasons(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public void setId(long paramLong)
  {
    j = paramLong;
  }
  
  public void setLayoutType(Object paramObject)
  {
    h = paramObject;
  }
  
  public void setQuery(String paramString)
  {
    e = paramString;
  }
  
  public void setSeasonsDefault(String paramString)
  {
    k = paramString;
  }
  
  public void setSeasonsSortOrder(String paramString)
  {
    i = paramString;
  }
  
  public void setSectionItems(SectionItem paramSectionItem)
  {
    b = paramSectionItem;
  }
  
  public void setSectionTitle(String paramString)
  {
    c = paramString;
  }
  
  public void setSectionType(String paramString)
  {
    a = paramString;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public void setViewingWindow(boolean paramBoolean)
  {
    g = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.VideoConfigSectionResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */